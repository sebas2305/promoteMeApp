class Enviroment < ApplicationRecord
  belongs_to :user

  def sentido_pertenencia
    ((q2 + q3)/2).round(2)
  end

  def relacion_jefe
    ((q4 + q5)/2).round(2)
  end

  def equipo
    ((q6 + q7)/2).round(2)
  end

  def condiciones
    ((q8 + q9)/2).round(2)
  end

  def carga
    ((q10 + q11)/2).round(2)
  end

  def ambiente
    ((q12 + q13)/2).round(2)
  end

  def compensacion
    ((q14 + q15)/2).round(2)
  end

  def desarrollo
    ((q16 + q17)/2).round(2)
  end

  def reconocimiento
    ((q18 + q19)/2).round(2)
  end

  def felicidad
    ((q20 + q21)/2).round(2)
  end

  def resultadoNumerico
    result = sentido_pertenencia * 0.05 + relacion_jefe * 0.05 + equipo * 0.05 + condiciones * 0.05 + carga * 0.05 + ambiente * 0.05 + compensacion * 0.175 + desarrollo * 0.175 + reconocimiento * 0.175 + felicidad * 0.175
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
