# Raspberry Pi Webcam

A minimal webcam solution using [Bambleweeny](https://github.com/u1i/bambleweeny) as a message broker and server platform. Of course, your host can be any Linux machine and it doesn't have to be a Pi.

## What you need

* [Bambleweeny](https://github.com/u1i/bambleweeny) running on the web, ideally over HTTPS
* a webcam (obviously)
* fswebcam command line tool
* curl

## How to run it

Create cam.cfg (use the sample file cam.cfg-sample) and populate the following values:

* b9y_host - your b9y host, e.g. https://b9y.example.com
* token - the auth token for your b9y user
* b9y\_route_pic - the public route for the 'pic' key
* b9y\_route_page - the public for the 'page' key

The easiest way to get these is with the b9y commandline. Connect to your instance and then do:

> create_user cam mypassword123

Re-connect with the CLI using these credentials and then do this:

> token  
> route pic image/jpeg  
> route page text/html  

copy/paste the output into the respective lines of cam.cfg and then you simply run `webcam.sh`, maybe in a screen session.

You can then access your live cam on $b9y\_host/$b9y\_route_page - for example `https://b9y.example.com/routes/f71f2ad1-45b9-42e6-8a69-1815f7432ce0`



