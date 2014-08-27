# Codeship Documentation
## Setup & Updates
### Building (locally)

Clone the repository, install needed gems and run Jekyll ;)

```bash
git clone git@github.com:mlocher/documentation.git
cd documentation
bundle install
bundle exec guard
```

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

## Working On

Main focus point right now are _Category_ and _Tag_ pages. A bunch of "interesting" pages is listed below:

* http://localhost:4000/documentation/databases/postgresql/
* http://localhost:4000/documentation/queues/redis/
* http://localhost:4000/documentation/services/elasticsearch/
