defmodule Exlivery.Orders.Item do
  @categories [:pizza, :hamburger, :carne, :prato_feito, :japonesa, :sobremesa]
  @keys [:description, :category, :unity_price, :quantity]
  @enforce_keys @keys

  defstruct @keys

  def build(description, category, unity_price, quantity) when quantity > 0 and category in @categories do
    {:ok, %__MODULE__{
      description: description,
      category: category,
      quantity: quantity,
      unity_price: unity_price
    }}
  end

  def build(_description, _category, _quantity, _unity_price), do: {:error, "Invalid Params"}
end
