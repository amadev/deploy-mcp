all:
	virtualenv .deploy-mcp
	.deploy-mcp/bin/pip install ansible shade
	env | grep -i os_
	ANSIBLE_HOST_KEY_CHECKING=False .deploy-mcp/bin/ansible-playbook -vvv deploy-mcp/site.yml

test:
	ANSIBLE_HOST_KEY_CHECKING=False .deploy-mcp/bin/ansible-playbook -vvv deploy-mcp/test.yml
