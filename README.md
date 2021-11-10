<p align="center">
  <a href="https://github.com/jadenlemmon/handler"><img src="./img/logo.png" width="200" alt="Logo"></a>
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
// Download and extract
curl -L https://github.com/jadenlemmon/handler/tarball/master | tar xvz --strip-components=2 '*handler'

// Place in Path
mv handler /usr/local/bin
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
  dc      Docker compose
  dcu     Docker compose up
  dcd     Docker compose down

  Misc
  fp      Kill processes running on a specific port

  AWS
  iip     Get instance IP from name
  cu      Get current aws iam user
  skc     Set the kube config from eks cluster

  K8
  kc      Get current K8 context
  kcs     Get available K8 contexts
```
