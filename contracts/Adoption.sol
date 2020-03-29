pragma solidity ^0.5.0;

contract Adoption {
  address[16] public adopters;

  // Adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
  }

  // Retrieves adopters
  // view keyword means function won't modify state of contract, only view
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }
}