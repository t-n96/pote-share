class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(keyword)
    where(["address like? OR name like? OR introduction like?","%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end

  def self.search(area)
    where(["address like?", "%#{area}%"])
  end
end
