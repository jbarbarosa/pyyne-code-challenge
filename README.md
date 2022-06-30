# Pyyne Ruby on Rails code challenge

## Description
Our client is a casino that's expanding into the on-line game scene. They want us to build a Poker game engine that does everything needed to run a regular Texas Hold 'em Poker game

You're not expected to know how to play Poker, just keep some rules in mind:

- There are 52 cards in the deck, each card has a value and a suite
- Cards range from 2-10 + J(oker) + Q(ueen) + K(ing) + A(ce), Ace is the highest value, 2 is the lowest
- Suites are: Clubs, Diamonds, Hearts and Spades. Suites are unordered
- Some examples:
  - Ace of Spades would be represented as AS
  - Queen of Hearts would be represented as QH
  - Two of Clubs would be represented as 2C
  - Ten of Diamonds would be represented as 10D

A game can have many players, let's abstract away the process of forming a gaming session and betting and just focus on the rules for scoring:

- Each player has two private cards
- The table has five shared cards
- The winner is decided by forming a Hand with their private cards, plus the five table cards
- A Hand consists of five cards total. Each player selects the five cards that form the best Hand
- A Hand is a specific card combination. There are many hands and they vary between regions and game types. Let's just consider a few to keep it simple:
    - High card: default rank, occurs when no other ranks were met. Scored simply based on the highest card on the players hand
    - Pair: two cards with the same value, even if belonging to different suites
    - Flush: five cards that are all of the same suite
    - Full house: three cards of one value, plus two cards of another

Full house beats Flush, which beats Pair, which beats High card
