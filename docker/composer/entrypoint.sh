#!/bin/sh

set -e

if [ "$1" = 'ash' ]; then
  exec "$@"
  exit $?
fi

if [[ ! -d $COMPOSER_HOME/vendor/hirak/prestissimo ]]; then
  composer global require hirak/prestissimo
fi

composer --version
exec php -d memory_limit=512M `which composer` "$@"
