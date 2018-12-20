# NodeInfo

NodeInfo is an effort to create a standardized way of exposing metadata
about a server running one of the distributed social networks. The two key
goals are being able to get better insights into the user base of distributed
social networking and the ability to build tools that allow users to choose
the best fitting software and server for their needs.


## Protocol

Please see the [protocol definition](PROTOCOL.md).

## Support

So far integration of this standard exist for the following softwares:

* [diaspora*](https://diasporafoundation.org)
* [Friendica](https://friendi.ca)
* [Funkwhale](https://funkwhale.audio)
* [GangGo](https://ganggo.github.io)
* [Hubzilla](https://hubzilla.org)
* [PeerTube](https://joinpeertube.org)
* [Pleroma](https://pleroma.social)
* [WordPress](https://wordpress.org/plugins/nodeinfo/)

## License

All content in this repository is under [CC0](http://creativecommons.org/publicdomain/zero/1.0/) unless otherwise noted.

## Contributing

Please open issues and pull requests if you want to suggest a change.
If you open a pull request you agree for your work to be released under
CC0.

## History

NodeInfo emerged from it's predecessor `/statistics.json` that was added
to the diaspora* software to be able to built a statistics collection and
aggregation service, it was quickly supported by Friendica and RedMatrix.
As more and more metadata was added and modifications occurred that would
break backward compatibility, we felt the need to make this a more coordinated
effort.


