# URL

Before we go into much further detail we'll cover the concept and structure of a MongoDB connection URL.

The most basic example of this would be `mongodb://localhost`. This consists of the schema (`mongodb://` which is required in all MongoDB connection URLs) as well as the hostname, in this case, `localhost`.

The hostname can be either an IP address or a full address like `example.com`.

Hostnames can be succeeded by a semicolon `:` and a port. A port is a number between 0 and 66535. By default MongoDB is hosted on 27017 which is used by default.

In the URL you can also add the username and password and authentication database.

`mongodb://u$ern4m3:p455word@example.com:12345/admin`

In this example the hostname is `example.com`. The instance should be hosted at port `12345` and we're authenticating at the username `u$ern4m3` and the password `p455word`. The username and password should be URL percent encoded and the authentication database is `admin`

Last but not least we can specify multiple hosts in the case of a replica set.

`mongodb://username:password@host0.example.com:12345,host1.example.com:54321,host2.example.com:27017/admin`

In this example we're connecting to a replica set of 3 hosts.

- host0.example.com:12345
- host1.example.com:54321
- host2.example.com:27017