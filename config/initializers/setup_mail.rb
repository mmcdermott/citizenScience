if Rails.env != 'test'
  email_settings = YAML::load(File.open("#{Rails.root.to_s}/config/email.yml"))
  email_settings[Rails.env][:password] = ENV['SMTP_PASSWORD']
  ActionMailer::Base.smtp_settings = email_settings[Rails.env] unless email_settings.nil?
end
