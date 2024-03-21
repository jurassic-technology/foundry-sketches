// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;
pragma abicoder v2;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import {LogExpMath} from "../src/LogExpMath.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function testTesting () public {

        uint term = LogExpMath.pow(999944651648714819, 365);
        console.log("term", term);


    }
}
