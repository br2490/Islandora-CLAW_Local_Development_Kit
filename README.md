*(rough draft, ramblings)*

**Purpose**

The general idea here is to have a quick way to deploy services related to Islandora CLAW development locally. Each part of CLAW is added here as a submodule ~ which you can add your git remote to ~ to develop and commit back. Right now this is a _very_ early environment (let's call it a WIP). In _theory_ a hard revert to HEAD should bring you back to square 1, clean and fresh.

**Getting Started**

* Fork and/or clone this repo to your dev env.
* cd Islandora-Development
* git submodule init
* git submodule update


**Servers**

To get the servers running run `./start_servers` which will launch a screen session with each server, for monitoring. fcrepo you still need to click "run." See the servers folder for requirements.

* Blazegraph runs on [http://localhost:9999/](http://localhost:9999/)
* Fedora runs at [http://localhost:8080/rest](http://localhost:8080/rest)
* Islandora will run at XYZ (haven't gotten this far.)
* Karaf runs and does things! (the client is accessible in the server's bin folder)

**With the servers running you can then build the fcrepo-camel-toolbox**

To get Karaf running fcrepo-camel-toolbox just `./build-fcrepo-toolbox.sh`. Presently I only add three mods in but you can modify the script in the config folder to meet your need.

My needs were for fcrepo and blazegraph to sync, which they should do after you run the build.

This document is a WIP and more of a "get this down on paper before you forget what you did." 
