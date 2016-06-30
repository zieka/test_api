defmodule TestApi.Item do
  use TestApi.Web, :model

  schema "items" do
    field :name, :string
    field :description, :string
    field :category, :string
    field :price, :float, default 0.00
    field :ingredients, :string

    timestamps
  end

  @required_fields ~w(name description category price)
  @optional_fields ~w(ingredients)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
