echo "Deploy no ambiente: $1"

rm -rf .git
git init
heroku git:remote -a junio-blog-api-$1
heroku config:set RACK_ENV=$1
git add . && git commit -m "new deploy"
git push heroku master --force
