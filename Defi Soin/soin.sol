pragma solidity >=0.4.22 <0.6.0;

import "./AvatarInterface.sol";

contract soin is AvatarInterface{
    
    function soigner(address avatar)external view returns(int vie){
         AvatarInterface joueur = AvatarInterface(avatar);

        vie = joueur.getVie();

        vie = vie + 10;

        return vie;

    }
}