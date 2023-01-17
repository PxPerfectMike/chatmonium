# Chatmonium App

this app will allow you to send messages.

## Dev Setup

(prefix any command with `ssh linode` to run command on remote machine from local machine)

1. SSH into the linode sever to make sure the back end is up and running. (curl on dev machine)

```bash
ssh linode
curl 127.0.0.1:8888
./pocketbase serve --http "127.0.0.1:8888" &
```

2. Port forward localhost from remote to dev machine by running this command on the dev machine.

```bash
ssh -N -f -L localhost:8888:localhost:8888 linode
```

3. `npm run dev` and develop the app.

## Deployment

1. install apache on linux server (linode)

```bash
sudo apt install apache2
```

2. Ensure apache2 is running

```bash
sudo systemctl status apache2
```

this should return `active running`

3. Build the production build of the app.

```bash
npm run build
```

4. copy over the production version of the app to the apache folder which is in `/var/www/html` by running the following commands on local machine.

```bash
# Delete existing files
ssh linode rm -rf /var/www/html/*

# copy over new files
# run command from root of repo
scp -r .\dist\* linode:/var/www/html/

```
