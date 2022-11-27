# README #

This README would normally document how to deploy this Dockerfile

### What is this repository for? ###

* Create Docker Image for Glue app using Dockerfile
* Demo values

### How do I get set up? ###

Definations of environment veriables

ENV APP_DB= [The Database Name which laravel app will use to run the app]<br />
ENV APP_DB_USER= [Username for the database]<br />
ENV APP_DB_PASS= [Password for the database]<br />
ENV DB_FILE= [The file name of the Database/sql file which should be imported to mysql server]<br />
ENV WEB_SERVER= [IP address or Domain of the server]<br />
ENV GIT_REPO= [Git repo link where from the app files will be downloaded]<br />
ENV GIT_BRANCH= [Branch Name]<br />
ENV GIT_APP_FOLDER= [App folder name on repository. if your file at root location just enter "."]<br />

DEMO VALUES<br />

ENV APP_DB=laravel<br />
ENV APP_DB_USER=laraveluser<br />
ENV APP_DB_PASS=laravelpass<br />
ENV DB_FILE=bahonbdc_ticket.sql<br />
ENV WEB_SERVER=glue.teamcloudboost.ml<br />
ENV GIT_REPO=git link<br />
ENV GIT_BRANCH=Master or any other branch name<br />
ENV GIT_APP_FOLDER=.<br />


### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Team CloudBoost