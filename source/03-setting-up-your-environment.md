# Setting Up Your Environment

This chapter covers what it takes to get up and running in either Mac OS Lion or Ubuntu 11.10. Feel free to skip to the relevant section for your operating system.

## Ubuntu

I'm going to be using the latest version of Ubuntu at the time of this writing (11.10) to get started on our way to Rails development nirvana. Much of this will also work for previous versions of Ubuntu.

To get started the first thing you will need to do is get Ubuntu installed. There is a lot of documentation out there on how to do this so I won't cover it here. If you find you run into problems hit the interwebs and see if the solution is out there. If you cannot seem to get Ubuntu installed correctly there's a good chance you may have a socially awkward cousin or something that can do it for you.

### Get Git

Git is a source code management tool for keeping track of changes in your code base over time and makes collaborating with others an actual enjoyable process. Git is required for RVM so lets install it now. I will go over git later but for now to install Git in Ubuntu just type:

```
	sudo apt-get install git
```

### Ruby Version Manager (RVM)

```
	sudo apt-get install curl
```

```
	bash -s stable < <(curl -s \
		https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
```

```
	echo 'export rvm_pretty_print_flag=1' >> ~/.rvmrc
```

```	
	source ~/.profile
```

Running `rvm requirements` on your machine should tell you what system packages you should install that are necessary for RVM to build Ruby.

The following is what is suggested for Ubuntu 11.10:

```
	sudo apt-get install build-essential openssl libreadline6 libreadline6-dev \
	curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 \ 
	libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev \
	automake libtool bison subversion
```

RVM should now be installed and configured correctly. To verify simply type:

```
	rvm list
```

It should list currently installed Ruby versions which at this moment should be nothing. Let's get that installed.

In this book we will be using Ruby 1.9.3. Currently the Ruby community is making a transition from Ruby 1.8.7 which is most likely the default if you were to install this through your system package manager. Since, I assume you will be creating green-field apps ^[A "green-field" app is something you write from scratch and have full control over its development. Unlike and existing app where you have to deal with legacy code.] from here out you might as well start off on the latest and greatest.

To install Ruby 1.9.3 run the following:

```
	rvm install 1.9.3
```

RVM will then download the latest version of the Ruby 1.9.3 source code, extract, configure, and compile it for installation. The compilation process may take awhile.

Once RVM is done you should be able to type:

```
	rvm list
```

This will give a list of all of your installed ruby versions. Since you have a brand new install it should look like this:

```
	rvm rubies
	    ruby-1.9.3-p0 [ x86_64 ]
```

Your version and the bracketed platform numbers may be different but what's important is that you have ruby-1.9.3 installed.

To tell RVM you would like to use ruby-1.9.3 just type:

```
	rvm use 1.9.3
```

Now if you do an 'rvm list' there will be an arrow pointing to ruby-1.9.3 letting you know which ruby you're running at the moment. To test and make sure you have the correct ruby type:

```
	ruby -v
```

This will run the ruby intrepreter and give you it's version number. You are now good to go.

To make sure this will stay your default ruby intrepreter you can type:

```
	rvm 1.9.3 --default
```

Now, when working in a new terminal RVM will always default to ruby-1.9.3.

## Mac OS X

To get started developing on Mac OS X one of the best tools for installing needed software is Homebrew (<http://mxcl.github.com/homebrew/>). Homebrew uses recipes that it can use to download, compile, and install software. These recipes can be created easily and many people have contributed. This makes a decent alternative to what Ubuntu has in apt-get.

Homebrew requires Xcode to work properly for compiling the packages from recipes. While there are currently other projects out there that can compile some recipes require Xcode. You can obtain Xcode through the App Store.

Once you have Xcode installed you can then run the command to install and configure Homebrew:

```
	/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
```

You will be asked questions during the install. Once everything is complete you should be able to use homebrew to install needed libraries and packages.

### Install Git

```
	brew install git
```


### Ruby Version Manager (RVM)

```
	brew install curl
```

```
	bash -s stable < <(curl -s \ 
		https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
```

```
	echo 'export rvm_pretty_print_flag=1' >> ~/.rvmrc
```

```
	source ~/.profile
```

Running `rvm requirements` on your machine should tell you what system packages you should install that are necessary for RVM to build Ruby.

Currently RVM states that if you wish to install different versions of Ruby other than 1.9.3 you need to have Xcode 4.1. Since this book is only going to require 1.9.3 you should have installed Xcode 4.2.

RVM should now be installed and configured correctly. To verify simply type:

```
	rvm list
```

It should list currently installed Ruby versions which at this moment should be nothing. Let's get that installed.

In this book we will be using Ruby 1.9.3. Currently the Ruby community is making a transition from Ruby 1.8.7 which is most likely the default if you were to install this through your system package manager. Since, I assume you will be creating green-field apps [#fn1]_ from here out you might as well start off on the latest and greatest.

To install Ruby 1.9.3 run the following:

```
	rvm install 1.9.3
```

RVM will then download the latest version of the Ruby 1.9.3 source code, extract, configure, and compile it for installation. The compilation process may take awhile.

Once RVM is done you should be able to type:

```
	rvm list
```

This will give a list of all of your installed ruby versions. Since you have a brand new install it should look like this:

```
	rvm rubies
	    ruby-1.9.3-p0 [ x86_64 ]
```

Your version and the bracketed platform numbers may be different but what's important is that you have ruby-1.9.3 installed.

To tell RVM you would like to use ruby-1.9.3 just type:

```
	rvm use 1.9.3
```

Now if you do an 'rvm list' there will be an arrow pointing to ruby-1.9.3 letting you know which ruby you're running at the moment. To test and make sure you have the correct ruby type:

```
	ruby -v
```

This will run the ruby intrepreter and give you it's version number. You are now good to go.

To make sure this will stay your default ruby intrepreter you can type:

```
	rvm 1.9.3 --default
```

Now, when working in a new terminal RVM will always default to ruby-1.9.3.

