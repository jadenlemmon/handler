<p align="center">
  <a href="https://github.com/jlemm45/handler"><img src="./img/logo.png" width="200" alt="Logo"></a>
</p>

<p align="center">
  Small collection of handy commands to make your life easier.
</p>

<p align="center">
  <a href="#badge"><img src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg" alt="Conventional Commits"></a>
</p>

## Summary

I based these commands on daily workflow commands I run during development. Mostly related to Git and Docker.
PR's are welcome.

### Quick Install

1. Download or clone the repo
2. Add reference to `bash_profile`, `bashrc`, or `.zshrc`

### Setup

```
 export PATH=$PATH:handler/bin // The bin folder needs to be in your path
 alias hc='hc' // Optional had some aliases
```

### Commands

```
  Git
  cm      Clears all local branches merged into checkout out branch
  u       Updates current branch in repo from origin and installs JS/PHP dependencies

  Docker
  dk      Kills all running Docker containers
  drs     Removes all stopped Docker containers
  ddi     Removes all dangling Docker images
  di      Removes all Docker images
  fp      Kill processes running on a specific port
  dp      Purges all Docker containers, images, and volumes - Nuclear option
```
