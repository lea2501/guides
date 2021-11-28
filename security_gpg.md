# ASYMMETRIC PASSPHRASE
The folders get first packed into a TAR-GZ archive:
```
$ tar czf files.tar.gz /path/to/my/files
```

## If not already done, you need to create a GPG private/public key-pair first
```
$ gpg --full-generate-key
```
Follow the instructions. The defaults should be sufficiant for a first test. Something like this will appear:

gpg (GnuPG) 2.0.18; Copyright (C) 2011 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) 4096
Requested keysize is 4096 bits
Please specify how long the key should be valid.
         0 = key does not expire
        = key expires in n days
      w = key expires in n weeks
      m = key expires in n months
      y = key expires in n years
Key is valid for? (0)
Key does not expire at all
Is this correct? (y/N) y

GnuPG needs to construct a user ID to identify your key.

Real name: File Encryption Key
Email address: admin@company.org
Comment: File Encryption Key
You selected this USER-ID:
    "File Encryption Key (File Encryption Key) "

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? o

You will be asked for a passphrase to the key. It's highly recommended to use a strong one. It is not needed for encryption of files anyway, so don't be worried about the batch use later.

If everything is done, something like this will appear on your screen:

We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: key FE53C811 marked as ultimately trusted
public and secret key created and signed.

gpg: checking the trustdb
gpg: 3 marginal(s) needed, 1 complete(s) needed, PGP trust model
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
pub   *****/******** 2013-03-19
      Key fingerprint = **** **** **** **** **** **** **** **** **** ****
uid                  File Encryption Key (File Encryption Key)
sub   *****/******** 2013-03-19

List generated encrypted key:
$ gpg --list-secret-keys --keyid-format LONG


## Now you may want export the public keyfile for importing it on other machines
```
$ gpg --armor --output file-enc-pubkey.txt --export 'File Encryption Key'
```

The File Encryption Key is the name I entered during the key generation procedure.

## Now I'm using GnuPG on the newly created archive
```
$ gpg --encrypt --recipient 'File Encryption Key' files.tar.gz
```

You now have a files.tar.gz.gpg file which is encrypted.

## You can decrypt it with the following command (you will be asked for your passphrase)
```
$ gpg --output files.tar.gz --decrypt files.tar.gz.gpg
```

That's the whole magic.

Make sure you back up your key! And never forget your passphrase! If not backed up or forgotten, you have gigabytes of data junk!

# Backup your private key with this command:
```
$ gpg --armor --output file-enc-privkey.asc --export-secret-keys 'File Encryption Key'
```

Advantages

    None of the encrypters needs to know sensitive information about the encryption - encryption is done with the public key. (You can create the key pair on your local workstation and only transfer the public key to your servers)
    No passwords will appear in script files or jobs
    You can have as much as encrypters on any system you want
    If you keep your private key and the passphrase secret, everything is fine and very very hard to compromise
    You can decrypt with the private key on Unix, Windows and Linux platforms using the specific PGP/GPG implementation
    No need for special privileges on encrypting and decrypting systems, no mounting, no containers, no special file systems


# SYMMETRIC PASSPHRASE
If you don't want to encrypt your files with a public/private key pair and use just symmetric encryption with a pass phrase instead, use the following command

```
$ gpg --symmetric --cipher-algo aes256 files.tar.gz
```

or simply
```
$ gpg -c filename.tar.gz
```

You will be asked for your pass phrase. After that an encrypted file named
files.tar.gz.gpg is created, then you can delete the original unencrypted file.

## Decryption
```
$ gpg --decrypt files.tar.gz.gpg > files.tar.gz
```

Or:
```
$ gpg -d filename.tar.gz.gpg
```

Or:
```
$ gpg filename.tar.gz.gpg
```

# Backup and transfer private keys to another computer
## Export keys:
```
$ gpg --export-secret-keys > private_keys.pgp
$ gpg --export > public_keys.pgp
```

## Import keys:
```
$ gpg --import < private_keys.pgp
$ gpg --import < public_keys.pgp
```
