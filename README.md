# composer-yaml

This project allows you to convert a composer.yml file into composer.json format. It will use those exact filenames of your current working directory.

Warning: If you already have a composer.json file, it will overwrite it.

## Installation

    $ curl -s http://getcomposer.org/installer | php
    $ php composer.phar install

## Usage

To convert from yaml to json, run:

    $ bin/composer-yaml

To convert from json to yaml, run:

    $ bin/composer-yaml --reverse
