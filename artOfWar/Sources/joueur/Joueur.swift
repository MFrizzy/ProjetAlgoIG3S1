
protocol joueurProtocole {

    init(numéro : int , nom : String)
    // Prérequis : numéro est un int, 0 ou 1 ; nom est un string
    // Post : Aucune
    // Result : Crée un élément de type joueur, avec le nom en entré, construit aussi tout les items du jeu (royaume vide, champs de bataille vide, une pioche, une main avec un roi)
        
    var nomJoueur : String {
        get
        //Prérequis : joueur de type de Joueur
        //Post : None
        //Result : Renvoi le nom du joueur mis en entré 

    }

    var champsDeBataille:ChampsDeBataille{
        get
    //Prérequis : joueur existant de type Joueur 
    //Post : None
    //Result : Renvoi le champs de bataille du joueur mis en entrée 
    }


    var main:Main {   
        get
    //Prérequis : un joueur existant de type joueur en entrée
    //Post : None
    //Result : renvoi la main du joueur 
    }


    var royaume:Royaume{
    //Prérequis : un joueur existant de type joueur en entrée
    //Post : rien
    //Result : renvoi le royaume du joueur
    }


    var pioche:Pioche{
    //Prérequis :un joueur existant de type joueur en entrée 
    //Post : rien
    //Result : renvoi la pioche du joueur 
    }


    var cimetiere:Cimetiere{
    //Prérequis : un joueur existant de type joueur en entré
    //Post : nothing
    //Result :renvoi le cimetiere du joueur
    }

}
