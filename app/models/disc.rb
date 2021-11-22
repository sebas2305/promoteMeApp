class Disc < ApplicationRecord
  belongs_to :user

  def contar_d
    mas = 0
    menos = 0
    i=1
    while i < 29
      if eval('q' + i.to_s) == 1
        mas = mas +1
      end
      if eval('q' + i.to_s + 'n') == 1
        menos = menos +1
      end
      i = i +1
    end
    return mas - menos
  end

  def contar_i
    mas = 0
    menos = 0
    i=1
    while i < 29
      if eval('q' + i.to_s) == 2
        mas = mas +1
      end
      if eval('q' + i.to_s + 'n') == 2
        menos = menos +1
      end
      i = i +1
    end
    return mas - menos
  end

  def contar_s
    mas = 0
    menos = 0
    i=1
    while i < 29
      if eval('q' + i.to_s) == 3
        mas = mas +1
      end
      if eval('q' + i.to_s + 'n') == 3
        menos = menos +1
      end
      i = i +1
    end
    return mas - menos
  end

  def contar_c
    mas = 0
    menos = 0
    i=1
    while i < 29
      if eval('q' + i.to_s) == 4
        mas = mas +1
      end
      if eval('q' + i.to_s + 'n') == 4
        menos = menos +1
      end
      i = i +1
    end
    return mas - menos
  end

  def resultado_disc
    mayor = ''
    if contar_d >= contar_i and contar_d >= contar_s and contar_d >= contar_c
      mayor = 'D'
    end
    if contar_i >= contar_d and contar_i >= contar_s and contar_i >= contar_c
      mayor = 'I'
    end
    if contar_s >= contar_i and contar_s >= contar_d and contar_s >= contar_c
      mayor = 'S'
    end
    if contar_c >= contar_i and contar_c >= contar_s and contar_c >= contar_d
      mayor = 'C'
    end
    return mayor

  end

  def resultado_final

    if resultado_disc == 'D'
      return " Las personas del cuadrante D, tienen iniciativa propia y siguen adelante cuando las cosas se ponen difíciles. Se desempeñan mejor cuando tienen competencia y por lo general son directas, positivas y francas, a veces bruscas. Les gusta estar a cargo de las cosas y en el centro de lo que ocurre."
    elsif resultado_disc == 'I'
      return 'La persona I se desempeña mejor en u medio del contexto social, en situaciones en que interactúan individualmente con otras personas y cuando están libres del control y del detalle. Las personas I son amigables, extravertida, persuasivas y seguras de si mismas.'
    elsif resultado_disc == 'S'
      return 'La persona del cuadrante S se desempeña mejor en un ambiente relajado y amistoso sin mucha presión, que ofrezca seguridad, territorio limitado, una rutina predecible y reconocimiento por el trabajo realizado.Por lo general, es una persona amistosa, con buena disposición, bondadosa, a quien le gusta el hogar y es buen vecino.'
    else
      return 'Los métodos del individuo C son predeterminados, precisos, con atención al detalle. Prefiere adaptarse a las situaciones para evitar conflictos y antagonismo. Su instinto de conservación determina que documente todo lo que hace y trata de hacer todo lo que los demás quieren que haga. Debido a su cautela natural, prefiere ver en que sentido va la corriente. Sin embargo, una vez decidido, puede ser muy firme en ajustarse a los procedimientos.'
    end


  end

end
