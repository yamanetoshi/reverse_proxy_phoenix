import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :workspace, WorkspaceWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "zGM4RPSN93Xt/e7VeIJ9fWmDxGIaVjckUX1B6ix8fI181GIuSNk94D2kb1AsZoow",
  server: false

# In test we don't send emails.
config :workspace, Workspace.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
