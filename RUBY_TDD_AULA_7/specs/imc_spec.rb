require 'rspec'
require_relative '../logic/imc'

describe ('IMC') do

   it('Deve calcular com peso e altura corretos') do
    peso = 60
    altura = 1.70
    expect(imc(peso,altura)).to eq 20.8
   end

   it('Não deve calcular IMC se altura = 0') do
    peso = 60
    altura = 0
    expect(imc(peso,altura)).to include 'Não é possível calcular o IMC se altura = 0!'
   end

   it('Não deve calcular IMC se peso = 0') do
    peso = 0
    altura = 1.70
    expect(imc(peso,altura)).to include 'Não é possível calcular o IMC se peso = 0!'
   end
end