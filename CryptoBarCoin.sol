pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CryptoBarCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CryptoBarCoin(address _owner)  UpgradeableToken(_owner) {
    name = "CryptoBarCoin";
    symbol = "DMP";
    totalSupply = 30000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}