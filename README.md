# eventpal – quick local Drupal setup

> Note: This thing is under Development!

## What?

This is a version controlled [Drupal 7](http://www.drupal.org) installation profile that can be installed on your local OSX Machine.

## Why?

Because boring and repeating tasks should be handled by computers. No need to manually download stuff, install modules and fiddle with permissions – just get a coffee and pick up your keys when the script has run. You can even clone the git repo and add your own set of modules, themes etc. So you always have an up to date package that helps you get a customized drupal site up and running in 3 Minutes.

## How?

Using [drush](http://www.drush.org/), [XAMPP](https://www.apachefriends.org/index.html) and the command line terminal. (See *Preparations* for detailed Info)

Assuming you already have XAMPP and drush setup and running:

1. Create a new directory for the site in your local *Sites* folder
2. Copy *eventpal.build*, *install.sh* and *install-example.config* in that folder
3. Rename *install-example.config* to *install.config* and edit the settings inside this file to match your system environment.
4. cd to the Site directory (for exammple `cd Sites/sitename`)
5. run the command `$ sh install.sh`
6. You will be asked to enter some basic credentials, keep your MySQL root username and password ready.
7. The install script now creates a new MySQL user, Database, downloads latest Drupal core, builds an installation profile from this repo, downloads modules and translations, sets up basic content types and roles, enables a starter theme and logs you into the site. 
8. Enjoy!

> Disclaimer: Use this at your own risk. Running shell scripts can potentially do some serious damage to your system.
> Take the time and read through the install.sh file to see what it does exactly.



## Preparations

### Install XAMPP
XAMPP is a program that installs an apache server, MySQL Server and FTP Server in easy to maintain package on your system. So you can do all of your development on your local machine.

1. Install [XAMPP](https://www.apachefriends.org/index.html) on your local machine
2. Make XAMPP a bit more secure, so only you can access its databases
 
  in Terminal type:
  `$ sudo /Applications/XAMPP/xamppfiles/xampp security`
  and follow the instructions in the command line prompt

3. You might want to change the default XAMPP *htdocs* dir to your *sites* directory:

  Open *httpd.conf* and change 
 
 ```
  DocumentRoot "/Applications/XAMPP/xamppfiles/htdocs"
  <Directory "/Applications/XAMPP/xamppfiles/htdocs">
 ```
 
  to
 
 ```
  DocumentRoot "/Users/{USERNAME}/Sites"
  <Directory "/Users/{USERNAME}/Sites">
  ```
 
  *replacing {USERNAME} with your user*
 
  Copy folder *XAMPP/htdocs/xampp* to your *Sites* Folder so you can still access ist content.
  
  Typing *localhost* in your browser should now list all directories inside your *Sites* folder
  
  You might want to add Xampp's Apache user to your groups by
  
  ```
  sudo dseditgroup -o edit -a {USERNAME} -t user daemon
  sudo dseditgroup -o edit -a daemon -t user staff
```

---

### Install Drush
Drush is he swiss army knife of Drupal development. Almost any administrative task can be done without even touching a browser window. If you're still clicking your way through Drupals' backend, take some time and have a look at it. You will never want to go back! 

1. First install Composer globally. Open terminal and type:

 ```
$ curl -sS https://getcomposer.org/installer | php
$ mv composer.phar /usr/local/bin/composer
```

2. Now you need to tell terminal, where to look for the composer binaries.
	To do this, navigate to your root folder: 
	
	`$ cd` and enter `$ sudo nano .bash_profile`

	This file tells terminal which binaries to use for the commands you enter.

	paste following line inside the file
	
	`export PATH="$HOME/.composer/vendor/bin:$PATH"`
	
	enter *Ctrl O* and Enter to save the file and *Ctrl X* to quit the editor.

 Restart terminal to be sure the file takes effect.



3. Now you can use Composer to intall drush:

 ```
$ composer global require drush/drush:7.*
```

 If you want, you can always update compaser and drush by entering

 ```
$ composer global update
```

4. To get Drush up and running properly, you need to tell it which *php* and *mysql* binaries to use. These should be the ones that ship with XAMPP, because the ones used per default don't work in every case.

 To do this, open *.bash_profile once again  

 `$ sudo nano .bash_profile`

 and paste the following lines inside the file:


 ```
alias drush="$HOME/.composer/vendor/bin/drush"
alias php="/Applications/XAMPP/xamppfiles/bin/php"
alias mysql="/Applications/XAMPP/xamppfiles/bin/mysql"
PATH=/usr/local/bin:$PATH
PATH=$HOME/.composer/vendor/bin:$PATH
PATH=/Applications/XAMPP/xamppfiles/bin:$PATH
export DRUSH_PHP="/Applications/XAMPP/xamppfiles/bin/php"
export PATH
```
 
 Doing this simply adds the path to the XAMPP binaries to the $PATH variable and tells terminal which binaries to use if you execute drush, php and mysql commands from the console.

 enter *Ctrl O* and Enter to save the file and *Ctrl X* to quit the editor.

 Restart terminal to be sure the file takes effect.

5. Tweaking

 type `drush version` to see if all works fine.
 
 You might need to adjust ownership of drush by executing `sudo chown -R $USER ~/.drush`


---

## Make it yours

You definately will want to change some of the settings of this thing to suit your needs.
Start by cloning this repo and make changes to the following files:

*eventpal.make* This is the makefile that tells the installer, which modules and themes to include

*eventpal.info* This is the file that tells the installer, which modules and themes to enable.

*eventpal.info* This file sets up some basic drupal setings like user roles and content types.

*themes/evental* This is a minimal theme based on *basic* theme, making use of [SASS](http://sass-lang.com/) and  [Bourbon Neat](http://neat.bourbon.io/)

*content/* You can drop html files in here that will get imported as nodes.




 
