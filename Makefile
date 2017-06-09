all:
	virtualenv .deploy-mcp
	.deploy-mcp/bin/pip install ansible shade
	env | grep -i os_
	.deploy-mcp/bin/ansible-playbook -vvv deploy-mcp/site.yml

retry:
	.deploy-mcp/bin/ansible-playbook -vvv deploy-mcp/site.yml --limit @/home/amadev/m/deploy-mcp/deploy-mcp/site.retry
