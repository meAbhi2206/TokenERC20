# Project Title
Token Creation Smart Contract

## Description
This project implements a smart contract to create a custom token on a local HardHat network. The contract allows the contract owner to mint tokens to a provided address and enables any user to burn and transfer tokens.

## Getting Started

### Prerequisites
To run this project, you need the following:

- [HardHat](https://hardhat.org/) - A development environment for Ethereum smart contracts.
- [Remix](https://remix.ethereum.org/) - An online Solidity IDE.

### Installation

1. Open Remix in your web browser.
2. Create a new file and copy the contract code into it.
3. Compile the contract in Remix.
4. Deploy the contract on your local HardHat network using Remix's deployment functionality.
5. Once deployed, you can interact with the contract functions in Remix.

### Contract Functions
- `transfer(address _to, uint256 _value)`: Allows any user to transfer tokens to a specified address.
- `burn(uint256 _value)`: Enables any user to burn their own tokens, reducing the total supply.
- `mint(address _to, uint256 _value)`: Only the contract owner can mint tokens to a specified address.

## Examples
To transfer tokens, use the `transfer` function and specify the recipient address and the amount of tokens to transfer. This can be done by any user.

To burn tokens, use the `burn` function and specify the amount of tokens to burn. This can also be done by any user.

To mint tokens, use the `mint` function and specify the recipient address and the amount of tokens to mint. This can only be done by the contract owner.

## Author
Abhishek Ranjan

## License
This project is licensed under the MIT License.
