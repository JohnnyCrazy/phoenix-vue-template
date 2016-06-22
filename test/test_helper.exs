ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixVueTemplate.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixVueTemplate.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixVueTemplate.Repo)

