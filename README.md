# FastAPI-test

### To setup Docker
You can either create a repo on docker hub or create one using `docker create *repo name*`
 - `docker login`, then enter your credentials
 - `docker build -t *docker username*/*container name*:*tagname* .`, for example mine is `docker build -t freshrojek/fastdockerexample:latest .`
 - `docker push *docker username*/*repo name*:*tagname*`, for example mine is `docker push freshrojek/fastdockerexample:latest`
 - `docker-compose up` to run the docker container locally, which you can then go to `localhost:80`.
 
### To set up Elastic Beanstalk
it will ask you to provide security access keys from your EB application, make sure you're in the right location in the top right of the application console.
- `eb init -p docker *application name*` in the root folder
- `eb create *environment name*` to start environment
- `eb open`  to open the started environment

### To test locally with Elastic Beanstalk
- `eb local run --port 80` to run the environment locally
- on another terminal: `eb local open` or go to `localhost:80`


You should be able to go to the EB application management console, go to your environemnt and click the link it gives and yo should see your FastAPI-application
