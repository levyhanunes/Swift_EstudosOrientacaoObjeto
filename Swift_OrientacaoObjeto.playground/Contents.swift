import UIKit

//MARK: - Classes e Metodos



//MARK: NOVA CLASSE USUARIO
class User {
    
    //MARK: - ATRIBUTOS
    var name : String
    var lastName : String
    var age: Int
    
    //MARK: - INIT()
    init(name: String, lastName: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.age = age
    }
    //MARK: - METODOS
    func showFullName() -> Any{
        return "\(name) \(lastName) tem \(age) anos!"
    }
    
}


//MARK: CRIAR ONJETOS PASSANDO ARGUMENTOS NOME, SOBRENOME, ECT..
var levy = User(name: "Levy", lastName: "Nunes", age: 23)
var ruy = User(name: "Ruy", lastName: "Rodrigues", age: 18)

//MARK: PRINT COM O METODO showFullName()
//print(levy.showFullName())

class Vehicle {
    var name, brand: String
    
    init(name: String, brand: String) {
        self.name = name
        self.brand = brand
    }
    
    func showDescription() -> String {
        return "\(name) \(brand)"
    }
}

var vehicle = Vehicle(name: "Gol", brand: "Wolkswagen")
vehicle.showDescription()

//MARK: HERDANDO DA CLASSE VEHICLE
class Car : Vehicle {
    var isEletric: Bool
    var gears: Int
    
    init(name: String, brand: String, isEletric: Bool, gears: Int) {
        self.isEletric = isEletric
        self.gears = gears
        super.init(name: name, brand: brand)
    }
    
    
    //MARK: sobrescrever o metodo showDescription() da classe Vehicle
    override func showDescription() -> String {
        //return super.showDescription() chama o metodo da classe pai, mas nao faz sentido dar override se nao for adicionar nada ao metodo
        return "\(self.name) \(self.brand) has \(gears) gears. This car is eletric? \(isEletric ? "Yes" : "No")"
    }
}

var uno = Car(name: "Uno", brand: "Fiat", isEletric: false, gears: 4)
print(uno.showDescription())

























//MARK: NOVA CLASSE CARRO
class Carro {
    
    //MARK: - Atributos
    var marca, modelo, cor : String
    var age : Int
    var ligado : Bool
    
    //MARK: - INIT()
    init(marca: String, modelo: String, cor: String, age: Int, ligado: Bool) {
        
        self.marca = marca
        self.modelo = modelo
        self.cor = cor
        self.age = age
        self.ligado = ligado
    }
    
    //MARK: - Metodos
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

//MARK: - CRIAR OBJETO
var porsche = Carro(marca: "Porsche", modelo: "Caynne", cor: "Amarelo", age: 2020, ligado: true)


//MARK: - PRINT FUNCAO carroLigado()
print(porsche.showCar())
print(porsche.estaLigado())

