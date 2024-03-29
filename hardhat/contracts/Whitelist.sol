//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
contract WhiteList{
    uint8 public maxWhitelistedAddresses;
    mapping(address=>bool) public whitelistedAddresses;
    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhiteListAddress){
         maxWhitelistedAddresses = _maxWhiteListAddress;
    }   

    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender], "user already whitelisted");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "ore addresses cant be added, limit reached ");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted++;

    }
}