pragma solidity >=0.4.22 <0.6.0;

import "./MetaCoin.sol";

contract Tribu {
    //déclaration des variables
    uint soldeCompte1;
    uint soldeCompte2;
    uint montant;
    address public compte1;
    address public compte2;

    constructor() public 
    {
        //affectation des variables
        soldeCompte1 = 1000;
        soldeCompte2 = 0;
        compte1 = 0x766549D482E9620c0C21a6E004a4BD29CeDC133f;
        compte2 = 0xE67305e7cAD00d4cF9061B727D43711581937FBA;
    }

    function envoiTest() public 
    {
        //essai d'envoi via l'appel à la méthode SendCoin de la classe MetaCoin
        MetaCoin meta = new MetaCoin();
        meta.sendCoin(compte2, 10);
    }
    function sendTribute(address payable _to) public payable 
    {
        //essaie d'envoi via la méthode transfer
        _to.transfer(msg.value);
    }
}


