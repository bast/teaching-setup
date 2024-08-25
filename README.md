# teaching-setup

Containerized teaching setup which creates an isolated configurable shell.

This can be useful for the following situation:
- You want to teach a course about shell/ command line tools.
- Your Linux environment is heavily customized and you don't want to change it
  but at the same time it does not help beginners to see an environment which is
  different from what they have.
- Your Linux distribution is very different from what your students have.
- You want to have a clean environment for teaching.
- You want to create the illusion of teaching from an Ubuntu-like environment.


## Usage

- Clone this repository
- Run `./run.sh`
- This starts a new terminal and creates a home folder in the place where you run the script


## Design decisions

- Why are some settings outside the container? Why do I need to build the container? Why is not all just baked into the container?
  - Later I might do that but for now it makes it easier to tweak settings without rebuilding the container.


## Inspiration

- https://blog.yadutaf.fr/2017/09/10/running-a-graphical-app-in-a-docker-container-on-a-remote-server/
- https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
