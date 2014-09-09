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
