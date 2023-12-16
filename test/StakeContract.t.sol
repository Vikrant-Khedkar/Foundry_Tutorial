// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "ds-test/test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";
contract StakeContractTest is DSTest{
    StakeContract public stakeContract;
    MockERC20 public mockToken;
    function setUp() public {
        stakeContract = new StakeContract();
        mockToken =  new MockERC20();

    }

    function testExample() public {
        uint256 amount = 10e18;
        bool stakePassed = stakeContract.stake(amount,address(mockToken));
        mockToken.approve(address(stakeContract),amount);
        assertTrue(stakePassed);
    }

}