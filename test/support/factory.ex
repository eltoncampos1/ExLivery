defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User
  alias Exlivery.Orders.{Item, Order}

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

  def order_factory do
    %Order{
      delivery_address: "rua valida, 0",
      items: [
        %Item{
          category: :pizza,
          description: "Pizza",
          quantity: 1,
          unity_price: Decimal.new("30")
        },
        %Item{
          category: :japonesa,
          description: "temaki",
          quantity: 2,
          unity_price: Decimal.new("15")
        }
      ],
      total_price: Decimal.new("60.00"),
      user_cpf: "12345678900"
    }
  end
end
