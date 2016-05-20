#!/bin/bash

sed -n -i -e '/"require": {/r configs/Crayfish.txt' -e 1x -e '2,${x;p}' -e '${x;p}' pdx/composer.json
