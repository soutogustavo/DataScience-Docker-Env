# My Data Science Environment

This data science environment focuses on the Data Exploration. <br>
Therefore, it contains an initial set of libraries
to support the Exploratory Data Analysis.

The environment was defined/designed using the Docker Compose since <br>
I could easily run Data Science related services along with the Jupyter Lab.

## Configuration

### Docker Desktop

I recommend you to install the __Docker Desktop__ since it's easy to manage images and containers. <br>
[Here](https://docs.docker.com/desktop/install/linux-install/)'s how to install it on Linux.

### Build and Run

You can build the image as follows
```bash
$ docker build -t datascience-docker-eda .
```

You can either run the image or create a container with more services.

#### Run Image
```bash
$ docker run --name datascience-docker-eda-ct -v ~/DSEnv:/DSEnv -w /DSEnv -p 8889:8889 datascience-docker-eda
```
- v :: Volume (i.e. it maps a folder from the host to be used).
- w :: Working Directory (i.e. inside the image).
- p :: port.

#### Docker Compose

```bash
$ docker-compose up
```

The following volumes are mounted:
- ~.aws :: AWS configuration
- ~/DSEnv :: Default folder for Data Exploration


### New Password 

You can set a password by logging out (i.e. File > Log out > Login Page), insert the generated token (i.e. it shows in the command line when you run the image/container) and the new password.