#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt

cd src
mkdir -p data
python manage.py collectstatic --no-input
python manage.py migrate
python manage.py shell -c "from imagetagger.users.models import User; User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin123')"
