## Modifying the documentation

While some of the markdown files in this repository can be edited by hand, the endpoint documentation should only be re-generated (not edited by hand).  It is generated as follows:

    script/generate-docs

We are using [JSON Schema](http://json-schema.org/) to both generate documentation and to test that the generated documentation is accurate.

To generate the documentation, you will need access to the current WebAdMIT schemata.  To do this, you will need to configure the path to WebAdMIT in `config/webadmit_path.txt`.  For an example of how to do this, see `config/webadmit_path.sample.txt`.

**NOTE:** Pull requests that directly modify endpoint documentation shouldn't be made.  Please modify the schemata instead.

Third parties: we value your feedback; please [make an issue][new_issue] if you find any problems.

  [new_issue]: https://github.com/Liaison-Intl/Liaison-Intl.github.io/issues/new

## Testing

There's not a ton to test since this is just a static site with a few bits of JavaScript, but it can be easy for bad links to find their way in.  Run `script/ci` to check for these.

## References

  * [prmd README](https://github.com/interagent/prmd#prmd-)
  * [prmd schemata](https://github.com/interagent/prmd/blob/master/docs/schemata.md)
  * [Understanding JSON Schema](http://spacetelescope.github.io/understanding-json-schema/)
  * [json-schema.org](http://json-schema.org/)
