class Jogo < ApplicationRecord

    belongs_to :classificacao
    has_many :bibliotecas_de_usuario, class_name: "Biblioteca"

    validates :titulo, :desenvolvedora, :descricao, :lancamento, presence: true
   

    scope :por_titulo, lambda { |titulo = nil|

            where(titulo: titulo) if titulo
    }
>>>>>>> 7bda3ac50de0afa7ee9eba8a18e5d96ef5dd3c4a
end
