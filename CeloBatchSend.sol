// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CeloBatchSend {
    function multiSend(address[] calldata recipients, uint256[] calldata amounts) external payable {
        require(recipients.length == amounts.length, "Arrays must match");
        for (uint256 i = 0; i < recipients.length; i++) {
            payable(recipients[i]).transfer(amounts[i]);
        }
    }
}
