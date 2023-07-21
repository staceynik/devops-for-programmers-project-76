deploy:
	ansible-playbook -i inventory.ini playbook.yml
requirements:
	ansible-galaxy install -r requirements.yml --force

encrypt_vault:
	ansible-vault encrypt $(PWD)/group_vars/webservers/vault.yml

decrypt_vault:
	ansible-vault decrypt $(PWD)/group_vars/webservers/vault.yml

edit_vault:
	ansible-vault edit $(PWD)/group_vars/webservers/vault.yml

view_vault:
	ansible-vault view $(PWD)/group_vars/webservers/vault.yml

