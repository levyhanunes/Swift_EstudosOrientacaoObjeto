import UIKit

for semana in 1...7{
    print("\(semana) dia da semana")
}

for meses in 1..<13{
    print("Salario referente ao mes \(meses)")
}
	
//for in para estruturas

let diasDaSemana = ["Domingo", "Segunda-Feira", "Terca-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sabado"]

for dia in diasDaSemana {
    print("O dia da semana e \(dia)")
}



let numeros = [1, 2, 3, 4, 5]

for (index,item) in numeros.enumerated() {
  print("\(item) vezes 5 = \(item * 5)")
}


for numero in 1...5 {
    print("\(numero) vezes 5 = \(numero * 5)")
}



//pegar todos com o predixo Michael
let names = ["Michael Jackson", "Taylor Swift", "Michael Caine", "Adele Adkins", "Michael Jordan"]

for i in stride(from: 0, through: 5, by: 2){
    print(names[i])
}


let valor : [Int : Any] = [1: "a", 2: "b", 3: "c", 4: "d", 5: "e",6: "f",7: "g",8: "h",9: "i",10: "j"]

for numero in  stride(from: 1, through: 10, by: 2){
    print(valor[numero]!)
}

var contador = 100
/*
while contador > 0 {
    print(contador)
    contador -= 1
} */


// repeat while sintax

var numeroPensado = 3
var numeroComputador = Int()
var tentativas = 0


repeat {
    tentativas += 1
    numeroComputador = Int(arc4random_uniform(10))
} while (numeroPensado != numeroComputador) && (tentativas <= 10)

if tentativas < 11 {
    print("Voce acertou em \(tentativas) de tentativas")
}else {
    print("Voce errou todas as tentativas")
}


func hello(){print("Hello!")}

print(hello())


func funcao(){print("Minha primeira funca em Swift 🧡")}

funcao()


func cumprimento(user: String) -> String{
   return "Bom dia, \(user)"
}

let comprimentando = cumprimento(user: "Andre Paganin")


print("Voce tem uma nova mensagem: \(comprimentando)")
