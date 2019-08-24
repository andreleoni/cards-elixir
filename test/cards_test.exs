defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 16 cards" do
    deck_length = length(Cards.create_deck)

    assert deck_length == 16
  end

  test "shuffle a deck randomizes it" do
    deck = Cards.create_deck

    # Two ways to test same thing
    assert deck != Cards.shuffle(deck)
    refute deck == Cards.shuffle(deck)
  end
end
