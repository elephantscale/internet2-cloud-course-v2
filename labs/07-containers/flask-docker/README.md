# Dockerized Flask App

## Step-1: Building and Running the App

How to build it

```bash
$   docker build .  -t flask-in-docker
```

Run

```bash
$   docker run --rm -p 5000:5000 flask-in-docker
```

See output

Go to : [localhost:5000](http://localhost:5000/)

You will see:

```console
Hello Flask World!
```

Also you can see the output on console using curl

```bash
$   curl   http://localhost:5000
```

## Step-2: Publishing to Dockerhub

You will need an account with [Docker Hub](https://hub.docker.com/)

### Build the image

```bash
$   docker build .  -t flask-in-docker
```

### Tag the image

Tag it with your username.  Let's say your dockerhub username is XYZ.  Replace XYZ below with your username

```bash
$   docker tag flask-in-docker   XYZ/flask-in-docker
```

### Publish the image

Login to docker hub

```bash
$   docker login
# enter your credentials
```

And push the image

```bash
$    docker push XYZ/flask-in-docker
```

### Verify the image is in using Dockerhub UI

Login to your dockerhub and verify the image is pushed in
