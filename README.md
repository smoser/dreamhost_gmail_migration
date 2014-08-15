# DreamHost to Gmail Email Migration

A few simple commands to migrate emails from DreamHost to Gmail.

## Installation

You'll need to have [imapsync](http://imapsync.lamiral.info/) installed to run these commands.

On OS X with [Homebrew](http://brew.sh/):

```bash
$ brew install imapsync
```

Installation on Linux is beyond the scope of this document.

## Usage

Clone this repo to your computer:

```bash
$ git clone git@github.com:gilest/dreamhost_gmail_migration.git
```

Change directories into the repo:

```bash
$ cd dreamhost_gmail_migration
```

Edit the variables at the top of `mailsync.sh` to match your email accounts.

Edit `dreamhost.txt` and `gmail.txt` to match your password for the corresponding account.

Finally, grant execute permissions to the shell script, and run it:

```bash
$ chmod +x mailsync.sh && ./mailsync.sh
```

## Credit

Mark Seagrief – [Moving to Google Apps with imapsync](http://seagrief.co.uk/2010/12/moving-to-google-apps-with-imapsync/)