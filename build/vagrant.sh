#!/bin/bash

project=$1

[[ -z `which composer` ]] && curl -sS https://getcomposer.org/installer | php && cp composer.phar /usr/bin/composer && rm composer.phar || true
[[ -z `which git` ]] && sudo apt-get update && sudo apt-get install git-core -y || true
[[ -z `which rvm` ]] && sudo apt-get update && \curl -sSL https://get.rvm.io | bash -s stable && source /etc/profile.d/rvm.sh || true
[[ -z `which ruby` ]] && rvm install 2.1.3 || true
[[ -z `which sass` ]] && gem install sass || true
[[ -z `which composer` ]] && gem install composer || true

if [[ ! -f /opt/phantomjs ]]
then
  wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 -O - | tar xj -C /tmp
  cp /tmp/phantom*/bin/phantomjs /opt
fi

[[ -z `which firefox` ]] && apt-get update -y && apt-get install -q -y iceweasel || true
/opt/phantomjs --webdriver=8643 &> /dev/null &
