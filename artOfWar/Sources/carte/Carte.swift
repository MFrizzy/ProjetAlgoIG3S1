protocol protocoleCarte{

    func estverticale()
    //Prérequis : Carte est de type carte
    //Post : 
    //Resultat : renvoi un booléen, true si la carte est verticale 

    mutating func changementmode() 
    //Prérequis : Carte est de type carte
    //Post :
    //Resultat : inverse le mode de la carte, si elle est verticale elle devient horizontale. Renvoi la carte

    var positionCarte : String
    //Prérequis : Carte de type carte
    //Post :
    //Resultat : renvoi la position en string de la carte ex:"A3"

    mutation func setposcarte(position : String)
    //Prérequis : carte est de type carte, et position un string de la forme "A3", 
    //Post :
    //Resultat : deplace la carte à la position msie en entré, renvoi la carte

    var pointAttaque:int
    //Prérequis : carte de type carte 
    //Post :
    //Result : renvoi les points d'attaques de la carte
 
    var pointDefense:int
    //Prérequis : carte de type carte 
    //Post :
    //Result : renvoi les points de defense de la carte en fonction de son mode

    var pointDeDegats:int
        get 

        set 
    //Prérequis : carte est de type carte
    //Post :
    //Result : renvoi les dégats totaux pris par la carte 

    func capture(joueur : Joueur)
    //Prérequis : carte est de type carte et joueur de type joueur
    //Post :
    //Result : la carte est capturée, est est déplacé dans le royaume du joueur en entré

    mutating func setPointDegat(nvDegat : int)
    //Prérequis : carte est une carte existante, et nvDegat un int
    //Post :
    //Result : modifie les degats de la carte avec "pontdedegats"

    var rolecarte:String
    //Prérequis : carte est de type carte 
    //Post :
    //Result : renvoi le role de la carte sous la forme d'un string

    func estaporte(cible)

    //Prérequis : carte et cible sont de type carte et sont sur le terrain, la cible et la carte ne peuvent être dans la même équipe 
    //Post :
    //Result : renvoi un booléen true si la carte est à porté











}
