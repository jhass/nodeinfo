# NodeInfo protocol 2.1

## Definitions

The term "server" in this document refers to software providing
metadata about itself on a host.

The term "client" in this document refers to software wishing to
retrieve metadata about a host.

The term "NodeInfo schema" refers to a schema definition provided in the
schemas subdirectory.

## Discovery

Servers must provide the well-known path `/.well-known/nodeinfo` and
provide a JRD document referencing the supported documents via Link
elements.

Currently the following relations are known:

* `http://nodeinfo.diaspora.software/ns/schema/1.0`. Referencing a JSON document
  following the NodeInfo schema 1.0.
* `http://nodeinfo.diaspora.software/ns/schema/1.1`. Referencing a JSON document
  following the NodeInfo schema 1.1.
* `http://nodeinfo.diaspora.software/ns/schema/2.0`. Referencing a JSON document
  following the NodeInfo schema 2.0.
* `http://nodeinfo.diaspora.software/ns/schema/2.1`. Referencing a JSON document
  following the NodeInfo schema 2.1.

A client should first try the HTTPS protocol and fall back to HTTP on
connection errors or if it can't validate the presented certificate.

A client should follow redirections by the HTTP protocol.

A client should abandon the discovery on a HTTP response status code of
404 or 400 and may mark the host as not supporting the NodeInfo protocol.

A client should retry discovery on server errors as indicated by the
HTTP response status code 500.

A client should follow the link matching the highest schema version it
supports.

Discovery for media types other than `application/json` is left
unspecified.

### Example

The server at `https://example.org` supporting NodeInfo schema up to version
2.1 should provide `https://example.org/.well-known/nodeinfo` with the following
contents:

```json
 {
    "links": [
        {
            "rel": "http://nodeinfo.diaspora.software/ns/schema/2.1",
            "href": "https://example.org/nodeinfo/2.1"
        }
    ]
 }
```


## Retrieval

When accessing the referenced schema document, a client should set the
Accept header to the `application/json` media type.

A server must provide the data at least in this media type. A server should
set a Content-Type of
`application/json; profile="http://nodeinfo.diaspora.software/ns/schema/2.1#"`,
where the value of profile matches the resolution scope of the NodeInfo
schema version that's being returned.

A server may provide additional representations.
