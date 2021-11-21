pragma solidity ^0.5.16;

import "./ActionStrategy.sol";
import "./AvatarInterface.sol";

contract strategyReflechi is ActionStrategy{

    //fonction permettant de comparer deux chaines de caractères
    function compare(string memory s1, string memory s2) public pure returns (bool) {
        return keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));
    }

    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface joueur = AvatarInterface(avatar);
        Action action;
        //si l'avatar est un Mage
        if(compare(joueur.getType(),"Mage") == true){
            action = Action.MAGICAL_ATTACK;            
        }
        //si l'avatar est un Guerrier
        if(compare(joueur.getType(),"Guerrier") == true){
            action = Action.PHYSICAL_ATTACK;
        }
        //si l'avatar est un Assassin
        if(compare(joueur.getType(),"Assassin") == true){
            action = Action.PHYSICAL_PARRY;
        }
        //si l'avatar est une Archere
        if(compare(joueur.getType(), "Archere") == true){
            action = Action.MAGICAL_ATTACK;
        }
        //si l'avatar est une Amazone
        if(compare(joueur.getType(),"Amazone") == true){
            action = Action.PHYSICAL_ATTACK;
        }
        
        return action;
    }
}