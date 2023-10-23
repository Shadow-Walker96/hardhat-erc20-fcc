// 19:03:04 --> Manually Creating an ERC20 Token

/**
 * @notice Patrick want to teach it the hard way
 * @notice I purposely didnt continue writing the code bcos patrick stop here and said
 * @notice just go to the github repo and paste it 
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ManualToken {
    /**
     * @dev How many token they are starting with, how many token in total
     */
    uint256 initialSupply;

    /**
     * @dev The way this token or smart contract work is that there is some balances mapping
     * @dev What it does is it maps to any address on the planet and would give the balance
     */
    mapping(address => uint256) public balanceOf;

    /**
     * @dev This is an allowance mapping which deals with who is allowed which address to take how much token
     * @dev How it works is that it will check if the user is allowed to transfer this token
     */
    mapping(address => mapping(address => uint256)) public allowance;

    /**
     * @notice The _transfer works when the caller is sending money directly into another address
     * @dev transfer token = substract from address amount and add to the address, pseudocode is below
     * @dev This is the pseudocode,
     * @dev balanceOf[from] = balanceOf[from] - amount; | balanceOf[from] -= amount;
     * @dev balanceOf[to] = balanceOf[to] + amount; | balanceOf[to] += amount
     */
    function _transfer(address from, address to, uint256 amount) public {}

    /**
     * @dev Implementing takes funds from a user
     * @param _from The address of the sender
     * @param _to The address of the recipient
     * @param _value the amount to send
     */
    function transFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]); //check allowance
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
}
