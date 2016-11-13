class CartItem < ActiveRecord::Base
  has_many :patterns
  has_many :strands
  has_many :fabrics
  has_many :kits
  has_many :accessories
  belongs_to :user
  def product
    if self.pattern_id.present?
      pattern = Pattern.find_by(id: self.pattern_id)
    elsif self.strand_id.present?
      strand = Strand.find_by(id: self.strand_id)
    elsif self.fabric_id.present?
      fabric = Fabric.find_by(id: self.fabric_id)
    elsif self.kit_id.present?
      kit = Kit.find_by(id: self.kit_id)
    elsif self.accessory_id.present?
      accessory = Accessory.find_by(id: self.accessory_id)
    end    
  end
end
