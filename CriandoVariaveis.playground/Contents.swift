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

//Concatenacao: juntando as franses com as variaveis ou apenas com outra variavel ================================================================================================
var frases2: String = "Primeiro nome:" + " " + primeiroNome + "Sobrenome:" + (segundoNome ?? "Deu ruim")
print(frases2)

//Interpolação: inserindo uma variavel dentro de uma frase "String" ================================================================================================
var frases: String = "Primeiro nome: \(primeiroNome) Sobrenome: \(segundoNome ?? "nao tem") "
print(frases)


// inserindo valor Int em uma String  ================================================================================================
var fraseIdade: String = "minha idade é \(num1)"
print(fraseIdade)


// CONVERTENDO TIPO DE VARIAVEL PARA Int  ================================================================================================
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

// DECLARANDO VARIAVEL E TIPAGEM ================================================================================================
var ajum: String = "teste"

// sem especificar o tipo de variavel o mesmo é reconhecido pelo tipo de conteudo  ================================================================================================
var interio = "teste"

var inteiro: Int = 14

var boleano: Bool = true

var floate: Float = 1.98765432321
var dou: Double = 1.98765432321

ajum = "jeff"

print(ajum)

// CONSTANT  ================================================================================================

let const: String = "jeff"


//optionais
var option: String? = nil
//tratamento opcional
print(option ?? "nao tem")


// manipulando variaveis
var frase10: String = "primeiro nome: " + primeiroNome + " " + "Segundo nome: " + (segundoNome ?? " EEEPA EEEPA")
print(frase10)


