class Toy
  include MongoMapper::Document
  set_collection_name 'toys'
  #set_database_name  'sandbox'

  before_validation :generate_id

  key :_id,                         String
  key :color,                       String, default: 'white'
  key :weight,                      Integer, default: 1
  key :has_wheels,                  Boolean, default: false

  #------------------------------------------------------------
  def generate_id
    if self.id.blank?
      self.id = Guid.new.to_s
    end  
  end

  #------------------------------------------------------------
  def wipe
    self.destroy
  end

end
