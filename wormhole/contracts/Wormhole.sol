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

	function burn (address token, uint256 amount)
		public
	{
		// TODO: verify token is a Wormhole proxy token, doesn't exist on this chain
		// TODO: call internal 'burn' method of token (which we have access to)
		// TODO: emit an event that we've burned

	}

	function lock ()
	{
		// TODO: verify token is *not* a Wormhole proxy token, must be a token native to this chain
	}

	function release ()
	{
		// TODO: verify oracle proof that other chain has burned them
		// TODO: verify that tokens to release are native to this chain
	}
}
