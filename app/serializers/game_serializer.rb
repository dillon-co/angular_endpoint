class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :created_at

  def name
    object.name.capitalize
  end

  def score
    if object.score > 9000
      "ITS OVER NINE THOUUSSSAAAAAAAAAAAND!!!!"
    else
      object.score
    end
  end

  def created_at
    object.created_at.strftime('%d/%m/%Y')
  end
end
