#DZ 3
# VictoriaMetrics + Prometheus + Alertmanager + Webhook Alerts

Файл: alerts.yml

Настроены два алерта:

    InstanceDown (critical) — если инстанс Prometheus не отвечает

    HighCPUUsage (warning) — если CPU загрузка > 10% за последнюю минуту

Файл: alertmanager.yml

    Все алерты с severity: critical отправляются на /critical webhook

    Все алерты с severity: warning — на /warning

    Остальные — на /default


