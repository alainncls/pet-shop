pragma solidity ^0.4.17;

contract Adoption {

    // Adopters array
    address[16] public adopters;

    // Method to adopt pet
    function adopt(uint petId) public returns (uint) {
      require(petId >= 0 && petId <= 15);

      adopters[petId] = msg.sender;

      return petId;
    }

    // Method to get adopters
    function getAdopters() public view returns (address[16]) {
      return adopters;
    }

}