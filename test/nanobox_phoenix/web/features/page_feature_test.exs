defmodule NanoBoxPhoenix.PageFeature do
  use NanoBoxPhoenix.Web.FeatureCase
  alias NanoBoxPhoenix.IndexPage

  test "renders the default index page" do
    IndexPage.visit()
    assert has_content?("Welcome to")
  end
end
