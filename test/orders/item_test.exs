defmodule Exlivery.Orders.ItemTest do
  use ExUnit.Case
  alias Exlivery.Orders.Item
  import Exlivery.Factory

  describe "build/4" do
    test "when all params are valid, returns an item" do
      response = Item.build("Pizza", :pizza, "30", 1)

      expected_response = {:ok, build(:item)}

      assert response == expected_response
    end

    test "when there is an invalid category, returns an error" do
      response = Item.build("Pizza", :banana, "30", 1)

      expected_response = {:error, "Invalid Params"}

      assert response == expected_response
    end

    test "when there is an invalid price, returns an error" do
      response = Item.build("Pizza", :banana, "invalid_price", 1)

      expected_response = {:error, "Invalid Params"}

      assert response == expected_response
    end

    test "when there is an invalid quantity, returns an error" do
      response = Item.build("Pizza", :banana, "30", -1)

      expected_response = {:error, "Invalid Params"}

      assert response == expected_response
    end
  end
end
