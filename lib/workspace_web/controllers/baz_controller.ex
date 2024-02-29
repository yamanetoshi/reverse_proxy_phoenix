defmodule WorkspaceWeb.BazController do
  use WorkspaceWeb, :controller

  def index(conn, _) do
    send_resp(conn, 200, "baz")
  end
end
