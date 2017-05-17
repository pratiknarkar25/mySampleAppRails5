class Animal < ApplicationRecord
	 # belongs_to :blog 
   self.inheritance_column = :race  

	 def self.races
   		%w(Lion WildBoar Meerkat)
   end

   scope :lions, -> { where(race: 'Lion') }
   scope :meerkats, -> { where(race: 'Meerkat') }
   scope :wild_boars, -> { where(race: 'WildBoar') }

  def talk 
    raise 'Abstract Method' 
	end
end
