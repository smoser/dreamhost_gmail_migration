#!/bin/bash

# put password for 'me@dreamhostdomain.com' in 'me@dreamhostdomain.com.pass'
# put password for gmail in 'gmail.txt'
user="me@dreamhostdomain.com"
DH_DOMAIN="mail.foo.com"
DH_USER="$user"
GMAIL_USER="example@gmail.com"

# prefix gets user@foo for user@foo.com
prefix="${user%.*}/"

common=(
  "--host1=$DH_DOMAIN" --port1=993 --user1="$DH_USER" --passfile1 "$user.pass"
  --authmech1=PLAIN --ssl1
  "--user2=$GMAIL_USER" "--passfile2=gmail.txt" --gmail2
  --authmech2=LOGIN --port2=993 --ssl2
  "--prefix2=$prefix"
  --skipsize
  # --dry # use that to run dry run
)

imapsync "${common[@]}" --exclude 'Trash|Drafts|Junk'
