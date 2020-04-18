require 'net/https'
require 'uri'

module CurrencyUtils
  class Api
    BASE_URL = 'https://api.exchangeratesapi.io/latest?base=JPY'

    def get
      url = URI.parse(BASE_URL)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      res = http.get(url.path)
      data = res.body
      hash = JSON.parse(data)
      currencies = []
      hash["rates"].each do |key, value|
        c = Currency.new(date: hash["date"], country: key, rate: value)
        currencies.push(c)
      end
      currencies
    end
  end
end