FactoryGirl.define do
  factory :message, class: Tincanz::Message do |f|
    association :conversation, strategy: :build
    user
    content "Hi how are you?"

    after :create do |m|
      m.recipients = [create(:user)] unless m.recipients.present?
    end
  end
end

