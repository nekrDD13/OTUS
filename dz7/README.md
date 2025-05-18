# DZ7

Развёрнуто мониторинговое окружение на двух виртуальных машинах:

### VM1 (10.0.2.15) — CMS и Beats
- CMS: WordPress (nginx, php-fpm, MariaDB)
- Filebeat — логи: nginx, php-fpm, MariaDB
- Metricbeat — метрики: VM, nginx, MariaDB

### VM2 (10.0.2.16) — ELK Stack
- Elasticsearch
- Kibana
- Heartbeat:
  - Проверка доступности CMS (HTTP)
  - Проверка MySQL-порта (3306)

## Конфигурация

Находятся в директории `elk-monitoring-config`:
- filebeat.yml
- metricbeat.yml
- heartbeat.yml
