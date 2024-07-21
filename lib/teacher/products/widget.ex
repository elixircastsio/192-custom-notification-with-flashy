defmodule Teacher.Products.Widget do
  use Ecto.Schema
  import Ecto.Changeset

  schema "widgets" do
    field :name, :string
    field :price, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(widget, attrs) do
    widget
    |> cast(attrs, [:name, :price])
    |> validate_required([:name, :price])
  end
end
