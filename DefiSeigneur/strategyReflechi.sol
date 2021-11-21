pragma solidity ^0.5.16;

import "./ActionStrategy.sol";
import "./AvatarInterface.sol";

contract strategyReflechi is ActionStrategy{

    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface joueur = AvatarInterface(avatar);
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        if(joueur.getPuissanceMagique() > adversaire.getPuissanceMagique()){
            Action.MAGICAL_ATTACK;
        }
        else{
            Action.MAGICAL_PARRY;
        }
        if(joueur.getPuissancePhysique() > adversaire.getDefensePhysique()){
            Action.PHYSICAL_ATTACK;
        }
        else{
            Action.PHYSICAL_PARRY;
        }
        if(joueur.getDefensePhysique() > adversaire.getPuissancePhysique()){
            Action.PHYSICAL_PARRY;
        }
        else{
            Action.PHYSICAL_ATTACK;
        }
        
    }
}