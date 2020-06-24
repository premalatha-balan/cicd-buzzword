wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku create cicdcd-buzzword
heroku container:login
heroku container:push web --app $HEROKU_APP_NAME
heroku container:push web --app cicd-buzzword
heroku container:push web --app cicdcd-buzzword
heroku container:release web --app $HEROKU_APP_NAME
heroku container:release web --app cicd-buzzword
heroku container:release web --app cicdcd-buzzword
