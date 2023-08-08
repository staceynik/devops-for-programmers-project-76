deploy:
	ANSIBLE_VAULT_PASSWORD_FILE=$(CURDIR)/vault_password.txt ansible-playbook -i inventory.ini playbook.yml
requirements:
	ansible-galaxy install -r requirements.yml --force


