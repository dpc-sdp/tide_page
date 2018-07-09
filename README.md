# tide_page
Page content type for Tide distribution

[![CircleCI](https://circleci.com/gh/dpc-sdp/tide_page.svg?style=shield&circle-token=2a0e49166724ac193636fba5b458024e00342dce)](https://circleci.com/gh/dpc-sdp/tide_page)

## Purpose
- content type
- fields
- blocks
- views
- REST module integration, if required

## Development

- Build process is controlled by a `Makefile`.
- All commands run inside of Docker containers.
- CI configure to run exactly the same commands as local.
- Build will create Drupal 8 site and will install this and all dependent modules.
- Use `.env.local` to adjust build variables.

### Local environment setup
1. Make sure that you have `make`, [Docker](https://www.docker.com/) and [Pygmy](https://docs.amazee.io/local_docker_development/pygmy.html) installed.
2. Checkout project repo
3. `pygmy up`
4. `make build`

Local URL: http://tide-module.docker.amazee.io 

### Available make commands
Run each command as `make <command>`.
  ```
  build                Build project.
  clean                Remove dependencies.
  clean-full           Remove dependencies and Docker images.
  docker-destroy       Destroy Docker containers.
  docker-restart       Re-start Docker containers.
  docker-start         Start Docker containers.
  docker-stop          Stop Docker containers.
  drush                Run Drush command.
  help                 Display this help message.
  install              Install dependencies
  install-module       Install current module.
  install-site         Install site.
  lint                 Lint code.
  rebuild              Re-build project dependencies.
  rebuild-full         Clean and fully re-build project dependencies.
  test-behat           Run Behat tests.
  ```
