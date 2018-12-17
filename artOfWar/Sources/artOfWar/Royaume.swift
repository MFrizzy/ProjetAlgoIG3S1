class Royaume : RoyaumeProtocole {

    /* ------------------ Type Alias --------------------*/

    typealias Joueur = Joueur
    typealias Carte = Carte
    typealias RoyaumeIterator = RoyaumeIterator

    /* ------------------ Attributs --------------------*/
    
    /* ------------------ Méthodes --------------------*/

    init()

    func extraireRoyaume() throws -> Carte {
        return Carte(role : .Soldat, degats : 1, pvDefensif : 1, pvOffensif : 1, portee : [(1,1)])
    }

    func addRoyaume(carte : Carte) {

    }

    func count() -> Int {
        return 0
    }

    func estVide() -> Bool {
        return true
    }

    func makeIterator() -> RoyaumeIterator {
        return RoyaumeIterator()
    }
}

class RoyaumeIterator : IteratorProcol {

    init() {

    }
    
}