defmodule WorkspaceWeb.BarController do
  use WorkspaceWeb, :controller

  def index(conn, _) do
    send_resp(conn, 200, "bar")
  end
end
