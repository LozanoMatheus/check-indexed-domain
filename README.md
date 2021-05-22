# Check if the domain is indexed

The idea of this project is to check if a domain is getting indexed by Google based on a list of domains. The script will have a `exit code 1` in case the domain is getting indexed.

This is useful in case you have a domain that you don't want to get indexed (e.g. the test environment). You can easly adapt the [googler.sh](./googler.sh) script to send notifications.

This project is using [jarun/googler](https://github.com/jarun/googler) to do the searching on Google. `googler` isn't affiliated to Google in any way.
