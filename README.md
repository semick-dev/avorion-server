# avorion-server - `pod-avorion

I don't want to need to manually do this again. Writing it down here. I want to specifically credit the avorion wiki folks for having these details already written down. This is just implementation (and update to current as of Jan 2022) so that I can share with my friends.

If you want to run this thing on piece of local hardware that you have laying around, feel free to just make use of `install.sh`! Reference `run.sh` for how to actually boot up the server.

## Build the image

```
cd <ubuntu version>
docker build -t pod-avorion
```

## Running the server

You need the following. 

- A local directory where you you already have a galaxy initialized, or an empty directory where you want one TO exist. I guess this isn't strictly necessary, but use it if you want the data easily.
- a 64 bit id from [here](https://steamid.io/) that will be the server admin. It defaults to nothing, so. That would be bad.
- A galaxy name! It defaults to `general_kenobi`.

`docker run -v <where you want your galaxy to save or be loaded from>`:/srv/avorion -e GALAXY_NAME="the-melting-pot" -e GALAXY_ADMIN="76561197980019233" -p 27004:27004 -p 27000:27000 -p 27003:27003 -p 27020:27020 -p 27021:27021 -t pod-avorion`

...Yeah. I know.

You can do surgery on the `admin.xml` later to add multiple administrators. It'll exist on your local file system!