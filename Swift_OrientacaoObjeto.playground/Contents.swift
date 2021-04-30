import UIKit

//MARK: - Classes e Metodos


class User {
    var name : String
    var lastName : String
    var age: Int
    
    init(name: String, lastName: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.age = age
    }
    
    func showFullName() -> Any{
        return "\(name) \(lastName) tem \(age) anos!"
    }
    
}

func returnUser() -> Any{
    return User.self
}

print(returnUser())


var levy = User(name: "Levy", lastName: "Nunes", age: 23)
var ruy = User(name: "Ruy", lastName: "Rodrigues", age: 18)

print(levy.showFullName())


class Car {
    var marca, modelo, cor : String
    var age : Int
    var ligado : Bool
    
    init(marca: String, modelo: String, cor: String, age: Int, ligado: Bool) {
        self.marca = marca
        self.modelo = modelo
        self.cor = cor
        self.age = age
        self.ligado = ligado
    }
    
    func showCar() -> Any {
        return "Marca: \(marca) Modelo: \(modelo) Cor: \(cor) Ano: \(age)"
    }
    
    func estaLigado() -> Any {
        if ligado == true {
            return "O \(marca) \(modelo) esta ligado!"
        }else{
            return "O \(marca) \(modelo) esta desligado!"
        }
    }
}

var porsche = Car(marca: "Porsche", modelo: "Caynne", cor: "Amarelo", age: 2020, ligado: true)

print(porsche.estaLigado())
