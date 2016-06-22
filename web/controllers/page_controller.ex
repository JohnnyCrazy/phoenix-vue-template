defmodule PhoenixVueTemplate.PageController do
  use PhoenixVueTemplate.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
