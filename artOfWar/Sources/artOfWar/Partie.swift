class Partie : PartieProtocole {

    typealias Joueur = Joueur

    init() {
        
    }

    var joueurCourant : Joueur

    var joueurAdverse : Joueur

    func estFini() -> Bool {
        return false
    }

    func gagnant() -> Int {
        return 0
    }

}