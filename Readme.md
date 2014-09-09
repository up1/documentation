# Codeship Documentation

[ ![Codeship Status for codeship/documentation](https://codeship.io/projects/59a737f0-1648-0132-c4e7-72c6c37b1f6e/status)](https://codeship.io/projects/33837)

## Getting Started

### Setup

Clone the repository, install needed gems and run Jekyll ;)

```bash
git clone git@github.com:codeship/documentation.git
cd documentation
bundle install
bundle exec guard
```

You can then access the site at [http://localhost:4000](http://localhost:4000)

### Contributing

1. [Fork it](https://github.com/codeship/documentation/fork)
1. Create your feature branch (```git checkout -b my-new-feature```)
1. Commit your changes (```git commit -am 'Add some feature'```)
1. Push to the branch (```git push origin my-new-feature```)
1. Create a new Pull Request

## Markup

### Table of contents

If you want to include a table of contents, include the following snippet in the markdown file

```md
* include a table of contents
{:toc}
```

### URL Helpers
#### Tags

Generate a URL for the specified tag (_database_ in the example below). This is also available as a filter to be used with a variable (_tag_ in the example).

```
{% tag_url databases %}
{{ tag | tag_url }}
```

generate the output like the following (depending on configuration values)

```
/tags/databases/
```

#### Man Pages

Link to a specific Ubuntu man page. This currently defaults to the Ubuntu Trusty version.

```
{% man_url formatdb %}
```

generates the following output

```
http://manpages.ubuntu.com/manpages/trusty/en/man1/formatdb.1.html
```

## License

(The MIT License)

Copyright © 2011-2014 Railsonfire Limited.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
