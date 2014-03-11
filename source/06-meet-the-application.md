# Meet The Application (And My Opinions)

Finding an application to develop as a beginner can be difficult. Something too hard or complex can kill the learning process and be tedious for the new developer. Something too simple may not provide enough of a challenge to properly learn the framework. Picking something that is both challenging and approachable is rough.^[Thankfully, that is my job and not yours.]

The application we will create during the course of this book is a personal finance manager which we will call **Bankroll** ^[A bankroll is apparently a roll of paper money. I've never had one myself. The term is mainly used by pimps and serial entrepreneurs.]. Hopefully we will be building something that you can use personally ^[Because tracking your finances is fun! /sarcasm] and that is complex enough to give the student a well rounded overview of the framework. The personal finance app will meet the following requirements:

Multiple Users:
:	Users of the application will have a unique account with which to login.

Accounts:
:	Each user can have multiple accounts and users can share accounts.

Transactions:
:	Each account has transactions that record a balance being credited or debited to the account.

Permissions:
:	These will allow a user to restrict what other users may do with their accounts

Receipt Tracking:
:	A user will be able to attach a receipt to a transaction for good record keeping.

Email Notifications:
:	Email can be sent when something is triggered like a new user registration or when an account drops below a certain threshold balance.

API:
:	An application programming interface (API) will be created to allow third party systems to retrieve data from the application. If you don't know what an API is, don't worry, it will be covered.

## The Development Cycle (Life Is Not Linear)

It's common for tutorials and books to cover a topic by giving small projects to do or perhaps a larger project but only working forward in a linear fashion. While this is great and I've learned many things these ways, I want to try a different approach that I feel better reflects how things work in "the real world". ^[Not your parents basement where you hang out with that friend from highschool who spends his days posting enthralling and intelligent rage comics on reddit.]

The real world is about trial and error. Development that requires you go back and revisit old code, fix those things you never quite got around to, and more importantly, applying what you know now to what you did then.

A good programmer will pretty much hate the code they wrote just a few short months ago. Why? If you're doing it right, you'll be growing both in skill and wisdom. You'll learn new or better ways of doing something. You may find that you're using the right tools the wrong way. Either way, you're eventually going to have to go back and refactor ^[Refactoring means going back to make amends for old sins. Or reworking old code.] old code. It's a simple fact of life.

As this book progresses we are going to be doing some things in what is considered "The Wrong Way" ^[Like wearing a brown belt with black shoes. Or wearing those hipster skinny jeans.]. The reason is simple: there is a lot to learn and we have to get started somewhere.

So, don't be surprised if we revisit some of our previous code and rework it. Or delete it. Or whatever. Things change. Nothing is written in stone (certainly not software). Change is a fact of life and I want this book to reflect that.

