//: Playground - noun: a place where people can play

import UIKit

//---------------------------------------------------------------
//: Author - Cauê Scalzaretto
//: Site - http://www.cauescalzaretto.com
//: GitHub - https://github.com/cauescalzaretto
//---------------------------------------------------------------

// Principais Conceitos:
//
// subscript é uma chave que utilizamos para extrair uma informação de uma coleção, podemos utilizá-lo
// para definir e recuperar valores de índice sem a necessidade de métodos distintos para configuração
// e recuperação.
//
// Sintaxe:
//
//subscript(index: Int) -> Int { get {
//    // retorne algum valor.
//    }
//    set(newValue) {
//        // execute alguma ação
//    }
//}

// Exemplo
class Pessoa
{

    // Declaração de propriedades
    var nome: String = ""
    var idade: Int = 0
    private var cargos = [String]()
    
    func definirCargo(comArray array : [String])
    {
        self.cargos = array
    }
    
    func perfil()
    {
        print("Meu nome é \(nome) e tenho \(idade)")
    }
    
    // Permite acessar a propriedade cargos
    subscript(index : Int) -> String
    {
        // retorna um indice da propriedade cargos
        get
        {
            return self.cargos[index]
        }
        
        // define uma posicao da propridade cargos
        set(novoValor)
        {
            self.cargos += [novoValor]
        }
    }
}

var caue = Pessoa()

var arrayCargos = [String]()

caue.nome = "Cauê"
caue.idade = 40
caue.definirCargo(comArray: arrayCargos)

// defnindo a posição "0"(ZERO) de cargos
caue[0] = "Developer"

caue.perfil()

// Imprimindo a posição "0"de cargps
print(caue[0])

