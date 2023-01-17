# use PowerShell instead of sh:
set shell := ["powershell.exe", "-c"]

port-forward-backend:
  ssh -N -f -L localhost:8888:localhost:8888 linode

deploy:
  ssh linode rm -rf /var/www/html/*
  scp -r .\dist\* linode:/var/www/html/