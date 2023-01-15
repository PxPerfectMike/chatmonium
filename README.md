# Chatmonium App

this app will allow you to send messages.

## Dev Setup

1. SSH into the linode sever to make sure the back end is up and running. (curl on dev machine)

```bash
ssh linode
curl 127.0.0.1:8888
```

2. Port forward localhost from remote to dev machine by running this command on the dev machine.

```bash
ssh -N -f -L localhost:8888:localhost:8888 linode
```

3. `npm run dev` and develop the app.
