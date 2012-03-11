<?php

require __DIR__.'/vendor/.composer/autoload.php';

use Symfony\Component\Yaml\Yaml;
use Composer\Json\JsonFile;

$data = Yaml::parse('composer.yml');

$json = JsonFile::encode($data)."\n";
file_put_contents('composer.json', $json);
