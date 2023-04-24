# ansible-playbook-learning

ansibleで作って学ぶ ITインフラの基本

## playbook list

### system

- sys_env_check.yml - システム設定の確認(hostname/local/timezone/ntp)
- sys_firewalld_config.yml - firewalldの設定(ssh, http, https)
- sys_pkg_update.yml - インストール済みpackageの更新
- sys_selinux_enforce.yml - selinuxの有効化
- sys_selinux_permissive.yml - selinuxの無効化
- sys_service_config.yml - 不要なserviceの無効化(rpcbind.service)
- sys_sshd_config.yml - rootユーザーのリモートアクセスを無効化
- sys_user_config.yml - rootユーザーのログインシェルを変更(/sbin/nologin)

### nginx

- nginx_cluster.yml - Webサーバークラスタを構築(nginx, keepalived)
- nginx_install.yml - nginxのインストール
- nginx_keepalived_install.yml - クラスタツールのインストールと設定(keepalived)
- nginx_secure_config.yml - セキュリテイ設定
- nginx_vserver_config.yml - 仮想サーバーの設定(/guacamole)
- test_nginx_cluster.yml - Webサーバークラスタのフェイルオーバーテスト

### docker

- docker_cluster.yml - Appサーバークラスタを構築(docker-swarm)
- docker_container_deploy.yml - Appコンテナデプロイ(guacamole)
- docker_install.yml - docker-ceのインストール
- docker_swarm_config.yml - クタスタ化の設定

### postgresql

- postgresql_cluster.yml - DBサーバークラスタを構築(postgresql)
- postgresql_initdb_config.yml - DB作成(guacamole)
- postgresql_install.yml - postgresqlのインストール
- postgresql_replication_config.yml - レプリケーションの設定(streaming)

### security

#### - aide
- sec_aide_check.yml - aide checkの実行
- sec_aide_install.yml - ファイル改ざん検知ツールのインストールと設定
- sec_aide_update.yml - aide updateの実行

#### - clamav
- sec_clamav_install.yml - ウイルス検知ツールのインストールと設定
- sec_clamd_scanner_install.yml - ウイルス検知の高速化モジュールのインストールと設定(clamd)

#### - fail2ban
- sec_fail2ban_banip.yml - 指定のipをbanする
- sec_fail2ban_install.yml - 不正侵入防御ツールのインストールと設定
- sec_fail2ban_status.yml - banされたipの確認
- sec_fail2ban_unbanip.yml - banしたipのリセット

#### - rkhunter
- sec_rkhunter_install.yml - バックドア(root kit)検知ツールのインストールと設定

### web application site

- test_webapp_site.yml - 構築したWeb3層アプリケーションのテスト
- webapp_site.yml - Web3層アプリケーションの構築(guacamole)
