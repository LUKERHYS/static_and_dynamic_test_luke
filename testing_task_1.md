### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
  if card.value = 1  ## This line requires a second = as it is using the if statement to compare card.value to 1 rather than assigning 1 to card.value.
      return true
    else
      return false
    end
  end

dif highest_card(card1 card2) ## There is a typo when definging this function, it should be def not dif.
  if card1.value > card2.value
  return card ## This should be returning card1 as card does not exist. 
  else
    return card2
  end
end
end ## There is an extra end 

def self.cards_total(cards)
total   ## total is being added to in the function however it would need to have an initial value of 0 for example, total = 0, to then be able to add card.value to it.
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end
```
