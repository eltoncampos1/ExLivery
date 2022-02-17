defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User
  alias Exlivery.Orders.Item

  def user_factory do
    %User{
        name: "user_name",
        email: "email@valid.com",
        cpf: "12345678900",
        age: 20,
        address: "rua valida, 0"
    }
  end

  def item_factory do
    %Item{
      description: "Pizza",
      category: :pizza,
      unity_price: Decimal.new("30"),
      quantity: 1
    }
  end
end
