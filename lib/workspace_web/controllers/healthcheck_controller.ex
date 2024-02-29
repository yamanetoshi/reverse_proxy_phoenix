defmodule WorkspaceWeb.HealthcheckController do
  use WorkspaceWeb, :controller

  def index(conn, _) do
    send_resp(conn, 200, "OK")
  end
end
