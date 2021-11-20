pragma solidity >=0.4.22 <0.6.0;

import ActionStrategy.sol;
import AvatarInterface.sol

contract strategyReflechi(ActionStrategy){
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        if(avatar.getPuissanceMagique > avatarAdv.getPuissanceMagique){
            action.MAGICAL_ATTACK,
        }
        else{
            action.MAGICAL_PARRY;
        }
        if(avatar.getPuissancePhysique > avatarAdv.getDefensePhysique){
            action.PHYSICAL_ATTACK;
        }
        else{
            action.PHYSICAL_PARRY;
        }
        if(avatar.getDefensePhysique > avatarAdv.getPuissancePhysique){
            action.PHYSICAL_PARRY;
        }
        else{
            action.PHYSICAL_ATTACK;
        }
        
    }
}