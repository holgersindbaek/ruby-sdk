$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = "payment_rails"
  s.summary = "PaymentRails Ruby SDK"
  s.description = "Ruby SDK for interacting with the PaymentRails API"
  s.version = '0.1'
  s.homepage = 'https://www.paymentrails.com/'
  s.email = 'jesse.silber@paymentrails.com'
  s.license = "MIT"
  s.author = "PaymentRails"
  s.has_rdoc = false
  s.files = ["lib/payment_rails.rb"]
end
