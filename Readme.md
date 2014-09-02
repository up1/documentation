# Codeship Documentation
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
