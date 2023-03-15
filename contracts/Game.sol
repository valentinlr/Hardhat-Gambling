// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


import "./Engine.sol";

contract Game is Engine{

    uint randNonce = 0;
    uint bitsresult;

    function gameResults(uint userInput) public returns(bool result){
    randNonce++; 

    uint nb1 = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender,randNonce))) % 100;
    uint nb2 = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender,randNonce))) % 100;
    bitsresult = bitwiseOp(nb1, nb2);
    if (bitsresult == userInput){
                result = true;
            } 
        else {
                result = false;
            }  
    return(result);
    }
    
}