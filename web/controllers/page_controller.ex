defmodule Splurty.PageController do
  use Splurty.Web, :controller

  def index(conn, _params) do
    conn
    |> assign(:quote, Splurty.Quote.Queries.random)
    |> render "index.html"
  end
end
