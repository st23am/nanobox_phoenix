defmodule GaslightProject.Web.PageController do
  use GaslightProject.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
