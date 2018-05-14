<?php
/*
Completely serious remote PHP version of the Cocoa-Biscuit Cake with Marshmallow-Cheese Creme recipe.
Author: Alice Peters
Website: https://alicepeters.de/
*/
$recipe = 'https://raw.githubusercontent.com/Parou/Cocoa-Biscuit-Cake-with-Marshmallow-Cheese-Creme/master/html/basic-recipe.html';
echo file_get_contents($recipe);