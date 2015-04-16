#!/usr/bin/env bash
set -e

path=$(dirname "$0")

base=$PWD/$path/..

drush_flags='-y'
# Pass all arguments to drush
while [ $# -gt 0 ]; do
  drush_flags="$drush_flags $1"
  shift
done
drush="$base/bin/drush.php $drush_flags"

pushd $base/www
$drush si minimal --site-name="Adonis" --account-pass=admin -y
$drush dis -y overlay shortcuts comments
$drush en -y admin_menu module_filter features strongarm
