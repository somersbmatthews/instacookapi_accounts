# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :instacookapi_accounts,
  ecto_repos: [InstacookapiAccounts.Repo]

# Configures the endpoint
config :instacookapi_accounts, InstacookapiAccountsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aLkDpV8R4Ep/89J+Rmnmdvu4CDaeCrmFc+rH2VWH5UM0NOcG/0v5r/fqvqbj8J5F",
  render_errors: [view: InstacookapiAccountsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: InstacookapiAccounts.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
