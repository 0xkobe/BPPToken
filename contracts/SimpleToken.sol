pragma solidity 0.5.16;

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol";

contract SimpleToken is ERC20Detailed, ERC20 {
  constructor(
    string memory _name,
    string memory _symbol,
    uint8 _decimals,
    uint256 _amount
  ) public {
    require(_amount > 0, "amount has to be greater than 0");
    ERC20Detailed.initialize(_name, _symbol, _decimals);
    _mint(msg.sender, _amount * (10 ** uint256(decimals())));
  }
}
