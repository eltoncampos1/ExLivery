defmodule Exlivery.Users.UserTest do
  use ExUnit.Case
  alias Exlivery.Users.User

  describe "build/5" do
    test "When all params are valid, returns an user" do
      response = User.build(
        "user_name",
        "email@valid.com",
        "123456789",
        20,
        "rua valida"
      )

      expected_response = {:ok, %User{address: "rua valida", age: 20, cpf: "123456789", email: "email@valid.com", name: "user_name"}}

      assert response == expected_response
    end

    test "When age is minor than 18, returns an error" do
      response = User.build(
        "user_name",
        "email@valid.com",
        "123456789",
        17,
        "rua valida"
      )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
