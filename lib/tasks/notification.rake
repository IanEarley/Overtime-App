namespace :notification do
  desc "Sends SMS notification to employees asking them to log whether or not they had overtime"
  task sms: :environment do
    # User.all.each do |user|
    #   SmsTool.send_sms()
  end
end