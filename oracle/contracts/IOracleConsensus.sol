pragma solidity ^0.8.0;


interface IOracleConsensus
{
	function validate( uint256 root, uint256[] state ) public returns (bool);
}
