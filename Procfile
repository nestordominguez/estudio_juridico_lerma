web: bundle exec rails server thin -p $PORT -e $RACK_ENV
worker: env NEWRELIC_ENABLE=false bundle exec sidekiq -q default,1
