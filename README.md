# RestApi

## Development

### Locally

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  1. Set the env variable `DATABASE_URL="ecto://user:password@db/rest_api_dev"` (you may change the values)
  1. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  1. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### With Docker

  1. Create and migrate your database with `docker-compose run --rm local sh -c "mix ecto.create && mix ecto.migrate`
  1. Start Phoenix endpoint with `docker-compose run --rm local`

Now you can visit `<container-ip>:<container-public-port>` from your browser.
Or in case your are using [dockito-proxy](https://github.com/dockito/proxy) api.local.dockito.org.


## Test

### Locally

```shell
mix test
```

### With Docker

```shell
docker-compose run --rm test
```
