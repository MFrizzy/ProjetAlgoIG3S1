protocol ArriereProtocol {

  init(joueur : Joueur) :
      # Pre : le joueur de type joueur ne doit pas posser d'arriere encore
      # Post: 
      # Resultat : Créer un element de Type Arriere

  mutating func envoyerArriere(carte,pos : string) :
      # Pre : arriere est de type Arriere, carte est de type Carte. pos est un string dont le premier caractère est un A et le deuxieme est un chiffre
      # Post :
      # Resultat : La carte donnée en parametre est positionné dans l'arriere, à la position pos. La fonction modifie donc l'arriere et le renvoie


  var nbCarteArriere : int { 
      get
      set
      # Pre : arriere est de type Arriere
      # Post :  
      # Resultat : Indique le nombre de carte présente sur l'arriere 

  } 

  func estVideArriere(pos : String) :
      # Pre : pos est un str
      # Post : Aucune 
      # Resultat : Renvoi True si la position est vide, renvoi False sinon



  mutating func extraireArriere(pos : String) : 
      # Pre : arriere est de type Arriere, pos est un str 
      # Post : Aucune 
      # Resultat : renvoie la carte située à la position pos, et modifie l'arriere en retirant la carte. 

}
