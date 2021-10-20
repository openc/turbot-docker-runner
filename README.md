# Turbot Docker Runner

## Quickstart

```
bin/turbot help
```

That will build the Turbot image and run `turbot help` inside it.

Now you use the `bin/docker-run` script to run commands in the context of the Ruby interpreter and gems that work with the Turbot project, and `bin/turbot` script instead of the `turbot` command.

## Detailed Usage

### `turbot` wrapper

You can easily run Turbot using the `turbot` wrapper, which runs the commands in a Docker container transparently without you having to do anything. It runs from your current directory on your local machine, so it sees what you see when you do `ls`.

First clone this project 

Now you can use the scripts in the `bin/` folder to run turbot, and Ruby commands in the context of the Turbot environment, easily. The first time you use the turbot script, it will build the Docker image called `turbot:latest` for you.

e.g.

```
<path-to-turbot-docker-runner>/bin/turbot bots:generate --bot my_first_bot --language=ruby
cd my_first_bot
<path-to-turbot-docker-runner>/bin/turbot bots:validate
```
### `docker-run` ###

This lets you run any command in the Docker container used by Turbot. It will also transparently build the Docker image for you.

```
<path-to-turbot-docker-runner>/bin/docker-run ruby --version
<path-to-turbot-docker-runner>/bin/docker-run ls
```
