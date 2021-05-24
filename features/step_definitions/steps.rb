#é a biblioteca que tem o prato do dia
module Enjoeat
  def prato_do_dia(dia)
    if dia == "segunda-feira"
      "Virado a Paulista"
    elsif dia == "terça-feira"
      "Dobradinha"
    elsif dia == "quarta-feira"
      "Feijoada"
    elsif dia == "quinta-feira"
      "Macarronada"
    elsif dia == "sexta-feira"
      "Filé de Merluza"
    elsif dia == "sábado"
      "Veja o Cardápio"
    elsif dia == "domingo"
      "Fechado"
    else
      "Dia inválido"
    end
  end
end

World Enjoeat #expoe todos os métodos dentro do modulo

Dado("que hoje é {string}") do |dia|
  @hoje = dia
end

Quando("eu pergunto qual é prato do dia") do
  @resposta_obtida = prato_do_dia(@hoje)
end

#a resposta espera é a que está na massa de teste
Então("a resposta deve ser {string}") do |resposta_esperada|
  expect(@resposta_obtida).to eql resposta_esperada
end
