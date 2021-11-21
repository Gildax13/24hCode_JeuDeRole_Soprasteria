pragma solidity ^0.5.16;

import "./ActionStrategy.sol";

contract strategyBrute is ActionStrategy{
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        return Action.PHYSICAL_ATTACK;
    }
}