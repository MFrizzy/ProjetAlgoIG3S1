protocol protocolePartie {

    init creerPartie(joueur1 : Joueur, joueur2: Joueur)
    //Prérequis : deux joueurs existants de types joueur 
    //Post :none
    //Resultat : renvoi une partie où le joueur1 est le joueur courant et où le joueur 2 est le joueur adverse 

    var joueurCourant:joueur{
    //Prérequis : une partie existante de type existante
    //Post : none 
    //Resultat : renvoi le joueur courant actuel de la partie
        get

        set
    }

    var JoueurAdverse:joueur{
    //Prérequis : une partie existante de type existante
    //Post : none 
    //Resultat : renvoi le joueur adverse actuel de la partie 
        get 

        set
    }

    mutating func SetJoueurCourant(joueur: Joueur)
    //Prérequis : un joueur existant de type joueur, et une partie existante de type joueur. 
    //Post : none 
    //Resultat : change le joueur courant de la partie actuelle par le joueur en paramètre, et renvoi la partie mise à jour

    mutating func ChangeJoueurCourant()
    //Prérequis : Partie est de type partie 
    //Post : 
    //Resultat : change le joueur Adverse en joueur courant en utilisant "SetJoueurCourant", et renvoi la partie


}
