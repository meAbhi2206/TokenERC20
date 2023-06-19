// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    address public owner;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Mint(address indexed to, uint256 value);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
        owner = msg.sender;
    }

    function transfer(address _to, uint256 _value) external {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
    }

    function burn(uint256 _value) external {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        totalSupply -= _value;
        emit Burn(msg.sender, _value);
    }

    function mint(address _to, uint256 _value) external onlyOwner {
        balanceOf[_to] += _value;
        totalSupply += _value;
        emit Mint(_to, _value);
    }
}
