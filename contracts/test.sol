pragma solidity ^0.8.17;

import "./IDataStructurePractice.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Test is IDataStructurePractice, Ownable  {

    mapping(address => User) public users;



    function setNewUser(address _userAdr, User calldata _newUser) external onlyOwner(){
        users[_userAdr] = _newUser;
    }

    function getUser(address _user) external view returns(User memory){
        return users[_user];
    }

    function getMyInfo() external view returns(User memory){
        return users[msg.sender];
    }

}
