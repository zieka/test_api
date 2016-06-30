defmodule TestApi.ItemTest do
  use TestApi.ModelCase

  alias TestApi.Item

  @valid_attrs %{category: "some content", description: "some content", ingredients: "some content", name: "some content", price: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Item.changeset(%Item{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Item.changeset(%Item{}, @invalid_attrs)
    refute changeset.valid?
  end
end
