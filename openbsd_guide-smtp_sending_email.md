# Sending Mail
Being able to pipe a command to mail can be surprisingly useful! OpenBSD includes the OpenSMTPD mail server in the base system. You can configure your own relay, or use something like GMail.

## First, grab a root shell and make a secrets file to store your mail credentials for the relay
```
# vim /etc/mail/secrets
```

## Add
```
myrelay relay_username:relay_password
```

## Be sure to lock down permissions on that file
```
# chown root:_smtpd secrets
# chmod 640 secrets
```

## Then edit the smtpd config file at /etc/mail/smtpd.conf
```
# vim /etc/mail/smtpd.conf
```

## listen on lo0 table aliases file:/etc/mail/aliases table secrets file:/etc/mail/secrets action "local" mbox alias <aliases> action "relay" relay host
```
smtp+tls://myrelay@mail.example.com:587 auth <secrets> match for local action "local" match for any action "relay"
```

## Restart smtpd for the changes to take effect
```
# rcctl restart smtpd
```

# You should now have a working MTA. Test it out with the mail command. A line containing a single dot terminates the message
```
mail -s "test email from laptop" you@example.com
This is a test message.
.
EOT
```

You can check /var/log/maillog for any errors.
