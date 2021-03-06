pragma solidity ^0.4.10;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Dice.sol";

contract TestDice {

  Dice dice = Dice(DeployedAddresses.Dice());

  function testLastRollStartsAtOne() {
    uint expected = 1;
    Assert.equal(dice.getLastRoll(), expected, "It should start at 1.");
  }

  function testCanSetLastRoll() {
    uint expected = 6;
    dice.set(6);
    Assert.equal(dice.getLastRoll(), expected, "Should now be 6.");
  }

}