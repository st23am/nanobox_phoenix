defmodule NanoBoxPhoenix.Web.LayoutView do
  use NanoBoxPhoenix.Web, :view

  def app_name do
    Mix.Project.config[:app]
    |> Atom.to_string
    |> String.split("_")
    |> Enum.map(&(Macro.camelize(&1)))
    |> Enum.join(" ")
  end
end

