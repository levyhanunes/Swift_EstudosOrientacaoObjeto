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

var gol = Vehicle(name: "Gol", brand: "Wolkswagen")
gol.showDescription()

//MARK: CLASS CAR HERDANDO DE VEHICLE
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
        let eletric = isEletric ? "Yes" : "No"
        return "\(self.name) \(self.brand) has \(gears) gears. This car is eletric? \(eletric)"
    }
}

var uno = Car(name: "Uno", brand: "Fiat", isEletric: false, gears: 4)
print(uno.showDescription())

//MARK: CLASS TRAIN HERNANDO DE VEHICLE

class Train : Vehicle {
    var numberOfPassangers : Int
    
    init(name: String, brand : String, numberOfPassangers : Int) {
        self.numberOfPassangers = numberOfPassangers
        super.init(name: name, brand: brand)
    }
    
    override func showDescription() -> String {
        return "This train has capacity for \(self.numberOfPassangers) people"
    }
}

var train = Train(name: "Train", brand: "Odebretch", numberOfPassangers: 200)
print(train.showDescription())




//MARK: EXERCICIO DE FIXACAO DAS AULAS DO PROF ANDRE PAGANIN
//Imagine um leilao aonde seram leiloados 3 veiculos, porem eu so tenho dinheiro para comprar os carros e nao o trem. Fiz uma logica para que eu conseguisse comprar apenas os carrosque extenderam da classe Vehicle
var vehicles = [gol, uno, train]

for vehicle in vehicles {
    if vehicle is Car {
        print("I want to buy: \(vehicle.name)")
    }else{
        print("I dont have money to buy: \(vehicle.name)")
    }
}




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




class Customer {
    var name : String
    var idade : Int
    var car: Car?
    
    init(name: String, idade: Int) {
        self.name = name
        self.idade = idade
    }
    
    
    
}

var newCustomer = Customer(name: "Levy", idade: 23)
newCustomer.car = uno

// quando for retornar um valor nill, como foi o caso do Car? Para nao dar erro no unwrapp podemos utilizar o if let
if let customerCar = newCustomer.car {
    print(customerCar.name)
    print(customerCar.showDescription())
}


//MARK: STRUCTS

var studant = User(name: "Levy", lastName: "Henrique", age: 23)
var newStudent = studant

print(studant.showFullName())

studant.name = "Pedro"

struct UserStruct {
    var name : String
    var lastName : String
    
    init(name: String, lastName: String){
        self.name = name
        self.lastName = lastName
    }
    
    func showFullName() -> String {
        return "\(self.name) \(self.lastName)"
    }
}


var studantStruct = User(name: "Levy", lastName: "Henrique", age: 23)
var newStudentStruct = studantStruct

print(studantStruct.showFullName())

newStudentStruct.name = "Pedro"

print(studantStruct.showFullName())
print(newStudentStruct.showFullName())


