pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/HundredFinanceHack.sol";

contract HundredFinanceHackTest is Test {
    uint256 mainnetFork;

    HundredFinanceHack public hundredFinanceHack;

    function setUp() public {
        mainnetFork = vm.createFork("gnosis", 21120000);
        vm.selectFork(mainnetFork);
        hundredFinanceHack = new HundredFinanceHack();
    }

    function testFlashLoan() public {
        hundredFinanceHack.initiateAttack();
    }
}
