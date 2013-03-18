class Item
  include Mongoid::Document
  field :values, type: Hash
  field :metas,  type: Hash
  
  embedded_in :list
  
end
