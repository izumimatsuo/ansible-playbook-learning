# ansible-playbook-learning

ansibleで作って学ぶ ITインフラの基本

## playbook list

### system

- sys_firewalld_config.yml - firewalldの設定(ssh, http, https)
- sys_pkg_update.yml - packageの更新
- sys_selinux_enforce.yml - selinuxの有効化
- sys_selinux_permissive.yml - selinuxの無効化
- sys_service_config.yml - 不要なserviceの無効化(rpcbind.service)
- sys_sshd_config.yml - rootユーザーのリモートアクセスを無効化
- sys_user_config.yml - rootユーザーのログインシェルを変更(/sbin/nologin)

### nginx

- nginx_cluster.yml - サーバークラスタを構築(nginx, keepalived)
- nginx_install.yml - nginxのインストールと設定
- nginx_keepalived_install.yml - クラスタツールのインストールと設定(keepalived)
- nginx_vserver_config.yml - 仮想サーバーの設定(/guacamole)

### docker

- docker_cluster.yml - サーバークラスタを構築(docker-swarm)
- docker_container_deploy.yml - コンテナデプロイ(guacamole)
- docker_install.yml - docker-ceのインストール
- docker_swarm_config.yml - クタスタ化の設定

### postgresql

- postgresql_cluster.yml - サーバークラスタを構築(postgresql)
- postgresql_initdb_config.yml - DB作成(guacamole)
- postgresql_install.yml - postgresqlのインストールと設定
- postgresql_replication_config.yml - レプリケーションの設定(streaming)

### security

- sec_aide_check.yml - aide checkの実行
- sec_aide_install.yml - ファイル改ざんツールのインストールと設定(aide)
- sec_aide_update.yml - aide updateの実行
- sec_clamav_install.yml - ウイルス検知ツールのインストールと設定(clamav)
- sec_clamd_scanner_install.yml - ウイルス検知の高速化モジュールのインストールと設定(clamd)
- sec_fail2ban_banip.yml - 指定ipをbanする
- sec_fail2ban_install.yml - 不正侵入防御ツールのインストールと設定(fail2ban)
- sec_fail2ban_status.yml - 状態の確認
- sec_fail2ban_unbanip.yml - banしたipのリセット
- sec_rkhunter_install.yml - バックドア(root kit)検知ツールのインストールと設定(rkhunter)
