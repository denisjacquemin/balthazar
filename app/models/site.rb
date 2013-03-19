class Site
  include Mongoid::Document
  
  field :n, as: :name, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }
  
  has_many :lists
  
  validates_presence_of :n
  validates_uniqueness_of :n
end
