require 'rspec'
require_relative '../logic/Calculadora'

describe ('Calculadora') do
   calculadora = Calculadora.new

   #----------------TDD - somar ----------------#
   it('Deve somar dois números inteiros positivos') do
      expect(calculadora.somar(10,5)).to eq 15
   end

   it('Deve somar dois números inteiros negativos') do
      expect(calculadora.somar(-10,-5)).to eq -15
   end

   it('Deve somar um número qualquer com 0') do
      expect(calculadora.somar(10,0)).to eq 10
   end

   it('Deve somar um número positivo com um número negativo') do
      expect(calculadora.somar(10,-5)).to eq 5
   end

   #----------------TDD - subtrair ----------------#
   it('Deve subtrair dois números inteiros positivos') do
      expect(calculadora.subtrair(10,5)).to eq 5
   end

   it('Deve subtrair dois números inteiros negativos') do
      expect(calculadora.subtrair(-10,-5)).to eq -5
   end

   it('Deve subtrair um número qualquer com 0') do
      expect(calculadora.subtrair(10,0)).to eq 10
   end

   it('Deve subtrair 0 por qualquer outro número') do
      expect(calculadora.subtrair(0,10)).to eq -10
   end

   it('Deve subtrair um número positivo com um número negativo') do
      expect(calculadora.subtrair(10,-5)).to eq 15
   end

   #---------------- TDD - multiplicar ----------------#
   it('Deve multiplicar dois números inteiros positivos') do
      expect(calculadora.multiplicar(10,5)).to eq 50
   end

   it('Deve multiplicar dois números inteiros negativos') do
      expect(calculadora.multiplicar(-10,-5)).to eq 50
   end

   it('Deve multiplicar um número qualquer com 0') do
      expect(calculadora.multiplicar(10,0)).to eq 0
   end

   it('Deve multiplicar 0 por qualquer outro número') do
      expect(calculadora.multiplicar(0,10)).to eq 0
   end

   it('Deve multiplicar um número positivo com um número negativo') do
      expect(calculadora.multiplicar(10,-5)).to eq -50
   end

   #---------------- TDD - dividir ----------------#
   it('Deve dividir dois números inteiros positivos') do
      expect(calculadora.dividir(10,5)).to eq 2
   end
   
   it('Deve dividir dois números inteiros negativos') do
      expect(calculadora.dividir(-10,-5)).to eq 2
   end
   
   it('Deve dividir um número qualquer com 0') do
      expect(calculadora.dividir(10,0)).to include 'Não é possível dividir por 0!'
   end
   
   it('Deve dividir 0 por qualquer outro número') do
      expect(calculadora.dividir(0,10)).to eq 0
   end
   
   it('Deve dividir um número positivo com um número negativo') do
      expect(calculadora.dividir(10,-5)).to eq -2
   end

   #---------------- TDD - potencia ----------------#
   it('Deve elevar um número inteiro positivo por outro número inteiro positivo') do
      expect(calculadora.potencia(2,3)).to eq 8
   end
   
   it('Deve elevar um número inteiro e positivo por 0') do
      expect(calculadora.potencia(10,0)).to eq 1
   end

   it('Deve elevar um número inteiro e negativo por um número inteiro positivo') do
      expect(calculadora.potencia(-5,3)).to eq -125
   end
   
   it('Deve elevar 0 por por outro número inteiro e positivo') do
      expect(calculadora.potencia(0,10)).to eq 0
   end
   
   it('Deve elevar um número inteiro positivo por um número inteiro negativo') do
      expect(calculadora.potencia(5,-2)).to eq 0.04
   end

   #---------------- TDD - raiz ----------------#
   it('Deve calcular a raiz de número inteiro positivo') do
      expect(calculadora.raiz(9)).to eq 3
   end
   
   it('Deve calcular a raiz de um número inteiro negativo') do
      expect(calculadora.raiz(-9)).to include 'Não é possível calcular a raiz de um número negativo!'
   end
   
   it('Deve calcular raiz de 0') do
      expect(calculadora.raiz(0)).to eq 0
   end


end