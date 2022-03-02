// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol"; // can be used as SimpleStorage

contract StorageFactory {
    SimpleStorage[] public simpleStorageArr;

    function createSimpleStorageContract() public {
        // new: creates new smart contract
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    // Storafe Factory store
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // Address will be gotten from simpleStorageArr

        SimpleStorage simpleStorage = SimpleStorage(
            address(simpleStorageArr[_simpleStorageIndex])
        ); // right side is where we get the ABI
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArr[_simpleStorageIndex]));
        // return simpleStorage.retrieve();
        return
            SimpleStorage(address(simpleStorageArr[_simpleStorageIndex]))
                .retrieve();
    }
}
