defmodule WorkspaceWeb.FooController do
  use WorkspaceWeb, :controller

  def index(conn, _) do
    send_resp(conn, 200, "foo")
  end
end
