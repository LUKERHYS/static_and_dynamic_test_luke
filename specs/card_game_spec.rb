require('minitest/autorun')
require('minitest/reporters')
require('pry-byebug')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class CardGameTest < Minitest::Test
  def setup()
    @cardgame1 = CardGame.new()
    @card1 = Card.new("clubs", 1 )
    @card2 = Card.new("hearts", 3 )
    @card3 = Card.new("spades", 4 )
    @card4 = Card.new("diamonds", 6 )
    @cards = [@card1, @card2, @card3, @card4]
  end

  def test_check_for_ace__pass()
    result = @cardgame1.check_for_ace(@card1)
    assert_equal(true, result)
  end

  def test_check_for_ace__fail()
    result = @cardgame1.check_for_ace(@card2)
    assert_equal(false, result)
  end

  def test_highest_card()
    result = @cardgame1.highest_card(@card4, @card3)
    assert_equal(@card4, result)
  end

  def test_card_total()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 14", result)
  end


end
