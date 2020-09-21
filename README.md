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

### Setup

```
// Fetch the repo
curl -LJO https://github.com/jlemm45/handler/tarball/master

// Unzip
tar -xf jlemm45-handler-*

// Place in Path
cd jlemm45-handler-*
mv handler /usr/local/bin

// Clean up
cd ..
rm -rf jlemm45-handler-*
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
  dp      Purges all Docker containers, images, and volumes - Nuclear option

  Docker Compose
  dcu     Docker compose up
  dcd     Docker compose down

  Misc
  fp      Kill processes running on a specific port

  AWS
  iip     Get instance IP from name
  cu      Get current aws iam user
  skc     Set the kube config from eks cluster
```
