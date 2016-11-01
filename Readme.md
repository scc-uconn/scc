
Computing in the Statistics Department at UConn.

# Miscellany

* To access UConn-hosted SFTP storage, first set the environment
  variables `LFTP_USER`, `LFTP_PASSWORD` appropriately. Then, copy all
  files in the local directory `html/` to the remote directory
  `/edu.uconn.stat/public_html` with `lftp`, e.g.,

```
$ lftp -e "mirror -Rv html /edu.uconn.stat/public_html; quit;" sftp://ness.stat.uconn.edu:22 -u $LFTP_USER,$LFTP_PASSWORD
```

Some servers are exclusively available from on the UConn network.

