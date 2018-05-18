<?php
/*
Completely serious remote PHP version of the Cocoa-Biscuit Cake with Marshmallow-Cheese Creme recipe.
Author: Alice Peters
Website: https://alicepeters.de/
*/
if(ini_get("allow_url_fopen") != 1) {
    ini_set("allow_url_fopen", 1);
} 

$recipe = 'https://raw.githubusercontent.com/Parou/Cocoa-Biscuit-Cake-with-Marshmallow-Cheese-Creme/master/html/basic-recipe.html';
echo file_get_contents($recipe);
