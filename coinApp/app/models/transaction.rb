# == Schema Information
#
# Table name: transactions
#
#  id         :bigint           not null, primary key
#  coin_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transaction < ApplicationRecord
        validates :coin_id, null: false
        #belongs_to :user
end
