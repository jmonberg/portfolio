require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_confirmation_of :password }

end
# it 'sends an email when a user is created' do
#   user = FactoryGirl.create :user
#   # the first 'to' is the 'to' as in 'deliver to':
#   expect(UserMailer.deliveries.last.to).to eq [user.email]
# end

# end
