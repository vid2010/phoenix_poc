defmodule StudentWeb.StudentController do
    use StudentWeb, :controller

    def index(conn, _params) do
        render(conn, "index.html")
    end

    def show(conn, %{"messenger" => messenger} = _params) do
        render(conn, "show.html", messenger: messenger)
    end
end
