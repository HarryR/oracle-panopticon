pragma solidity ^0.8.0;

import "./IOracleConsensus.sol";


contract MockConsensus is IOracleConsensus
{
	function validate( bytes32 root, uint256[] state )
		public returns (bool)
	{
		return true;
	}
}
