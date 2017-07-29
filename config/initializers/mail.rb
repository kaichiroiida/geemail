ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'stmp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'ksteadymail@gmail.com',
  password: 'iqXE8i6n',
  authentication: 'plain',
  enable_starttls_auto: true
}
