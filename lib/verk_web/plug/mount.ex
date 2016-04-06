defmodule VerkWeb.Plug.Mount do
  import Plug.Conn

  def init(default), do: default

  def call(conn, path) do
    if String.starts_with? conn.request_path, path do
      conn
      |> assign(:mount_path, path)
      |> Phoenix.Router.Route.forward(
        [String.replace(path, "/", "")],
        VerkWeb.Endpoint,
        [])
      |> halt
    else
      conn
    end
  end
end
