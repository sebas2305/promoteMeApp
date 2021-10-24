class Mental < ApplicationRecord
  belongs_to :user
  def resultadoNumerico
    result = 20
  end

  def resultado
    "Eres capaz de sentir y expresar los sentimientos de forma adecuada. Cuentas con buena estabilidad emocional"
  end

end