//CRIANDO CLASS FUNCOES E INSTANCIA DE OBJETO REVISAO M1 ================================================================================================
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
    
    // REVISAO CONDICIONAL  ================================================================================================
    func trompete(qualidadeTromp: Int){
        var trompe: Int = 2
        
        if qualidadeTromp <= trompe {
            print("Trompete de qualidade duvidosa")
        }else{
            print("Trompete de boa qualidade")
        }
    }
    
    // METODO DE REPETICAO WHILE ================================================================================================
    func violino(){
        var index: Int = 0
        
        while index <= 10 {
            print("O index é: \(index)")
            index = index + 1
            
        }
        print(" o index Final é: \(index)")
    }
    
    
    // REVISAO METODOS DE REPETICAO  REPEAT  ================================================================================================
    func congas(){
        var indexRepeat: Int = 1
        repeat{
            print("indexRepeat é:  \(indexRepeat)")
            indexRepeat = indexRepeat + 1
        }while indexRepeat <= 10
        print("O indexRepeat final \(indexRepeat)")
    }
    
    
    /// FUNCAO COM REPETICAO FOR REVISAO M1 ================================================================================================
    func carrilhao(){
        var indexFor: Int = 0
        
        for indexFor in 1...6{
            print(indexFor)
        }
        
    }
    
    // REVISAO LISTA ARRAY COM FOR E IF (procurando um valor sem saber a posicao)  ================================================================================================
    func listando(){
        var diasSemana: [String] = ["Segunda-fera","Terca-fera","Quarta-fera","Quinta-fera","Sexta-fera"]
        //var sexta: String = "Sexta-fera"
        
        // index busca a posicao e value pega o valor ================================================================================================
        for (index, value) in diasSemana.enumerated() {
            if value != "Sexta-fera"{
                print("Dia normal da semana!")
                // conta a quantidade elemento que possui a lista ================================================================================================
                print(diasSemana.count)
            }else{
                print("SEXTOUUU papai")
                // algo boolean retornado se a lista esta fazia ou nao ================================================================================================
                print(diasSemana.isEmpty)
            }
            
        }
    }
    var marcasBateria: [String] = ["RMV","LUDWING","PREMIER","MAPEX","ODERY","PEARL","DW","YAMAHA"]
    
    
    for (index, value) in marcaBatera.enumerated() {
        if value != "LUDWING"{
            print ("A Batera: \(value)")
        }else{
            print ("A Batera: \(value) é comum")
        }
    }
    
    var pratosBaterias: [String] = ["Zildjian","Octagon","Sabian","Turquish","Stambul"]
    
    for (index, value) in pratosBaterias.enumerated() {
        if value != "Stambul"{
            print("O prato \(value) é o melhor do mundo")
        }else{
            print("o pratos \(value) sao qualidade mediana")
        }
    }
    
    
    // Instancia objeto
    var meuInst: Instrumento = Instrumento()
    
    //meuInst.trompete(qualidadeTromp: 5)
    //meuInst.violino()
    //meuInst.congas()
    //meuInst.carrilhao()
    //meuInst.listando()
    
    print(meuInst.bateria())
    
    
    // revisao Dicionário principal diferenca entre o array é que os valores é por chave e valor ====================================================================================
    
    
    var dicionario: [Int: String] = [1:"bateria", 2:"Violao", 3:"Baixo",4:"teclado"]
    
    print(dicionario[1] ?? "SEM VALOR")
    
    dicionario.updateValue("bateriass", forKey:1)
    
    print(dicionario[1] ?? "SEM VALOR")
    
    // ao usar em um laço nao precisa de enumerated pois consegue pegar por key ou por value ====================================================================================
    for valueDicionario in dicionario{
        if valueDicionario.value == "teclado"{
            print("Achei")
        }else{
            print("procurando")
        }
    }
    
    
    class refrigerante {
        
        var quantidadeLitro: String = "2L"
        var possuiGas: Bool = true
        
        func fantaGuarana(){
            print("Aqui vc acessou a Fanta guarana")
        }
        
        var meuRefri: refrigerante = refrigerante()
        meuRe
    }
    
    var meuRefri: refrigerante = refrigerante()
    
    meuRefri.fantaGuarana()
    
    
    // METODO CONSTRUTOR =============================================================
    
    class calcas {
        
        var jeans: String
        var moleton: String
        
        init (jeans: String, moleton: String){
            self.jeans = jeans
            self.moleton = moleton
        }
        
    }
    
    var loja: calcas = calcas(jeans: "tecido aspero ", moleton: "tecido mole")
    
    
    //======================================== REVISAO HERANCA
    
    class Instrumentos{
        
        func solo (){
            print("Vai mlk brilha nesse solo")
        }
        
        func rife (){
            print("top esse rif  hein")
        }
        
    }
    
    class guitarra: Instrumentos {
        
        var base: Bool = true
        var cordas: Int = 6
        //override significa que estou sobrescrevendo a funcao que ja existe na herenca e
        override func rife() {
            print("Super top esse RIF cara!!")
        }
        
        
    }
    
    class teclado: guitarra {
        
        var base: Bool = true
        var teclas: Int = 6
        
    }
    
    var meusInst: teclado = teclado()
    meusInst.rife()
    
    //===========================================REVISAO STRUCT
    //    -> Muito parecido com uma classe porem a diferenca é que struct trabalhar com valor e class com referencia.
    //    -> struct nao tem necessidade de criar metodo construtor pois a mesma ja cria automaticamente
    //    -> Struct nao trabalha com heranca
    
    struct sobrado {
        var qtoPortas: Int
        var qtoBanheiro: Int
        var emConstrucao: Bool
    }
    
    var casaDavi: sobrado = sobrado(qtoPortas: 13, qtoBanheiro: 6, emConstrucao: true)
    var casaAtum: sobrado = sobrado(qtoPortas: 10, qtoBanheiro: 2, emConstrucao: false)
    
    print(casaDavi.qtoPortas)
    print(casaAtum.qtoPortas)
    
    casaDavi = casaAtum
    
    // Apenas o valor da porta de Davi será alterado pois struct nao traballha com referencia 
    casaDavi.qtoPortas = 90
    
    print(casaDavi.qtoPortas)
    print(casaAtum.qtoPortas)
