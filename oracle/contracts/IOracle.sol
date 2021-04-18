pragma solidity ^0.8.0;


interface IOracle
{
	function validate( uint256 fact, uint256[] proof ) public returns (bool);
}

