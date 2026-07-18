#!/bin/bash
set -e
echo "🚀 Заливаю tables на Timeweb..."
rsync -azq \
  --exclude '.git/' \
  --exclude 'CNAME' \
  --exclude 'deploy-tables.sh' \
  --exclude 'README.md' \
  -e ssh \
  ./ cj55452@vh384.timeweb.ru:~/tables/public_html/
echo "✅ Готово: tables.batrankov.ru обновлён"
