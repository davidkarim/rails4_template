FROM ruby:2.3.6

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails

# add to bashrc
ENV BASHRC /home/.bashrc
RUN touch $BASHRC
RUN echo "HISTCONTROL=ignoreboth:erasedups" >> $BASHRC
RUN echo "alias hg='history | grep '" >> $BASHRC
RUN echo "alias ll='ls -lah'" >> $BASHRC

# install awscli
RUN apt-get install -qy python-dev python-pip groff-base jq unzip
RUN pip install awscli

RUN mkdir /myapp
COPY . /myapp
WORKDIR /myapp
RUN bundle install
EXPOSE 3000
