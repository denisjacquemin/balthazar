class Site
  include Mongoid::Document
  field :n, as: :name, type: String
  
  has_many :lists
end
