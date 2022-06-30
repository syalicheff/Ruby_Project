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

$achatcrypto = #je sais pas par quoi remplir  mais le prix au moment ou il a achete la crypto
$pourcentage = 10   # exemple si on veut un calcul avec 10% de perte ou augmentation

if $achactcrypto <= $achatcrypto * (1 - $pourcentage/100)
	puts "Je vous conseilles d'achete maintenant, la valeur à baisser de 10%"

elsif $achactcrypto >= $achatcrypto * (1 + $pourcentage/100)
	puts "Je vous conseilles de vendre maintenant, la valeur à augemente de 10% comparer à votre achat"

end