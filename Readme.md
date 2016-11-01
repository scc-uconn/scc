
# Miscellany

* Access university STFP-based web storage with

```
$ lftp -e "mirror -Rv html /edu.uconn.stat/public_html; quit;" sftp://mhl14002@ness.stat.uconn.edu:22
```

Some servers are exclusively available from on the UConn network.

