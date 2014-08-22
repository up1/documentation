# Codeship Documentation
## Setup & Updates
### Building (locally)

Clone the repository, install needed gems and run Jekyll ;)

```bash
git clone git@github.com:codeship/docs.git
cd docs
bundle install
bundle exec guard
```

On a server system, you would exclude the _:development_ group, but include the _deployment_ flag.

```bash
bundle install --deployment --without development test
```

### Updating (e.g. to a new version of Jekyll)

```bash
bundle update
git add Gemfile Gemfile.lock
git commit
```
