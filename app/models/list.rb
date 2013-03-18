class List
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :n, as: :name, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }
  
  embeds_many :columns
  embeds_many :items
  
  validates_presence_of :n
  validates_uniqueness_of :n
end
