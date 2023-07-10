deploy:
	ansible-playbook -i inventory.ini playbook.yml
requirements:
	pip3 install -r requirements.txt
