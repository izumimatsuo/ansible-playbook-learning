#!/bin/bash

PACKAGE_NAME=$1
SERVICE_NAME=${PACKAGE_NAME}.service

cat << EOS > ${PACKAGE_NAME}_install.yml
---
- name: $PACKAGE_NAME setup
  hosts: all
  become: true
  gather_facts: false

  vars:

  tasks:
    - name: install $PACKAGE_NAME package
      ansible.builtin.yum:
        name: $PACKAGE_NAME

    - name: start $PACKAGE_NAME service
      ansible.builtin.service:
        name: $SERVICE_NAME
        state: started
        enabled: true

    - name: copy $PACKAGE_NAME conf
      ansible.builtin.copy:
        dest: 
        content: |

        mode: "0644"
      notify: restart $PACKAGE_NAME service

  post_tasks:
    - name: verify installed $PACKAGE_NAME package
      ansible.builtin.shell:
        cmd: set -o pipefail; yum list installed | grep $PACKAGE_NAME\\.
      changed_when: false
      register: result
      failed_when: result.rc != 0

    - name: print installed version
      ansible.builtin.debug:
        var: result.stdout

    - name: verify started $PACKAGE_NAME service
      ansible.builtin.service:
        name: $SERVICE_NAME
        state: started
        enabled: true
      check_mode: true
      register: result
      failed_when: result.changed

  handlers:
    - name: restart $PACKAGE_NAME service
      service:
        name: $SERVICE_NAME
        state: restarted
EOS
