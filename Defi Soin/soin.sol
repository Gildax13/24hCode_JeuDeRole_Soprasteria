pragma solidity >=0.4.22 <0.6.0;

import "./AvatarInterface.sol";

contract soin is AvatarInterface{
    
    function soigner(address avatar)external view returns(int vie){
         AvatarInterface joueur = AvatarInterface(avatar);
        //Récupération de la vie actuelle du personnage
        vie = joueur.getVie();
        //Régénération de 10 HP
        vie = vie + 10;
        //Renvoie la nouvelle valeur de la vie du personnage
        return vie;

    }
}