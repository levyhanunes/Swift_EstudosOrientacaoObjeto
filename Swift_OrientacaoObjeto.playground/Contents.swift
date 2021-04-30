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
print(levy.showFullName())





//MARK: NOVA CLASSE CARRO
class Car {
    
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
var porsche = Car(marca: "Porsche", modelo: "Caynne", cor: "Amarelo", age: 2020, ligado: true)


//MARK: - PRINT FUNCAO carroLigado()
print(porsche.estaLigado())
