*(rough draft, ramblings)*

**Purpose**

The general idea here is to have a quick way to deploy services related to Islandora CLAW development locally. Each part of CLAW is added here as a submodule ~ which you can add your git remote to ~ to develop and commit back. Right now this is a _very_ early environment (let's call it a WIP). In _theory_ a hard revert to HEAD should bring you back to square 1, clean and fresh.


**Quickest Start**

* git clone https://github.com/br2490/Islandora-Development.git
* cd Islandora-Development
* ./quickest_start.sh

Done! Enjoy the console spam!


**Quick Start**

* Fork and/or clone this repo to your dev env.
* cd Islandora-Development
* git submodule init
* git submodule update
* ./start_servers.sh
* ./build-fcrepo-toolbox.sh
* ./align_composer.sh
* ./build_and_run_islandora.sh

**Locations**

* Blazegraph runs at [http://localhost:9999/](http://localhost:9999/)
* Fedora runs at [http://localhost:8080/rest](http://localhost:8080/rest)
* Islandora will run at [http://localhost:8585/](http://localhost:8585/)
* Karaf runs and does things! (the client is accessible in the server's bin folder)

**Quick Note**

The servers will run on ports 8080, 8585, and 9999. If those ports on your local development box are being used you need to edit configs. @TODO - what configs?

**Servers**

To get the servers running use `./start_servers.sh` which will launch a screen session for each server for monitoring.

Each screen is named for the server it runs. Run `screen -list` or `screen -x` to list the running sessions. To reattach to a screen run `screen -r [session name (e.g., karaf, blazegraph, etc.)]`. From each session you can kill the server or detach again by hitting `ctrl+a d`. 

Remember! fcrepo needs you to click `Start`.

See the servers folder for requirements and licenses.

**With the servers running build the fcrepo-camel-toolbox**

To get Karaf running fcrepo-camel-toolbox just `./build-fcrepo-toolbox`. 

At present only three features are installed. 

* fcrepo-service-activemq
* fcrepo-indexing-triplestore
* fcrepo-fixity

You can modify the `fcrepo-camel-toolbox.script` file in the config folder to meet your development needs. My needs were for fcrepo and blazegraph to sync, which they will do after you run the build as it stands.

**Composer Update and Running Islandora CLAW Microservices**

First we need to tell composer where to find our dependencies:
* Run `align_composer.sh` to add the necessary lines to the composer.json file(s).

Next update Composer, and initalize our microservices on port 8585:
* Run `build_and_run_islandora.sh`


**Reqs**

Screen, Apache Maven, * JDK 8, phpunit, php-mbstring, coffee.
