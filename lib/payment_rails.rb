require 'payment_rails/configuration.rb'
require 'payment_rails/recipient_gateway.rb'
require 'payment_rails/recipient_account_gateway.rb'
require 'payment_rails/batch_gateway.rb'
require 'payment_rails/payment_gateway.rb'
require 'payment_rails/balance_gateway.rb'

class PaymentRails
  attr_reader :config
  attr_writer :config

  attr_reader :client
  attr_writer :client

  attr_reader :recipient
  attr_writer :recipient

  attr_reader :recipient_account
  attr_writer :recipient_account

  attr_reader :batch
  attr_writer :batch

  attr_reader :payment
  attr_writer :payment

  attr_reader :balance
  attr_writer :balance

  def initialize(publicKey, privateKey, enviroment)
    @config = Configuration.new(publicKey, privateKey, enviroment)
    @client = Client.new(@config)
    @recipient = RecipientGateway.new(client)
    @recipient_account = RecipientAccountGateway.new(client)
    @batch = BatchGateway.new(client)
    @payment = PaymentGateway.new(client)
    @balance = BalanceGateway.new(client)
  end
end
