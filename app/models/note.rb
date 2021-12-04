# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  body       :text
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Note < ApplicationRecord
  belongs_to(:user)

  validates(:subject, {:presence => true })
end
