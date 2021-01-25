docker-compose build
docker-compose run backend bash -c 'source activate dev_env && pytest'
$SHELL