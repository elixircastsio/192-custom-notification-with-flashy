defmodule TeacherWeb.Components.Notifications.Disconnected do

  use TeacherWeb, :html
  use Flashy.Disconnected

  attr :key, :string, required: true
  def render(assigns) do
    ~H"""
    <Flashy.Disconnected.render key={@key}>
      <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
        <strong class="font-bold">Connection lost!</strong>
        <span class="block sm:inline">
        Attempting to reconnect
        </span>
      </div>
    </Flashy.Disconnected.render>
    """
  end

end
