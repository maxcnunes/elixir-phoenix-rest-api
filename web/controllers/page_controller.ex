defmodule RestApi.PageController do
  use RestApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
