export DH_DOMAIN='mail.dreamhostdomain.com'
export DH_USER='me@dreamhostdomain.com'
export GMAIL_USER='me@gmail.com'

imapsync --host1 $DH_DOMAIN --port1 993 --user1 $DH_USER --passfile1 dreamhost.txt --authmech1 PLAIN --ssl1 \
         --host2 imap.gmail.com --user2 $GMAIL_USER --passfile2 gmail.txt --authmech2 LOGIN --port2 993 --ssl2 \
         --exclude 'Sent|Trash|Drafts|Junk' \
    --skipsize

imapsync --host1 $DH_DOMAIN --port1 993 --user1 $DH_USER --passfile1 dreamhost.txt --authmech1 PLAIN --ssl1 \
         --host2 imap.gmail.com --user2 $GMAIL_USER --passfile2 gmail.txt --authmech2 LOGIN --port2 993 --ssl2 \
  --folder 'INBOX.Sent' --prefix2 '[Gmail]/' --regextrans2 's/Sent$/Sent Mail/' \
  --skipsize