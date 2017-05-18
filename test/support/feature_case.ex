defmodule NanoBoxPhoenix.Web.FeatureCase do
  @moduledoc """
  This is the Feature case for setting up Hound tests

  """

  use ExUnit.CaseTemplate

  using do
    quote do
      use Phoenix.ConnTest
      import NanoBoxPhoenix.Web.Router.Helpers
      import NanoBoxPhoenix.Factory
      alias NanoBoxPhoenix.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      use Hound.Helpers
      use NanoBoxPhoenix.Page
      import NanoBoxPhoenix.AsyncHelpers
      alias NanoBoxPhoenix.Repo

      @endpoint NanoBoxPhoenix.Web.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(NanoBoxPhoenix.Repo)
    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(NanoBoxPhoenix.Repo, self())
    Hound.start_session(metadata: metadata)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(NanoBoxPhoenix.Repo, {:shared, self()})
    end

    :ok
  end
end
