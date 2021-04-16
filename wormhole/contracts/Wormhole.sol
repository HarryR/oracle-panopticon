contract Wormhole {
	IOracle oracle;

	// replace with `block.chainid` https://github.com/ethereum/solidity/issues/8854
	function getChainID()
		internal pure returns (uint256 id)
	{
    		assembly {
			id := chainid()
		}
	}

	constructor( IOracle _oracle )
	{
		oracle = _oracle;
		// TODO: chain ID
	}

	function burn ()
	{

	}

	function lock ()
	{

	}

	function release ()
	{

	}
}
