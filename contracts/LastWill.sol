pragma solidity >=0.5.0 <0.7.0;

contract LastWill {
    address owner;

    struct Testator {
        address marker;
        string firstname;
        string lastname;
        string residence;
        string county;
        bool signed;
    }

    struct Executor {
        string name;
        string city;
        string county;
        string state;
    }

    struct Beneficiary {
        uint id;
        string name;
        string residence;
        string relationship;
        string content;
    }

    struct Witness {
        string name;
        bool signed;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    constructor () {
        owner = msg.sender;
    }
}
