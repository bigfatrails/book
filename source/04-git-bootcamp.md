# Git Bootcamp

The purpose of this book is to give a good grounding in web development using Rails and more importantly, getting started in the right direction.

While this chapter really has nothing to do with development in Rails it does have a lot to do with programming etiquette. Every programmer should use source code management. Every programmer. No excuses.

It's good for you (the programmer), your team, and anybody else who has to come behind you when leave because your on-the-side startup "pivoted" and "took off" while reaching your "core market demographic".

## What is Git?

Git is a source code management system for keeping track of changes in your code base. As you develop your application you will find yourself in a good place to make a backup copy "just in case" or, maybe you are planning on doing a big change that you might need to reverse or undo.

Git allows you to take snapshots of your code at any specific point and provide a comment or detailed information about what's going on. You can then use Git to roll back or move forward among these snapshots.

Git also has the ability to tag a particular snapshot or commit so you can always refer to it. Developers use tags to mark a specific version or release of the software they are working on.

One very important aspect of Git is the ability to branch a codebase and make whatever changes you wish without disturbing the master copy of the code. If you like the work you've done in a branch you can simply merge back into the main repo. If you don't like it there's nothing stopping you from deleting it for good.

Branches allow a developer to work on a new version of their app without effecting the current working version. You can be working in your latest whiz-bang feature and switch back to the master branch and quickly fix a bug.

The mighty feature of Git is being able to work offline. Previously, older SCM's were only able to make a commit if you could connect to the server it was on and create your changes. In Git, you have a fully working copy of the repository that you can take with you anywhere you want to go. You can continue to make commits and move forward with your development. When you get a chance to connect to your server it will simply push your commits if there are no current changes to the repository.

## Configure Git

The first thing a person needs to do is get Git configured for use. If you haven't already done so please install Git as noted in the previous chapter.

Git likes to have a name and email address associated with every commit. You can set these easily with the following:

```
	git config --global user.name "Your Name"
	git config --global user.email you@example.com
	git config --global color.ui auto
```

Here we simply tell Git that the user.name should be whatever name is and user.email should be whatever email you want associated with the work you're doing.

In Linux/Mac this will create a file in your home directory called .gitconfig. This file is what Git uses to keep settings.

The third line in the previous command simply turns on console coloring if it's available. This is a nice feature to have as it makes the output of Git easy to quickly parse for what you're looking for.

## Creating

Once you have things configured you need to create or clone a Git repo to work with. In this chapter we'll simply create a repo so you can get the basics of Git.

Starting with creating a simple directory:

```
	mkdir mydirectory
```

Then, we'll move into the directory and initialize a basic Git repository:

```
	cd mydirectory
	git init
```

You now have a fully working Git repo. From here we can then start creating files and directories. This would be the source code to your application. For now, create three files in whatever editor you want to called `file1.txt`, `file2.txt`, and `file3.txt`. Now we need to make Git aware that it should track changes in these files. To see how your Git index looks type the following:

```
	git status
```

The output should look something like this:

```
	# On branch master
	#
	# Initial commit
	#
	# Untracked files:
	#   (use "git add <file>..." to include in what will be committed)
	#
	#	file1.txt
	#	file2.txt
	#	file3.txt
	nothing added to commit but untracked files present (use "git add" to track)
```

If you've enabled color you should see the files listed in red. This is Git's way of telling you they either needed to be added to the repo or have changed since they were last committed.

To add these file so Git will track them simply type:

```
	git add .
```

This is a quick way of telling Git to add any untracked or changed files in this current directory (which is what the . means).

Now your git status about should be show the following files in green:

```
	# On branch master
	#
	# Initial commit
	#
	# Changes to be committed:
	#   (use "git rm --cached <file>..." to unstage)
	#
	#	new file:   file1.txt
	#	new file:   file2.txt
	#	new file:   file3.txt
	#
```

This shows that Git is now ready to commit these changes to the repository. So, let's get this committed and tracked:

```
	git commit -m "Added three new files"
```

You should see something similar to this afterward:

```
	[master (root-commit) 9ad0290] Added three new files
	 0 files changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 file1.txt
	 create mode 100644 file2.txt
	 create mode 100644 file3.txt
```

What this will do is add all of the staged or "green" files to the repository with a commit message that says "Added three new files". You now have files that are being tracked in Git. To see a log of all the past commits and their messages simply type:

```
	git log
```

You'll see something like this: 

```
	commit 9ad0290f44f3601554ab08f717f096f50d95b01d
	Author: Mitch Guthrie <mitch@mentalbrew.com>
	Date:   Sat Jul 30 22:41:13 2011 -0700

	    Added three new files
```

So far so good.

## Making More Changes

We now have our very first commit in a git repository. You should be aware that this is local on your machine. It isn't stored or hosted anywhere else. Then entire functionality of this new git repo is stored in the root of the project directory under `.git/`. Do NOT delete this directory as you will then essentially destroy all your past commits and repository information.

Open `file2.txt` and enter some text then save it. If you go back to your terminal and type:

```
	git status
```

You should see the following output:

```
	# On branch master
	# Changes not staged for commit:
	#   (use "git add <file>..." to update what will be committed)
	#   (use "git checkout -- <file>..." to discard changes in working directory)
	#
	#	modified:   file2.txt
	#
	no changes added to commit (use "git add" and/or "git commit -a")
```

What this is telling you is that git has recognized that the contents of `file2.txt` have been modified. If you wish to keep this change you can simply add the file to the index, and then commit like so:

```
	git add file2.txt
```

