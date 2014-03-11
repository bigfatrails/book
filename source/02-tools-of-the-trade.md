# Tools Of The Trade

The first thing any developer needs to do is get their environment configured and running. This can be difficult for the new user because often the perfect setup other programmers devise has been crafted through years of working with the technology.

It's my goal to get a user started in the right direction with, what I would consider, the most useful setup there is.

## Requirements

It is greatly encouraged that you be using a computer with either Mac OS X or some flavor of Linux. In this book I will cover instructions for OS X Lion and Ubuntu 11.10.

## What About Windows?

Ruby and the Ruby on Rails community cut its teeth in the Unix/Linux tradition and as such those operating systems are better suited for this kind of work. Huge progress is being made however of bringing Windows into the fold but there's still a lot of work to be done.

Many people sucessfully develop on a Windows platform for Ruby on Rails but being a beginner I would highly advise against it at this time. You may find yourself struggling with a problem that isn't your fault but a quirk of simply trying to develop under Windows. For the brave, however, I say go ahead and make it happen. I'm sure you'll learn a ton.

## Web Browsers

When developing a web application it is important to test your work across all the browsers your users might be using. Since we are going to be developing for our own purposes I've chosen Google's Chrome (<https://www.google.com/chrome>) as the browser of choice for development and demonstration. Use whatever browser you are more comfortable with but beware if things deviate from what is shown. I utilize Firefox, Chrome, and Safari often. Internet Explorer is the venereal disease of web development; it is my advice to steer clear of it.

## Programming Editor Or IDE?

If you've done programming in another language you are probably already familiar with a specific programming editor or integrated development environment (IDE). Rails is editor agnostic so you're really free to choose what you want. There are several which are free and some that you'll need to purchase a license for. I will say however, that many good Rails developers have a very strong aversion to using an IDE.

Here's a few good editors to choose from for Rails development:

Vim

:	Vim usage is very strong among many in the Rails community and there are a lot of plugins that can help your Rails development drastically. Vim is cross platform and works on Linux, Unix, Mac OS X, and Windows. Vim is its very own beast though and can take a lot of time before you can be moving at a good pace with it. Those who stick with it are usually wicked-fast at editing files and managing their environment. You can find Vim at http://www.vim.org/ as well as MacVim here: <http://code.google.com/p/macvim/>

Redcar Editor

:	This is a very versatile editor, itself written in Ruby running on Java. It has a great amount of features and is open source. Development is fast moving and new features are added all the time. <http://redcareditor.com>. Redcar runs on Linux, Mac, and Windows.

TextMate

:	This is probably the most well known editor and used by many Rails developers. TextMate has a lot of timesaving features like snippets and Goto file. It costs around $58 and only works with Mac. <http://macromates.com>

SublimeText 2

:	This is the new editor on the block and functions very similar to Redcar and Textmate. It works on Linux, Mac, and Windows. The development is very fast paced with new releases often and has some interesting features of its own. Cost: $59. <http://www.sublimetext.com>

## IDE

There are a few IDEs that are worth mentioning and have a following in the Rails community:

Netbeans

:	An open source IDE with support for Ruby on Rails. Runs on Linux, Mac, and Windows. <http://netbeans.org>

RubyMine

:	A commercial IDE for Rails development that runs on Linux, Mac, or Windows. Cost starts at $69 dollars and can be found at <http://www.jetbrains.com/ruby>

Aptana Studio

:	Cross platform, open source IDE built off of the Eclipse IDE. <http://www.aptana.com>

## Closing Comments Regarding YOUR Editor

Use whatever works best for you. The Rails community by nature is very strongly opinionated and stubborn at times. No matter which of the previous products you choose to do development in you will most likely catch some crap for it. The main thing is to find something that you can use to get stuff done. Screw what people think.

## Managing Your Source Code with Git

This book will utilize and encourage the use of Git (<http://git-scm.com>). Git is a distributed version control system (DVCS). That's basically a really fancy way of saying that it will keep your source code in order and make it easier to work with others on your team. There is a chapter on Git covering the basics. You can get Git for Linux, Mac, and Windows.

## Managing Your Ruby Versions With RVM

The Ruby Version Manager (RVM) can be found at (<http://rvm.beginrescueend.com>) and provides a way to manage multiple Ruby installations for testing and development. Operating systems are notorious for shipping very old versions of Ruby. By using RVM you can have the latest and greatest version(s) of Ruby at your fingertips with very little overhead. The instructions are great for getting it installed and RVM allows you to play with different implementations of Ruby without screwing up your system.

