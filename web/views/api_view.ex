defmodule PhoenixVueTemplate.ApiView do
  use PhoenixVueTemplate.Web, :view

  def render("index.json", %{error: error}) do
    %{ok: false, error: error}
  end

  def render("index.json", %{data: data}) do
    %{ok: true, data: data}
  end
end
