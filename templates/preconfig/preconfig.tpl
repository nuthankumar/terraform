- hosts: webserver
  gather_facts: false
  tasks:
    - name: make directory
      raw: mkdir ${environment}