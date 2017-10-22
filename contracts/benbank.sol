pragma solidity ^0.4.11;

contract BENBank {
  uint256 public currentSupply;
  mapping(address => uint256) balances;
  address studentfund; 

  function () { revert(); }

  function BENBank(address _stu){

  }

  function buyTokens(address sentTo) public payable returns (uint){ 
    //1000000000000000 Wei per token
    tokensCreated = msg.value/1000000000000000;
    tokensGiven = tokensCreated/2;
    balances[msg.sender] += tokensGiven;
    balances[studentfund] += tokensGiven;
    BUYTOKENS(msg.sender, msg.value, tokensGiven);
    return tokensGiven;
  }
  event BUYTOKENS(address indexed buyer, uint weiSpent, uint tokensReturned);
  function balanceOf(address who) public constant returns (uint256){
    return balances[who];
  };

  function transfer(address to, uint256 value) public returns (bool){
    //ERROR CHECKING AF NEEDED ON THIS SHIT
    balances[msg.sender] -= value; 
    balances[to] += value;
  };
  
  event Transfer(address indexed from, address indexed to, uint256 value);

  function widraw(address chapterAddr, bytes32 node, uint amount) returns (uint) {
    //chapter must have that amount of $
    //msg.sender should be finance.chaptername.edu (reverse lookup)
    //..
  }
}