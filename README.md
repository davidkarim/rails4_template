## README

This is a template of a Rails 4 basic application that can be run on Docker.

To build the image necessary to run the tools:

`docker build -t dkarim/a_test .`

To start the Rails server issue command below. This will run Rails and mount your own AWS credentials so you can use AWS_PROFILE variable. It will also share you bash history between your host and the container

```
docker run -p 8080:3000 \
-e "HOME=/home" \
-v $HOME/.aws:/home/.aws \
-v ~/.bash_history:/root/.bash_history \
-v $(pwd):/myapp \
-it dkarim/a_test rails s --binding=0.0.0.0
```
