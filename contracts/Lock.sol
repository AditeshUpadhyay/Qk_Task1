// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressRegistration {
    mapping(address => bool) public registeredAddresses;
   
    event AddressRegistered(address indexed user );

    function registerAddress(address add) public {
        require(add==msg.sender ,"You can only register your own address");
        require(registeredAddresses[add]==false,"You have already registered");
        registeredAddresses[msg.sender] = true;
        emit AddressRegistered(msg.sender);
    }

    // function isAddressRegistered(address user) public view returns (bool) {
    //     return registeredAddresses[user];
    // }
}