# composer-yaml

This project allows you to convert a composer.yml file into composer.json
format. It will use those exact filenames of your current working directory.

Warning: If you already have a composer.json file, it will overwrite it.

## Installation

    $ curl -s http://getcomposer.org/installer | php
    $ php composer.phar install

## Build Phar package

    $ curl -s http://box-project.org/installer.php | php
    $ php box.phar build

## Usage

To convert from yaml to json, run:

    $ bin/composer-yaml convert

To convert from json to yaml, run:

    $ bin/composer-yaml convert composer.json composer.yml

Alternatively, you can use the phar package to execute the same command using

    $ php composer-yaml.phar [command]
