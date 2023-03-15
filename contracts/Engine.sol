// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract Engine{
    
    function bitwiseOp(uint nb1, uint nb2) pure public returns(uint) {
        uint result; 
        result = nb1|nb2;
        return(result);
    }
}


