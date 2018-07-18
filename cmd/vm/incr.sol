pragma solidity ^0.4.20;

contract Counter {

	// 状态变量
    uint count = 0;

    event CountIncreased(address from, uint count);

	// 函数
    function increment() public {
		count = count + 1;

        // 激活CountIncreased事件
       emit CountIncreased(msg.sender, count);
    }

    // 函数
    function getCount() constant returns (uint) {
       return count;
    }

}