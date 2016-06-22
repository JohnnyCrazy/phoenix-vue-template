defmodule PhoenixVueTemplate.ApiController do
  use PhoenixVueTemplate.Web, :controller

  def foo(conn, _params) do
    :timer.sleep(1000);
    render conn, "index.json", data: "This is some data from /api/foo"
  end

  def bar(conn, _params) do
    :timer.sleep(1000); 
    render conn, "index.json", data: "This is some data from /api/bar"
  end
end
