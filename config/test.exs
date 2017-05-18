use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nanobox_phoenix, NanoBoxPhoenix.Web.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

config :hound,
  driver: "selenium",
  browser: "chrome",
  host: System.get_env("DATA_CHROME_HOST"),
  app_host: System.get_env("HOSTNAME"),
  app_port: 4001

# Configure your database
config :nanobox_phoenix, NanoBoxPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATA_DB_USER"),
  password: System.get_env("DATA_DB_PASS"),
  hostname: System.get_env("DATA_DB_HOST"),
  database: "nanobox_phoenix_test",
  pool: Ecto.Adapters.SQL.Sandbox
