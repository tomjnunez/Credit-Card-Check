
class CreditCheck

  def initialize
    @card_number
  end

  def changing_to_array(card_number)
    array_card_number = card_number.digits
    return array_card_number

  end

  def doubling_odd(array)
    doubled_array = []
    array.each_with_index do |digit, index|
      if index.odd?
        doubled_array[index] = digit * 2
      else
        doubled_array[index] = digit
      end
    end
    return doubled_array
  end

  def subtracting_nine(doubled_array)
    array4 = []
    doubled_array.each.with_index do |number|
      if number > 9
        number = number - 9
        array4 << number
      else
        array4 << number
      end
    end
    total = array4.sum
    return total

  end


  def last_step_algorithm(total,card_number)
    if total % 10 == 0
      return "The number #{card_number} is valid"
    else
      return "The number #{card_number} is invalid"
    end
  end

    def validation_output(card_number)
      card_number_array = changing_to_array(card_number)
      doubled_array = doubling_odd(card_number_array)
      card_number_array = subtracting_nine(doubled_array)
      total = last_step_algorithm(card_number_array, card_number)
    end
    def last_step_algorithm_boolean(total,card_number)
      if total % 10 == 0
        return true
      else
        return false
      end
  end

    def valid_number?(card_number)
      card_number_array = changing_to_array(card_number)
      doubled_array = doubling_odd(card_number_array)
      card_number_array = subtracting_nine(doubled_array)
      total = last_step_algorithm_boolean(card_number_array, card_number)
    end
end
