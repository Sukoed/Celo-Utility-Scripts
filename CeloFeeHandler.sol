// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CeloFeeHandler {
    address public treasury;
    uint256 public constant SERVICE_FEE = 0.001 ether;

    constructor(address _treasury) {
        treasury = _treasury;
    }

    function processPayment() public payable {
        require(msg.value >= SERVICE_FEE, "Insufficient fee");
        payable(treasury).transfer(SERVICE_FEE);
    }
}
