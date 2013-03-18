class List
  include Mongoid::Document
  field :name, type: String
  
  embeds_many :columns
  embeds_many :items
  
  validates_presence_of :name
end
