# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ap,
  ecto_repos: [Ap.Repo]

# Configures the endpoint
config :ap, Ap.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I/2j03SeEqPL3hre4EreT+sYq3WkH5QdMqfFNI9byFh4CQzFGa1wa/OJtA8cvrp4",
  render_errors: [view: Ap.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ap.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :slugger, separator_char: ?-

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"