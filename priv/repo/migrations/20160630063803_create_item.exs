defmodule TestApi.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :description, :string
      add :category, :string
      add :price, :float
      add :ingredients, :string

      timestamps
    end

  end
end