```
	git commit -m "Updated file2.txt"
```

Now when you run `git log` to see past commits you should see something like this:

```
	commit 166962bfe60acdbf9a63db4ecf757ddd4cf419bd
	Author: Mitch Guthrie <mitch@mentalbrew.com>
	Date:   Mon Feb 20 09:08:38 2012 -0800

	    Updated file2.txt

	commit daeb73cd46f93b468f805e361c018f39f89d7381
	Author: Mitch Guthrie <mitch@mentalbrew.com>
	Date:   Mon Feb 20 08:54:51 2012 -0800

	    Added three new files
```

Now you can track your past commits using `git log` and can always checkout old versions of your code.

## Stepping Back In Time

If you wish to see an old version of your code you can get the commit hash and tell git you just want to see that version.

When you run `git log` and see past commits you should be aware that your hashes will be different than mine. If you create to repositories that are exactly the same change for change, and commit for commit, those hashes will be different as well. The theoretical realities aside, EVERY commit in a git repo will be unique and most likely completely different from another repo. If you are wondering why my output looks different than yours this is why.

To checkout a specific commit in your history simply type:

```
	git checkout <commit>
```

Where `#commit` is the first few letters of the commit hash. You don't need to type the whole thing.

To get back to your most current version you can always type:

```
	git checkout master
```

Master is the default most recent version of your repository.

## Reversing Changes

Let's say you are working on a big change and about half way through it you realize it's not going to work and you would like to revert back to the original version you were at before starting. 

You can get a list of the changed files using `git status` and then to restore them to their previous versions simply type:

```
	git checkout <filename>
```

This will restore that file to its previous version.

## Branching

Rather than having to undo the changes on multiple files it is easier if you branch before doing work on a big feature then merge it back into master when everything is how you want it.

Branching, basically takes a copy of the repository at a certain commit and allows you to work independently on it until you either decide to merge it back into master or simply delete the entire thing.

First you create a branch, then check it out to work on it.

```
	git branch awesome
	git checkout awesome
```

Or you can shortcut the process by branching and checking out at the same time:

```
	git checkout -b awesome
```

Now you can continue working that specific branch without effecting the rest of your repository. You can always find out what branch you are on by viewing `git status`:

```
	git status
```

```
	# On branch awesome
	nothing to commit (working directory clean)
```

Be aware that any new files you create, any files you change or remove are only applicable to this branch and not to anything else outside it including `master`.
## Merging

If you have all of your changes commit in your new branch and you wish to change back to master you can type:

```
	git checkout master
```

Now, if you wish to see what branches you have created:

```
	git branch
```

Then, if you wish to update your master branch with all of the work you did in the `awesome` branch you can type:

```
	git merge awesome
```

Make sure you are in the branch you want your changes to go to first. So, if we want our `awesome` branch merged into `master` we need to be in `master`. If you are looking to pull in the most recent changes in `master` into your local branch `awesome` you will need to be in the `awesome` branch first.

## Tagging

Sometimes, it's beneficial to mark a specific version of the repo with a name. In git this is referred to as a tag and is usually created by developers to mark a specific version of the code base. A tag, really is nothing more than giving a name to a specific commit. If the current version of your master copy was something that you wish to be marked as 'v1.0' then you can do this:

```
	git tag -a v1.0 -m 'version 1.0'
```

If you wish to ever checkout out this version of the repo specify that tag name like so:

```
	git checkout v1.0
```

## Cloning

In, git, when we make another complete copy of another repository it is called cloning. To clone another repo all you have to do is:

```
	git clone <path to repository>
```

You now have your very own working copy of the repository.

## Workflow

Like any development tool, one of the first things you need to do is figure out a workflow that assists in what you need to be doing. I'll quickly walk through a very simple and easy to use workflow for git. I'm assuming you are the only person really utilizing this repository. It should work for groups just the same but often, when more players are involved, you tweak the workflow a bit.

The basic workflow I use when developing is the following:

1. **Create the repo** - Obviously this comes first. Create the repo. Get everything in it you need to work on your project and create your first commit.
2. **Skeleton** - Sometimes it helps to simply get a skeleton of your app going without worrying about the workflow just yet. Make sure things are at a good base before you start diving in to create features. Once you have this solid foundation, commit this and move on to the next step.
3. **Branch for a feature or bug** - Create a branch from master. From here on out master will be your stable version of the code. Everything else you do should be done in a branch then merged into master when it's solid.
4. **Merge with master** - Once your branch is stable, switch to `master` and merge it back in. If you have changes that were added to master after you branched make sure you pull those FROM `master` TO your branch first. That way if there is an issue you can solve it there and not on the main `master`.
5. **Delete old branch** - If you have merged a branch into `master` or decided you don't need to keep the code, just delete the branch. `git branch -d <branchname>` should do the trick.

These are basic steps. You can get a lot more tricky with things if you want but this serves a basic workflow that should save your bacon ^[Or perhaps something that's more kosher] if necessary.

## Wrapping Up

There's a lot to Git. Certainly more than I can cover in a brief overview. I would highly encourage you to learn more about Git as you're literally putting all your eggs in its basket ^[This is a disturbing image for some reason]. The following are a list of resources I highly encourage the new Git user to study:

* Pro Git <http://progit.org/>: Basically the cat's meow of Git books. Easy to read and Scott Chacon has provided many pretty little graphs and what not.
* The Git Community Book <http://book.git-scm.com/>: A great resource provided by the community, for the community.
* Git Immersion <http://gitimmersion.com/>: Pretty much exactly like it sounds.

