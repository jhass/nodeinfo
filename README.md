# NodeInfo

NodeInfo is an effort to create a standardized way of exposing metadata
about a server running one of the distributed social networks. The two key
goals are being able to get better insights into the user base of distributed
social networking and the ability to build tools that allow users to choose
the best-fitting software and server for their needs.


## Protocol

Please see the [protocol definition](PROTOCOL.md).

## Support

So far, integration of this standard exists for the following software:

* [BookWyrm](https://joinbookwyrm.com)
* [diaspora*](https://diasporafoundation.org)
* [Friendica](https://friendi.ca)
* [Funkwhale](https://funkwhale.audio)
* [Gancio](https://gancio.org)
* [GangGo](https://ganggo.github.io)
* [Gitea](https://gitea.io)
* [Hubzilla](https://hubzilla.org)
* [Lemmy](https://join-lemmy.org)
* [Litecord](https://gitlab.com/litecord/litecord)
* [Manyfold](https://manyfold.app)
* [Mastodon](https://joinmastodon.org)
* [Mbin](https://github.com/MbinOrg/mbin)
* [Misskey](https://misskey-hub.net)
* [Mobilizon](https://joinmobilizon.org)
* [MoodleNet](https://moodle.net)
* [NeoDB](https://neodb.net)
* [Owncast](https://owncast.online)
* [PeerTube](https://joinpeertube.org)
* [Pixelfed](https://pixelfed.org)
* [Pleroma](https://pleroma.social)
* [Takahē](https://jointakahe.org/)
* [WordPress](https://wordpress.org/plugins/nodeinfo/)
* [WriteFreely](https://writefreely.org/)

## Related projects

* [NodeInfo Metadata Survey](https://codeberg.org/thefederationinfo/nodeinfo_metadata_survey) - A living documentation of the real world usage of the free-form metadata field in the standard.

## License

All content in this repository is under [CC0](http://creativecommons.org/publicdomain/zero/1.0/) unless otherwise noted.

## Contributing

Please open issues and pull requests if you want to suggest a change.
If you open a pull request, you agree for your work to be released under
CC0.

## History

NodeInfo emerged from its predecessor `/statistics.json` that was added
to the diaspora* software to be able to build a statistics collection and
aggregation service, it was quickly supported by Friendica and RedMatrix.
As more and more metadata was added and modifications occurred that would
break backward compatibility, we felt the need to make this a more coordinated
effort.
