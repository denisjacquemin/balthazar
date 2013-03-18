class Column
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :n, as: :name, type: String
  field :t, as: :type, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }
  
  embedded_in :list
  
  validates_presence_of :n
  validates_uniqueness_of :n
  
end