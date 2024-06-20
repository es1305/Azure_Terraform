# Azure VM (Terraform)

[Terraform](https://www.terraform.io)-манифест для создания VM в [Microsoft Azure](https://azure.microsoft.com) и добавления A записи в DNS ([Cloudflare](https://www.cloudflare.com)).

Для получения Cloudflare Zone ID необходимы `Environment variables`

```bash
export CLOUDFLARE_EMAIL=mai****.com
export CLOUDFLARE_BEARER=EAz6****
export CLOUDFLARE_DOMAIN=hm****.com
```
Результат выполнения `zid.sh` после `exports` добавить в `variables.tf - cloudflare_zone_id - default`
