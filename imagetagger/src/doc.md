The ImageTagger project is now running. Here's a summary of what was set up:

Step	Details
Python deps	Installed via pipenv install (Django 4.1.13 + all packages)
PostgreSQL 16	Installed via winget, created imagetagger user & database
Migrations	All 60+ migrations applied successfully
Superuser	Username: admin, Password: admin
Server	Running at http://127.0.0.1:8000/ (Dev configuration)
One small fix was needed: changed os.path.join to posixpath.join in checks.py because pyfilesystem2 requires forward-slash paths (Windows uses backslashes).

Open http://127.0.0.1:8000/ in your browser and log in with admin / admin.