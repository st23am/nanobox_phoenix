defmodule NanoBoxPhoenix.IndexPage do
  use NanoBoxPhoenix.Page

  def visit do
    navigate_to("/")
  end
end
