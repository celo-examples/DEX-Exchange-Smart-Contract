pragma solidity ^0.8.0;

import "./IERC20.sol";

contract Dex {
    IERC20 public token;

    event TokenSwap(address indexed buyer, uint256 amountIn, uint256 amountOut);
    event LiquidityAdded(address indexed provider, uint256 amount);

    constructor(address _tokenAddress) {
        token = IERC20(_tokenAddress);
    }

    function swapTokens(uint256 amountIn, uint256 amountOut) external {
        // Perform token swap logic here
        // ...
        
        // Emit an event
        emit TokenSwap(msg.sender, amountIn, amountOut);
    }

    function addLiquidity(uint256 amount) external {
        // Perform liquidity provision logic here
        // ...
        
        // Emit an event
        emit LiquidityAdded(msg.sender, amount);
    }
}
