# Dockerized psalm

The docker image to analyse php code using psalm.

### Usage

- Create `psalm.xml` config file in the project root
To get know about psalm configs [visit](https://psalm.dev/docs/running_psalm/configuration/)

- Go to the project root directory

- Run `docker run -v $(pwd):/app mp091689/psalm psalm`
To get know about psalm command line [visit](https://psalm.dev/docs/running_psalm/command_line_usage/)

By default, psalm runs using `php7.4`. To run another php version specify 
version of the docker image for example: `docker run -v $(pwd):/app mp091689/psalm:7.1 psalm`
