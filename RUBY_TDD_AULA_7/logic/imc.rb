def imc(peso,altura)
    if altura == 0
        return 'Não é possível calcular o IMC se altura = 0!'
    end
    if peso == 0 
        return 'Não é possível calcular o IMC se peso = 0!'
    end
    imc_calculado = peso / (altura**2)
    return imc_calculado.round(1)
end