# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rumbl,
  ecto_repos: [Rumbl.Repo]

# Configures the endpoint
config :rumbl, RumblWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EaoNDKtfS1LlBfMB3iaE7NbFEmqrtQ7Jc1E8uyvpeWNjh6GAcnyBCpUzf7IB0I4Z",
  render_errors: [view: RumblWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rumbl.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "r+FpxfrV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
