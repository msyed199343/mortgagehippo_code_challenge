# == Schema Information
#
# Table name: coins
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  value      :integer          not null
#  created_at :datetime
#  updated_at :datetime
#  count      :integer          default(1)
#

class Coin < ApplicationRecord
    validates :name, :value, presence: true

    
    def self.total
         #grabbing all items from :value by using pluck and getting the sum
         #divided by 100 to get the precise dollar value added .0 at the time to get closest decimal point 
            sum = Coin.pluck(:value).sum/100.0 
            return sum
    end
   



     
       
end


