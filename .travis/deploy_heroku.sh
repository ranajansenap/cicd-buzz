#!/bin/sh
#wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
curl https://cli-assets.heroku.com/install.sh | sh
#heroku login
#heroku create
heroku plugins:install @heroku-cli/plugin-container-registry

docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
