# DZ11

**CMS (WordPress + Nginx + PHP-FPM + MariaDB) установлена на первой виртуальной машине.
Используется docker-compose файл: `cms/docker-compose.yml`

**На первой VM установлен Graylog Sidecar.
Конфигурация находится в `sidecar/sidecar.yml`
Настроен сбор логов:
`nginx` (`/var/log/nginx/access.log`, `/var/log/nginx/error.log`)
`php-fpm`
`mariadb` (`/var/log/mysql/error.log`)

**Graylog сервер установлен на второй VM вместе с OpenSearch и MongoDB.
Использован `docker-compose` файл: `graylog-stack/docker-compose.yml`

**Datapreper установлен и доступен.
Настроен внутри стека Graylog.

**Sidecar успешно подключён к Graylog.
Конфигурации логов заданы из интерфейса Graylog (`collector_config.json`)

**Разделение логов по стримам.
Созданы отдельные стримы:
`nginx-stream`
`php-fpm-stream`
`mysql-stream`
