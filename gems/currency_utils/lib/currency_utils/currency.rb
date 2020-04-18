require 'active_model'

module CurrencyUtils
  class Currency
    include ActiveModel::Model

    attr_accessor :date, :country, :rate

    def attributes
      {
        date: date,
        country: country,
        rate: rate
      }
    end
  end
end
