class CartItem < ActiveRecord::Base
  has_many :patterns
  has_many :strands
  has_many :fabrics
  has_many :kits
  has_many :accessories
  belongs_to :user
  def product
    if self.pattern_id.present?
      Pattern.find_by(id: self.pattern_id)
    elsif self.strand_id.present?
      Strand.find_by(id: self.strand_id)
    elsif self.fabric_id.present?
      Fabric.find_by(id: self.fabric_id)
    elsif self.kit_id.present?
      Kit.find_by(id: self.kit_id)
    elsif self.accessory_id.present?
      Accessory.find_by(id: self.accessory_id)
    end
  end
  def category
    if self.pattern_id.present?
      "Pattern: "
    elsif self.strand_id.present?
      "Thread: "
    elsif self.fabric_id.present?
      "Fabric: "
    elsif self.kit_id.present?
      "Kit: "
    elsif self.accessory_id.present?
      "Accessory: "
    end
  end
end
