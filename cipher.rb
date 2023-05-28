
def cipher(string, shift_factor)
    #store each element of the string into the new_string array
    #and convert the elements into its ascii value
    new_string = []
    string.chars.each do |char|
        new_string.push(char.ord)
    end
    #check if each element is an alphabet uppercase or lowercase
    modified_string = []
    new_string.map do |number|
        if number.between?(65,90) || number.between?(97,122)
            modified_string.push(number + shift_factor)
        else 
            modified_string.push(number.chr)
        end
    end

    #deduct 26 if element in modified_string is greater than 91 || 122
    final_string = []
    modified_string.map do |number|
        if  number.is_a?(Numeric) && number > 90 && number < 97 || number.is_a?(Numeric) && number > 122
            final_string.push(number - 26)
        else
            final_string.push(number)
        end
    end
    #print out final_string array with .chr

    puts new_string.inspect
    puts modified_string.inspect
    puts final_string.inspect
    puts final_string.map {|number| number.chr}.join('')

end
cipher("Seth!!", 5)

