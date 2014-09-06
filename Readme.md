# Codeship Documentation

[ ![Codeship Status for codeship/documentation](https://codeship.io/projects/59a737f0-1648-0132-c4e7-72c6c37b1f6e/status)](https://codeship.io/projects/33837)

## Setup & Updates
### Building (locally)

Clone the repository, install needed gems and run Jekyll ;)

```bash
git clone git@github.com:codeship/documentation.git
cd documentation
bundle install
bundle exec guard
```

You can then access the site at http://localhost:4000

On a server system, you would exclude the _:development_ & _:test_ groups, but include the _deployment_ flag.

```bash
bundle install --deployment --without development test
```

### Updating

E.g. to a new version of Jekyll or other dependencies.

```bash
bundle update
git add Gemfile Gemfile.lock
git commit
```

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
