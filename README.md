# ansible-playbook-learning

ansibleで作って学ぶ ITインフラの基本

## Playbook list

### System

- [sys_auditd_config.yml](sys_auditd_config.yml) - 監査ログを設定
- [sys_env_check.yml](sys_env_check.yml) - システム設定の確認(hostname, locale, timezone, ntp)
- [sys_firewalld_config.yml](sys_firewalld_config.yml) - firewalldの設定(ssh, http, https)
- [sys_hosts_config.yml](sys_hosts_config.yml) - /etc/hostsファイルの設定
- [sys_package_update.yml](sys_package_update.yml) - インストール済みpackageの更新
- [sys_selinux_enforce.yml](sys_selinux_enforce.yml) - selinuxの有効化
- [sys_selinux_permissive.yml](sys_selinux_permissive.yml) - selinuxの無効化
- [sys_sshd_secure_config.yml](sys_sshd_secure_config.yml) - sshのセキュリティ設定

### Nginx

- [nginx_cluster.yml](nginx_cluster.yml) - Webサーバークラスタを構築(nginx, keepalived)
- [nginx_install.yml](nginx_install.yml) - nginxのインストール
- [nginx_keepalived_install.yml](nginx_keepalived_install.yml) - クラスタツールのインストールと設定(keepalived)
- [nginx_modsecurity_install.yml](nginx_modsecurity_install.yml) - WAFのインストールと設定(modsecurity)
- [nginx_proxy_config.yml](nginx_proxy_config.yml) - Proxyサーバー設定
- [nginx_secure_config.yml](nginx_secure_config.yml) - セキュリテイ設定
- [test_nginx_cluster.yml](test_nginx_cluster.yml) - Webサーバークラスタのフェイルオーバーテスト

### Docker

- [docker_cluster.yml](docker_cluster.yml) - Appサーバークラスタを構築(docker-swarm)
- [docker_install.yml](docker_install.yml) - docker-ceのインストール
- [docker_swarm_config.yml](docker_swarm_config.yml) - クラスタ化の設定(docker-swarm)
- [test_docker_cluster.yml](test_docker_cluster.yml) - Appサーバークラスタのフェイルオーバーテスト

### Postgresql

- [postgresql_cluster.yml](postgresql_cluster.yml) - DBサーバークラスタを構築(postgresql, repmgr)
- [postgresql_install.yml](postgresql_install.yml) - postgresqlのインストール
- [postgresql_replication_config.yml](postgresql_replication_config.yml) - クラスタツールのインストールとstreamingレプリケーションの設定(repmgr)

### Web application site

- [webapp_guacamole_container_deploy.yml](webapp_guacamole_container_deploy.yml) - Guacamoleコンテナデプロイ
- [webapp_guacamole_database_config.yml](webapp_guacamole_database_config.yml) - Guacamole DB設定
- [webapp_site.yml](webapp_site.yml) - Web3層アプリケーションの構築(Guacamole)
- [test_webapp_site.yml](test_webapp_site.yml) - 構築したWeb3層アプリケーションのテスト

### Security (IDS/IPS)

#### - aide
- [sec_aide_check.yml](sec_aide_check.yml) - aide checkの実行
- [sec_aide_install.yml](sec_aide_install.yml) - ファイル改ざん検知ツールのインストールと設定
- [sec_aide_update.yml](sec_aide_update.yml) - aide updateの実行

#### - clamav
- [sec_clamav_install.yml](sec_clamav_install.yml) - ウイルス検知ツールのインストールと設定
- [sec_clamd_scanner_install.yml](sec_clamd_scanner_install.yml) - ウイルス検知の高速化モジュールのインストールと設定(clamd)

#### - fail2ban
- [sec_fail2ban_banip.yml](sec_fail2ban_banip.yml) - 指定のipをbanする
- [sec_fail2ban_install.yml](sec_fail2ban_install.yml) - 不正侵入防御ツールのインストールとsshd不正アクセスの設定
- [sec_fail2ban_nginx_jail_config.yml](sec_fail2ban_nginx_jail_config.yml) - nginx不正アクセスの設定
- [sec_fail2ban_recidive_jail_config.yml](sec_fail2ban_recidive_jail_config.yml) - 不正アクセス再発禁止の設定
- [sec_fail2ban_status.yml](sec_fail2ban_status.yml) - jailおよびbanされたipの確認
- [sec_fail2ban_unbanip.yml](sec_fail2ban_unbanip.yml) - banしたipのリセット

#### - rkhunter
- [sec_rkhunter_check.yml](sec_rkhunter_check.yml) - rkhunter checkの実行
- [sec_rkhunter_install.yml](sec_rkhunter_install.yml) - バックドア(root kit)検知ツールのインストールと設定

### Operation

#### - automation
- [opt_rundeck_container_deploy.yml](opt_rundeck_container_deploy.yml) - ジョブ管理ミドルのインストール

#### - detection
- [opt_vuls_server_install.yml](opt_vuls_server_install.yml) - 脆弱性検知ミドルのインストール

#### - monitoring
- [opt_alertmanager_container_deploy.yml](opt_alertmanager_container_deploy.yml) - アラート通知ミドルのインストール
- [opt_node_exporter_install.yml](opt_node_exporter_install.yml) - メトリクス収集エージェントのインストール
- [opt_prometheus_container_deploy.yml](opt_prometheus_container_deploy.yml) - メトリクス監視ミドルのインストール

#### - orchestration
- [opt_consul_install.yml](opt_consul_install.yml) - オーケストレーションツールのインストール
- [opt_consul_template_install.yml](opt_consul_template_install.yml) - テンプレートツールのインストール
