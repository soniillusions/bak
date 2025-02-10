def generateHashtag(str)
    if str == nil
        return false
        exit
    end

    result = "#" + str.split(' ').each { |word| word.capitalize }.join(' ')

    if result == nil || result.size > 140
        return false
        exit
    end

    return result
end


