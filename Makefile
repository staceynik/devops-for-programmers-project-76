deploy:
	ANSIBLE_VAULT_PASSWORD_FILE=/home/karpov/devops-for-programmers-project-76/vault_password.txt ansible-playbook -i inventory.ini playbook.yml
requirements:
	ansible-galaxy install -r requirements.yml --force

encrypt_vault:
	ansible-vault encrypt $(CURDIR)/group_vars/webservers/vault.yml

decrypt_vault:
	ansible-vault decrypt $(CURDIR)/group_vars/webservers/vault.yml

edit_vault:
	ansible-vault edit $(CURDIR)/group_vars/webservers/vault.yml

view_vault:
	ansible-vault view $(CURDIR)/group_vars/webservers/vault.yml

