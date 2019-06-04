import UIKit

class Cliente {
    let nome:String
    
    init (nome:String){
        self.nome = nome
    }
}

class Pfisica:Cliente {
    let cpf:Int
    
    init (cpf:Int, nome:String){
        self.cpf = cpf
        super.init(nome: nome)
    }
}

class Pjurica:Cliente {
    let cnpj:Int
    
    init (cnpj:Int, nome:String){
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}

class Banco {
    let nomeBanco:String
    let endereco:String
    
    init(nomeBanco:String, endereco:String) {
        self.nomeBanco = nomeBanco
        self.endereco = endereco
    }
}

class Agencia:Banco {
    let numAgencia:Int
    
    init (numAgencia:Int, nomeBanco:String, endereco:String){
        self.numAgencia = numAgencia
        super.init(nomeBanco: nomeBanco, endereco: endereco)
    }
}

class Conta:Cliente {
    let saldo:Double
    let numConta:Int
    let numAgencia:Int
    init (numAgencia:Int, numConta:Int, saldo:Double, nome:String){
        self.numAgencia = numAgencia
        self.numConta = numConta
        self.saldo = saldo
        super.init(nome: nome)
    }
    
}

class TipoConta:Conta{
    let tipoConta:String
    init(tipoConta:String,numAgencia:Int, numConta:Int, saldo:Double, nome:String){
        self.tipoConta = tipoConta
        super.init(numAgencia:numAgencia, numConta:numConta, saldo:saldo, nome:nome)
    }
    func sacar(n1:Double) -> Double {
        if self.tipoConta == "poupanca" {
            var saldoAtual = self.saldo - n1 - 2.00
            print("Saldo atual: \(saldoAtual)")
            return saldoAtual
        }
        else if self.tipoConta == "corente"{
            var saldoAtual = self.saldo - n1 - 1.00
            print("Saldo atual: \(saldoAtual)")
            return saldoAtual
        }
        else{
            print("Tipo da conta invalido")
            return 0.00
        }
    }
    
    func depositar(n1:Double) -> Double {
        var saldoFinal = n1 + self.saldo
        print("Saldo atual = \(saldoFinal) ")
        return saldoFinal
    }
    
    func verSaldo() {
        var saldoAtual = self.saldo
        if self.tipoConta == "poupanca"{
            print("Saldo atual de \(saldoAtual)")
            let cheque = saldoAtual * 0.3
            print("Cheque especial \(cheque)")
        }
        else if tipoConta == "corrente"{
            print("Saldo atual de \(saldoAtual)")
        }
    }
}

let conta1 = TipoConta(tipoConta: "poupanca", numAgencia: 21, numConta: 0031, saldo: 1500.00, nome: "Paulo")

conta1.depositar(n1: 50.00)
conta1.sacar(n1: 100.00)
conta1.verSaldo()


