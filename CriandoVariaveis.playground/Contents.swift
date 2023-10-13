import UIKit

// Criando as primeiras variaveis

// 1 -> var
// EXEMPLO Variáveiscom  TIPAGEM Implicita ---------
var marcaBatera = "Roland"

//print("Minha bateria é uma : " + marcaBatera)

// EXEMPLO Variáveis com TIPAGEM Explicita ----------

var nome: String = "Jefferson"
//print(nome)

var num1: Int = 12
//print(num1)

var num2: Double = 1.98765432321
//print(num2)

var num3: Float = 1.98765432321
//print(num3)

var num4: Bool = true

//MARK: ------------------------------------------------------------

//ALTERANDO VARIAVEL

var nomes: String = "Jefferson"
nome = "Arthur"

//print(nome)


//MARK: CONTANTS -----------------------------------------

// MUDA DE var PARA -> let nao pode alterar seu valor

let totalDesconto: Double = 1.2
//print(totalDesconto)

// MARK: OPCIONAIS ------------------------
//nil é equivalente a null em outras linguagens
// variavel pode ou nao receber um valor


var num5: String
var myName: String? = nil
var myAge: Int? = nil

num5 = "Jeff"

// tratamento para nao imprimir valor nil
//print("My name is: \(myName ?? "Sem nome")")


var primeiroNome: String = "Daiany"
var segundoNome: String? = "Alves"

var frase: String = "Primeiro nome: \(primeiroNome) Sobrenome: \(segundoNome ?? "nao tem") "
//print(frase)


var minhaCarteira: Double? = 1000
var total: Double = minhaCarteira ?? 2.0
//print(total)


//MARK: MANIPULANDO VARIAVEIS

// formando frases

//Concatenacao: juntando as franses com as variaveis ou apenas com outra variavel
var frases2: String = "Primeiro nome:" + " " + primeiroNome + "Sobrenome:" + (segundoNome ?? "Deu ruim")
print(frases2)

//Interpolação: inserindo uma variavel dentro de uma frase "String"
var frases: String = "Primeiro nome: \(primeiroNome) Sobrenome: \(segundoNome ?? "nao tem") "
print(frases)


// inserindo valor Int em uma String
var fraseIdade: String = "minha idade é \(num1)"
print(fraseIdade)


// CONVERTENDO TIPO DE VARIAVEL PARA Int
var minhaIdade: Double = 35.6
var minhaIdadeInt: Int = Int(minhaIdade)
print(minhaIdadeInt)

var minhaIdades: Int = 35
var minhaIdadeInts: Double = Double(minhaIdade)
print(minhaIdadeInts)

// quando convertemos uma String pra um Inteiro compilador identificar uma opcional entao sempre colocar tratamento caso
// o valor da variavel nao seja apenas numero
var teste: String = "34 anos"
var teste1: Int = Int(teste) ?? 0
print(teste1)


//REVISÃO M1

// DECLARANDO VARIAVEL E TIPAGEM
var ajum: String = "teste"

// sem especificar o tipo de variavel o mesmo é reconhecido pelo tipo de conteudo
var interio = "teste"

var inteiro: Int = 14

var boleano: Bool = true

var floate: Float = 1.98765432321
var dou: Double = 1.98765432321

ajum = "jeff"

print(ajum)

// CONSTANT

let const: String = "jeff"


//optionais
var option: String? = nil
//tratamento opcional
print(option ?? "nao tem")


// manipulando variaveis
var frase10: String = "primeiro nome: " + primeiroNome + " " + "Segundo nome: " + (segundoNome ?? " EEEPA EEEPA")
print(frase10)


//CRIANDO CLASS FUNCOES E INSTANCIA DE OBJETO REVISAO M1
class Instrumento{
    
    func violao(){
        print("vc acessou Violao madeira nobre TAYLOR")
    }
    
    func teclado(){
        print("voce acesso teclado NORD")
    }
    
    func bateria(){
        
        print("voce acesso batera Ludwing")
    }
    
    func contraBaixo(){
        print("voce acesso ao Baixo FENDER JAZZBASS")
    }
    
    func guitarra(){
        print("acessou guitarra FENDER STRATO")
    }
    
    // REVISAO CONDICIONAL
    func trompete(qualidadeTromp: Int){
        var trompe: Int = 2
        
        if qualidadeTromp <= trompe {
            print("Trompete de qualidade duvidosa")
        }else{
            print("Trompete de boa qualidade")
        }
    }
    
    func violino(){
        var index: Int = 0
        
        while index <= 10 {
            print("O index é: \(index)")
            index = index + 1
            
        }
        print(" o index Final é: \(index)")
    }
    
    func congas(){
        var indexRepeat: Int = 1
        repeat{
            print("indexRepeat é:  \(indexRepeat)")
            indexRepeat = indexRepeat + 1
        }while indexRepeat <= 10
                print("O indexRepeat final \(indexRepeat)")
    }
    
    
    // FUNCAO COM REPETICAO DOR REVISAO M1
    func carrilhao(){
        var indexFor: Int = 0
        
        for indexFor in 1...6{
            print(indexFor)
        }
                
    }
}

// Instancia objeto
var meuInst: Instrumento = Instrumento()

meuInst.trompete(qualidadeTromp: 5)
meuInst.violino()
meuInst.congas()
meuInst.carrilhao()
        
print(meuInst.bateria())
