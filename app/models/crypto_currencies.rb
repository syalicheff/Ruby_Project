require 'binance_api'
require 'httparty'

class Crypto
    def current_price(type, url ,opts = {})
        HTTParty.send(type, url ,opts)
    end

    def initialize(crypto)
        @crypto = crypto

    end
    def main()
        if is_a_crypto?
            puts('Y')
        else
            puts('N')
        end
    end

    def getPrice(crypto)
        current_price(:get,"https://api.coinbase.com/v2/prices/#{crypto}-usd/spot")
    end
end

    test = Crypto.new("BTC")
    # puts(test.main())
    puts('Le cours actuel du '"#{test.getPrice('eth')['data']['base']} est de #{test.getPrice('eth')['data']['amount']}$")