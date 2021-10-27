class Mental < ApplicationRecord
  belongs_to :user
  def resultadoPercepcion
    result = q1 + q2 + q3 + q4 + q5 + q7 + q8
    result
  end

  def resultadoComprension
    result = q9 + q10 + q11 + q12 + q13 + q14 + q15 + q16
    result
  end

  def resultadoRegulacion
    result = q17 + q18 + q19 + q20 + q21 + q22 + q23 + q24
    result
  end

  def resultadoPercepcionTextoH
    if resultadoPercepcion < 21
      "Debes mejorar tu percepción, prestas poca atención a los detalles"
    elsif resultadoPercepcion > 22 and resultadoPercepcion < 32
      "Percepción Adecuada"
    else
      "Debe mejorar su percepción, presta demasiada atencioón"
    end
  end

  def resultadoPercepcionTextoM
    if resultadoPercepcion < 24
      "Debes mejorar tu percepción, prestas poca atención a los detalles"
    elsif resultadoPercepcion > 25 and resultadoPercepcion < 35
      "Percepción Adecuada"
    else
      "Debe mejorar su percepción, presta demasiada atencioón"
    end
  end

  def resultadoComprensionTextoH
    if resultadoComprension < 25
      "Debe mejorar su comprensión"
    elsif resultadoComprension > 26 and resultadoComprension < 35
      "Comprensión Adecuada"
    else
      "Excelente comprensión"
    end
  end

  def resultadoComprensionTextoM
    if resultadoComprension < 23
      "Debes mejorar tu comprensión"
    elsif resultadoComprension > 24 and resultadoComprension < 34
      "Comprensión Adecuada para tu perfil"
    else
      "Excelente comprensión"
    end
  end

  def resultadoRegulacionTextoH
    if resultadoComprension < 23
      "Debes mejorar tu regulación, prestas poca atención a los detalles"
    elsif resultadoComprension > 24 and resultadoComprension < 35
      "Percepción Adecuada para tu perfil"
    else
      "Excelente regulación"
    end
  end

  def resultadoRegulacionTextoM
    if resultadoComprension < 23
      "Debes mejorar tu regulación"
    elsif resultadoComprension > 24 and resultadoComprension < 34
      "Regulación Adecuada"
    else
      "Excelente regulación"
    end
  end


  def resultadoNumerico
    result = 20
  end

  def resultado
    "Eres capaz de sentir y expresar los sentimientos de forma adecuada. Cuentas con buena estabilidad emocional"
  end

end
