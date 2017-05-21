
Computing in the Department of Statistics at UConn.

* [Cluster](#cluster)
    * [Links](#links)
    * [Quick start](#quick-start)
    * [Developer tools](#developer-tools)
* [Miscellany](#miscellany)
    * [Off-campus network access](#off-campus-network-access)
    * [Linux workstations](#linux-workstations)
    * [Command-line access to UConn SFTP](#command-line-access-to-uconn-sftp)

# Other resources

* The Department [website](http://stat.uconn.edu) has additional
  information about the cluster and computing resources in the
  department.
* [Wenjie Wang](https://github.com/wenjie2wang) has made some
  [examples for the cluster](https://github.com/wenjie2wang/cluster-examples).
* [Henry Linder](https://github.com/mhlinder) has made some
  useful [default documents](https://github.com/mhlinder/defaults),
  including Rmarkdown templates and a boilerplate conference website.


# Cluster

The subdirectory `cluster/` contains resources related to the
Statistics Department's Beowulf compute cluster. The cluster is
maintained by the Physics Department at UConn.

Purchase of the cluster and related software was partially supported
by NSF Scientific Computing Research Environments for the Mathematical
Sciences (SCREMS) Program grant 0723557 to M.H. Chen, Z. Chi (PI),
D. Dey and O. Harel.

## Links

* [Basic cluster load summary](http://gryphn.phys.uconn.edu/cgi-bin/uconn_stat.cgi)
* [Comprehensive load summary](https://grendl.phys.uconn.edu/ganglia/)
* [Wiki](http://gryphn.phys.uconn.edu/statswiki/index.php/Main_Page)
* [Department webpage](http://stat.uconn.edu/cluster/) about the cluster
* [HTCondor](https://research.cs.wisc.edu/htcondor/) distributed
  computing scheduling software used on the cluster

## Quick start

The subdirectory `cluster/example/` contains a fully-functional
example compute job. `notes.pdf` contains notes and resources about
general use of, and access to, the cluster.

## Developer tools

If you require access to a more recent version of `gcc` (e.g., for the
package RcppArmadillo), it may be necessary to run `scl enable
devtoolset-3 bash` prior to compiling.

# Miscellany

## Off-campus network access

Some computing services at UConn are only available from on the UConn
campus, including the Statistics cluster and University-hosted SFTP
web storage.

To access the University's network from off-site, University
affiliates can:

* Use the
  [VPN](http://remoteaccess.uconn.edu/vpn-overview/connect-via-vpn-client-2/) to
  log in with a NetID;
* Use the University's [Skybox](http://skybox.uconn.edu/) system;

Members of the Department of Statistics may also SSH into the research
lab Linux workstations.

## Linux workstations

The research lab contains several Linux workstations that are
available for use by members of the Department of Statistics. The
workstations provide shell access to a Debian-based scientific
computing environment, and are accessible via SSH from off-campus.

Contact Professor Yan for access and policies.

## Command-line access to UConn SFTP

To access UConn-hosted SFTP storage, first set the environment
variables `LFTP_USER`, `LFTP_PASSWORD` appropriately. Then, copy all
files in the local directory `/local/path/` to the remote directory
`/remote/path/` with `lftp`, e.g.,

```
$ lftp -e "mirror -Rv /local/path /remote/path; quit;" sftp://host:22 -u $LFTP_USER,$LFTP_PASSWORD
```

For UConn SFTP servers, `host` is something like
`name.uconn.edu`. Some UConn services are exclusively available from
the UConn network. The
University's
 allows
users to log onto the campus network. Members of the Department of
Statistics can also

