class Laboral < ApplicationRecord
  belongs_to :user

  def resultadoNumerico
    result = (q1 + q2 + q3 + q4 + q5 + q7 + q8 + q9 + q10 + q11 + q12)
    result
  end

  def resultado
    if resultadoNumerico < 13
      "No existe síntoma alguno de estrés. Tienes un buen equilibrio, continúa así y contagia a los demás de tus estrategias de afrontamientos"
    elsif resultadoNumerico > 12 and resultadoNumerico < 37
      "Estrés leve. Te encuentras en fase de alarma, trata de identificar el o los factores que te causan estrés para poder ocupartee de ellos de manera preventiva"
    elsif resultadoNumerico > 36 and resultadoNumerico < 49
      "Estrés medio. Haz conciencia de la situación en la que te encuentras y trata de ubicar qué puedes modificar, ya que si la situación estresante se prolonga, puedes romper tu equilibrio entre lo laboral y lo personal. No agotes tus resistencias."
    elsif resultadoNumerico > 49 and resultadoNumerico < 60
      "Estrés alto. Te encuentras en una fase de agotamiento de recursos fisiológicos con desgaste físico y mental. Esto puede tener consecuencias más serias para tu salud."
    else
      "Estrés grave, busca ayuda"
    end
  end

end
