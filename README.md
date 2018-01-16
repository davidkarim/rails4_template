## README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

To build the image necessary to run the tools:

`docker build -t dkarim/a_test .`

To shell in to a container and actually run the tools. This will shell in to the container and mount your own AWS creds so you can use AWS_PROFILE variable. It will also share you bash history between your host and the container

```
docker run \
-e "HOME=/home" \
-v $HOME/.aws:/home/.aws \
-v ~/.bash_history:/root/.bash_history \
-v $(pwd):/myapp \
-it dkarim/a_test /bin/bash
```


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
