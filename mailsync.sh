imapsync --host1 mail.dreamhostdomain.com --port1 993 --user1 me@dreamhostdomain.com --passfile1 pass1.txt --authmech1 PLAIN --ssl1 \
         --host2 imap.gmail.com --user2 me@gmail.com --passfile2 pass2.txt --authmech2 LOGIN --port2 993 --ssl2 \
         --exclude "Sent|Trash|Drafts|Junk" \
    --skipsize

imapsync --host1 mail.dreamhostdomain.com --port1 993 --user1 me@dreamhostdomain.com --passfile1 pass1.txt --authmech1 PLAIN --ssl1 \
         --host2 imap.gmail.com --user2 me@gmail.com --passfile2 pass2.txt --authmech2 LOGIN --port2 993 --ssl2 \
  --folder "INBOX.Sent" --prefix2 '[Gmail]/' --regextrans2 's/Sent$/Sent Mail/' \
  --skipsize