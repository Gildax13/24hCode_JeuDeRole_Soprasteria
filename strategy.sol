pragma solidity >=0.4.22 <0.6.0;

import ActionStrategy.sol;
import AvatarInterface.sol;

contract strategy(ActionStrategy){
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        action.PHYSICAL_ATTACK;
    }
}