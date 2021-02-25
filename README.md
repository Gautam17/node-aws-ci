# node-aws-ci

## Contribute:

`export DOCKER_ACC=gomzy`
`export DOCKER_REPO=node-aws`
`export IMG_TAG=<??>`

Build your image by executing the `docker build` command. `DOCKER_ACC` is the name of your account `DOCKER_REPO` is your image name and `IMG_TAG` is your tag

command: `docker build -t $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG .`

Now, you can push this image to your hub by executing the `docker push` command.

command: `docker push $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG`

## TODO

1. CI-CD

Author(s)

- Gautam Vanani
