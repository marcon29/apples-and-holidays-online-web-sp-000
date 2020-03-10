require 'pry'
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

def second_supply_for_fourth_of_july(holiday_hash)
     holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, item_list|
    item_list.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_list|
    puts season.to_s.capitalize+":"

    holiday_list.each do |holiday, supply_list|
<<<<<<< HEAD
      puts "  "+holiday.to_s.split("_").collect{ |word| word.capitalize}.join(" ")+": "+supply_list.join(", ")
=======
      puts holiday.to_s.split("_").collect{ |word| word.capitalize}.join(" ")+": "+supply_list.join(", ")
>>>>>>> 2f1e00487c9b75f6a22e48e934d3b067d0d002ab
    end
  end
end

holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


def all_holidays_with_bbq(holiday_hash)
   bbq_holiday = []

   holiday_hash.collect do |season, holiday_list|
      holiday_list.select do |holiday, supply_list|
         if supply_list.find {|supply| supply == "BBQ"}
            bbq_holiday.push(holiday)
         end
      end
   end

   bbq_holiday
end

all_supplies_in_holidays(holiday_hash)
