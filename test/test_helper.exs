ExUnit.start

Mix.Task.run "ecto.create", ~w(-r TestApi.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r TestApi.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(TestApi.Repo)

