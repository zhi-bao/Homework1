// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool firstTime;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(!firstTime){
            firstTime = true;
            return 1217;
        }else{
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(IClassroomV2(msg.sender).isEnrolled())
            return 123;
        else
            return 1217;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    uint64 constant magic_number = 7000;
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        return gasleft() < magic_number? 123: 1217;
    }
}
