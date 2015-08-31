# TerminalBattleship

## Summary

- The game is played between two players (one human, one computer).
- Each player has a 10 x 10 board with columns labeled 1 - 10 and rows labeled A - J (see file `board.txt`).
- Players have their own fleets of ships and arrange them on their own boards.
- Players take turns firing on their opponent's ships, taking as many shots per turn as the number of their unsunk ships.
- Shot locations are called out by referencing board coordinates (e.g., "A3", "B6", etc).
- On a board, shots that miss are represented with a `/` and hits are represented with an `X`.
- Opponents must be alerted when a ship is sunk completely.
- Ships are sunk when they've been hit a number of times equal to their size (i.e., the opponent has fired on each board location occupied by the ship).

### Fleet of Ships

| Ship       | Size | Quantity |
| :--------- | ----:| --------:|
| Carrier    | 5    | 1        |
| Battleship | 4    | 1        |
| Cruiser    | 3    | 1        |
| Destroyer  | 2    | 2        |
| Submarine  | 1    | 2        |

*Table 1*.  Details for ships in each player's fleet.

## Gameplay
Once the fleets have been placed on the boards, the players can begin firing at each other—first one player and then the other.

In turn, players identify the locations on the opponent's board where they are firing.  A player identifies a number of locations upon which to fire equal to the number of remaining ships in the player's fleet.  If a player has three ships remaining, three locations are identified.  After all of the locations have been identified, the player is notified of hits and misses and also whether any of the opponent's ships have been sunk.

## Winning the Game
Players take turn firing upon each other's fleets until every ship in one of the fleets has been sunk.  At that point, the game is over, and the player whose fleet has unsunk ships is the winner.