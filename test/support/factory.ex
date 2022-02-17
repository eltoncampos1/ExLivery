defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
        name: "user_name",
        email: "email@valid.com",
        cpf: "12345678900",
        age: 20,
        address: "rua valida, 0"
    }
  end
end
