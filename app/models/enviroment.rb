class Enviroment < ApplicationRecord
  belongs_to :user

  def sentido_pertenencia
    return (q2 + q3)/2
  end

  def relacion_jefe
    return (q4 + q5)/2
  end

  def equipo
    return (q6 + q7)/2
  end

  def condiciones
    return (q8 + q9)/2
  end

  def carga
    return (q10 + q11)/2
  end

  def ambiente
    return (q12 + q13)/2
  end

  def compensación
    return (q14 + q15)/2
  end

  def desarrollo
    return (q16 + q17)/2
  end

  def reconocimiento
    return (q18 + q19)/2
  end

  def felicidad
    return (q20 + q21)/2
  end

  def resultadoNumerico
    result = sentido_pertenencia * 0.05 + relacion_jefe * 0.05 + equipo * 0.05 + condiciones * 0.05 + carga * 0.05 + ambiente * 0.05 + compensación * 0.175 + desarrollo * 0.175 + reconocimiento * 0.175 + felicidad * 0.175
    result.round(2)
  end

  def resultado
    if resultadoNumerico < 2.9
      "Muy alto"
    elsif resultadoNumerico > 2.9 and resultadoNumerico < 3.5
      "Alto"
    elsif resultadoNumerico > 3.5 and resultadoNumerico < 4
      "Medio"
    elsif resultadoNumerico > 4 and resultadoNumerico < 4.5
      "Bajo"
    else
      "Muy bajo"
    end

  end
end
