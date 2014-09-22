# Adonis

##Requirements

------------
* [virtualBox](https://www.virtualbox.org/wiki/Downloads) >= 4.3.x
* [vagrant](http://downloads.vagrantup.com/) >= 2.x.x

## Getting Started

------------------

1. From inside the project root, run `vagrant up` 
2. You will be prompted for the administration password on your host machine. Obey.
3. Open your hosts file on your host (e.g., `sudo vim /etc/hosts`), and add the following line:
> 10.33.36.12 adonis.dev

7. Visit `adonis.dev` in your browser of choice.

##What just happened?

------------------

Adonis just built itself inside a wheezy virtualbox. The project itself is being shared inside the project directory between the host (your mac OS) and the Virtualbox (a wheezy virtualbox). This means that you can work from your host but in order to bootstrap Drupal you need to be inside the VB.

##How do I work on this?

------------------

1. From inside the project root `vagrant ssh`
2. Navigate to `/var/www/sites/adonis.dev`

There is your project. Run `drush` commands from the `www` directory just like you would without a VB.

##Example of Behat and PHPSpec

------------------

1. From inside VB at the project (see above), run `bin/behat.` The acceptance test will run and fail.
2. The spec to satisfy this acceptance test was built with PHPSpec. You can see the spec inside the `spec` director. The class that resulted from the spec is in `src`. Run the spec with `bin/phpspec run`.
3. Now enable `adonis_title_validator`. Run behat again.
4. Check out the module. It invokes the class we built with spec.

##Rebuilding the site without rebuilding the VB

------------------

You **do not** need to rebuild the entire virtual environment everytime you want to check you work by rebuilding (and for the love of science, **check your work**). That would be crazy.

The project build is made explicit inside `build/drush-build.sh`. To rebuild, just point to that script from the project root (inside the VB, of course).

##Closing down: halting vs. destroying

------------------

Most days, when you leave, running `vagrant halt` will suffice.
