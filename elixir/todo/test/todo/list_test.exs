defmodule Todo.ListTest do
    use ExUnit.Case

    alias Todo.List
    alias Todo.Item

    setup do
        {:ok, list}=List.start_link("Home")
        {:ok, list: list}
    end

    test ".items returns the todos on the list", %{list: list} do
        assert List.items(list) == []
    end

    test ".add adds an item to the list", %{list: list} do
        item = Item.new("Create an OTP app")

        List.add(list, item)
        assert List.items(list) == [item]
    end
end