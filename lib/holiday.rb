require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas].push (supply)
  holiday_hash[:winter][:new_years].push (supply)
  holiday_hash


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

    holiday_hash[season][holiday_name] = supply_array

    holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  w = holiday_hash[:winter]

  v = w.collect do |k, v|
    v
  end

  v = v.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |k, v|
    kn = k.to_s
    kn = kn.capitalize!
    puts "#{kn}:"
      v.each do |hk, hv|
        str = ''
        hkn = hk.to_s
        counter = 0

        hkn.capitalize!

        while counter < hkn.size
          char = hkn[counter]
          if (char == "_")
            hkn[counter] = " "
            hkn[counter+1] = hkn[counter+1].upcase
          end
          counter+= 1
        end
        hv.each do |e|
          str += e
          if (e != hv[-1])
            str+= ", "
          end
        
        end
        puts "  #{hkn}: #{str}"
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  bbq = []

  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, array|
      if array.include? ("BBQ")
        bbq.push(holiday)
      end
    end
  end
  bbq

end







