<?php
$enable = array(
  'site_frontpage' => 'node',
  'site_slogan' => "Adonis: the prettiest Drupal that I can build."
);
foreach ($enable as $var => $setting) {
  if (!is_numeric($var)) {
    // set the site variables.
    variable_set($var, $setting);
  }
}
