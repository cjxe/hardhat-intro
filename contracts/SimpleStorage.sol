// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 favoriteNumber = 5;
    bool isTrue = true;
    string favoriteFood = "Apple";
    int256 favInt = -5;
    address favAddress = 0xD1E63b30143d5A6FB2bEAfeAECfa7f449b5a6EF4;
    
    uint256 public test;
    // https://stackoverflow.com/questions/47622265/what-is-the-difference-between-an-internal-external-and-public-private-function
    function store(uint256 _favoriteNumber) public {
        test = _favoriteNumber;
    }
    
    // https://www.tutorialspoint.com/solidity/solidity_view_functions.htm
    function retrieve() public view returns (uint256) {
        return test;
    }
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
    mapping(string => uint256) public nameToFavNum;
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavNum[_name] = _favoriteNumber;
    }

}