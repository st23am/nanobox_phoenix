defmodule NanoBoxPhoenix.Web.PageController do
  use NanoBoxPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
