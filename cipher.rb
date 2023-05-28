
def cipher(string)
    #store each element of the string into the new_string array
    #and convert the elements into its ascii value
    new_string = []
    string.chars.each do |char|
        ascii_value = char.ord
        new_string.push(ascii_value)
    end
    #check if each element is an alphabet uppercase or lowercase
    modified_string = []
    new_string.map do |number|
        if number.between?(65,90)
            modified_string.push(number)
        else 
            modified_string.push(number.chr)
        end
    end
    puts new_string
    puts modified_string.inspect
end

cipher("Seth!")

