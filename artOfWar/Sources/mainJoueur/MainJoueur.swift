protocol protocoleMainJoueur{

    init creerMain(numéro : int)
    //Prérequis: un numéro entre 0 ou 1, qui défini le joueur
    //Post: none
    //Resultat: Créé une main contenant un roi du joueur correspondant

    func descriptionMain()
    //Prérequis : une main existante de type main
    //Post : rien
    //Resultat : renvois une description de la main en string (ex : "archer","soldat","soldat","garde")

    func supprimerCarteMain( i : int)
    //Prérequis : une main existante, et un entier compris en 0 et le nombre de carte en main
    //Post : none 
    //Resultat : supprime une carte à la position i de la main et renvoi la nouvelle main 

    func ajoutCarteMain(carte : Carte)
    //Prérequis : une main existante de type main, une carte existante de type carte
    //Post : none
    //Resultat : ajoute une carte dans la main et renvoi la nouvelle main

    func nbCarteMain()
    //Prérequis : une main existante de type main
    //Post :
    //Resultat : renvoi le nombre de carte dans la main


}
