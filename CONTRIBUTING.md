## Modifying the documentation

While some of the markdown files in this repository can be edited by hand, the endpoint documentation should only be re-generated (not edited by hand).  It is generated as follows:

    script/generate-docs

We are using [JSON Schema](http://json-schema.org/) to both generate documentation and to test that the generated documentation is accurate.

To generate the documentation, you will need access to the current WebAdMIT schemata.  To do this, you will need to configure the path to WebAdMIT in `config/webadmit_path.txt`.  For an example of how to do this, see `config/webadmit_path.sample.txt`.

**NOTE:** Pull requests that directly modify endpoint documentation will be rejected.  However, we value your feedback; please [make an issue][new_issue] instead.

  [new_issue]: https://github.com/Liaison-Intl/Liaison-Intl.github.io/issues/new

## References

  * [prmd README](https://github.com/interagent/prmd#prmd-)
  * [prmd schemata](https://github.com/interagent/prmd/blob/master/docs/schemata.md)
  * [Understanding JSON Schema](http://spacetelescope.github.io/understanding-json-schema/)
  * [json-schema.org](http://json-schema.org/)
