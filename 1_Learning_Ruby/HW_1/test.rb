class Numeric
    @@currencies = {'dollar' => 1.0, 'yen' => 0.012, 'euro' => 1.3, 'rupee'=> 0.019}
  
    def method_missing(method_id)

      singular_currency = method_id.to_s.gsub(/s$/, '')

      if @@currencies.has_key?(singular_currency)
        self * @@currencies[singular_currency]
      else
        super
      end
    end
  
    def in(currency)
      singular_currency = currency.to_s.gsub(/s$/, '')
      self / @@currencies[singular_currency]
    end
  end
  
puts 5.rupee.in('euro')