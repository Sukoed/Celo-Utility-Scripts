// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CeloIdentity {
    mapping(address => string) public linkedPhone;

    function linkPhone(string memory phoneHash) public {
        linkedPhone[msg.sender] = phoneHash;
    }
}
