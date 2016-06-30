defmodule TestApi.ItemView do
  use TestApi.Web, :view

  def render("index.json", %{items: items}) do
    %{data: render_many(items, TestApi.ItemView, "item.json")}
  end

  def render("show.json", %{item: item}) do
    %{data: render_one(item, TestApi.ItemView, "item.json")}
  end

  def render("item.json", %{item: item}) do
    %{id: item.id,
      name: item.name,
      description: item.description,
      category: item.category,
      price: item.price,
      ingredients: item.ingredients}
  end
end
