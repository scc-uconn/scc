
Computing in the Statistics Department at UConn.

# Miscellany

* To access UConn-hosted SFTP storage, first set the environment
  variables `LFTP_USER`, `LFTP_PASSWORD` appropriately. Then, copy all
  files in the local directory `/local/path/` to the remote directory
  `/remote/path/` with `lftp`, e.g.,

```
$ lftp -e "mirror -Rv /local/path /remote/path; quit;" sftp://host:22 -u $LFTP_USER,$LFTP_PASSWORD
```

For UConn SFTP servers, host is something like `name.uconn.edu`. Note
that some UConn services are exclusively available from the UConn
network.

