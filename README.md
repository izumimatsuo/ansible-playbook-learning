# ansible-playbook-learning

ansibleで作って学ぶ ITインフラの基本

## Playbook list

### System

- [sys_auditd_config.yml](sys_auditd_config.yml) - 監査ログを設定
- [sys_env_check.yml](sys_env_check.yml) - システム設定の確認(hostname, local, timezone, ntp)
- [sys_firewalld_config.yml](sys_firewalld_config.yml) - firewalldの設定(ssh, http, https)
- [sys_hosts_config.yml](sys_hosts_config.yml) - hostsファイルの設定
- [sys_pkg_update.yml](sys_pkg_update.yml) - インストール済みpackageの更新
- [sys_selinux_enforce.yml](sys_selinux_enforce.yml) - selinuxの有効化
- [sys_selinux_permissive.yml](sys_selinux_permissive.yml) - selinuxの無効化
- [sys_service_config.yml](sys_service_config.yml) - 不要なserviceの無効化(rpcbind.service)
- [sys_sshd_config.yml](sys_sshd_config.yml) - rootユーザーのリモートアクセスを無効化
- [sys_user_config.yml](sys_user_config.yml) - rootユーザーのログインシェルを変更(/sbin/nologin)

### Nginx

- [nginx_cluster.yml](nginx_cluster.yml) - Webサーバークラスタを構築(nginx, keepalived)
- [nginx_install.yml](nginx_install.yml) - nginxのインストール
- [nginx_keepalived_install.yml](nginx_keepalived_install.yml) - クラスタツールのインストールと設定(keepalived)
- [nginx_secure_config.yml](nginx_secure_config.yml) - セキュリテイ設定
- [nginx_vserver_config.yml](nginx_vserver_config.yml) - 仮想サーバーの設定(/guacamole)
- [test_nginx_cluster.yml](test_nginx_cluster.yml) - Webサーバークラスタのフェイルオーバーテスト

### Docker

- [docker_cluster.yml](docker_cluster.yml) - Appサーバークラスタを構築(docker-swarm)
- [docker_container_deploy.yml](docker_container_deploy.yml) - Appコンテナデプロイ(guacamole)
- [docker_install.yml](docker_install.yml) - docker-ceのインストール
- [docker_swarm_config.yml](docker_swarm_config.yml) - クラスタ化の設定
- [test_docker_cluster.yml](test_docker_cluster.yml) - Appサーバークラスタのフェイルオーバーテスト

### Postgresql

- [postgresql_cluster.yml](postgresql_cluster.yml) - DBサーバークラスタを構築(postgresql)
- [postgresql_initdb_config.yml](postgresql_initdb_config.yml) - DB作成(guacamole)
- [postgresql_install.yml](postgresql_install.yml) - postgresqlのインストール
- [postgresql_replication_config.yml](postgresql_replication_config.yml) - streamingレプリケーションの設定

### Web application site

- [webapp_site.yml](webapp_site.yml) - Web3層アプリケーションの構築(guacamole)
- [test_webapp_site.yml](test_webapp_site.yml) - 構築したWeb3層アプリケーションのテスト

### Security

#### - aide
- [sec_aide_check.yml](sec_aide_check.yml) - aide checkの実行
- [sec_aide_install.yml](sec_aide_install.yml) - ファイル改ざん検知ツールのインストールと設定
- [sec_aide_update.yml](sec_aide_update.yml) - aide updateの実行

#### - clamav
- [sec_clamav_install.yml](sec_clamav_install.yml) - ウイルス検知ツールのインストールと設定
- [sec_clamd_scanner_install.yml](sec_clamd_scanner_install.yml) - ウイルス検知の高速化モジュールのインストールと設定(clamd)

#### - fail2ban
- [sec_fail2ban_banip.yml](sec_fail2ban_banip.yml) - 指定のipをbanする
- [sec_fail2ban_install.yml](sec_fail2ban_install.yml) - 不正侵入防御ツールのインストールと設定
- [sec_fail2ban_status.yml](sec_fail2ban_status.yml) - banされたipの確認
- [sec_fail2ban_unbanip.yml](sec_fail2ban_unbanip.yml) - banしたipのリセット

#### - rkhunter
- [sec_rkhunter_install.yml](sec_rkhunter_install.yml) - バックドア(root kit)検知ツールのインストールと設定

### Operation

#### - monitor
- [opt_alertmanager_container_deploy.yml](opt_alertmanager_container_deploy.yml) - アラート通知ミドルのインストール
- [opt_node_exporter_install.yml](opt_node_exporter_install.yml) - メトリクス情報公開ミドルのインストール
- [opt_prometheus_container_deploy.yml](opt_prometheus_container_deploy.yml) - 監視ミドルのインストール

#### - runbook automation
- [opt_rundeck_container_deploy.yml](opt_rundeck_container_deploy.yml) - 運用手順の自動化(ジョブ管理)ミドルのインストール
