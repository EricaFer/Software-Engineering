file = File.open("engsoft.txt", "r:ISO-8859-1:UTF-8")

file.each{ |each_line|
    string = each_line.scan(/\d{2}\/{1}\d{7}\s{4}.*/)
    if string.length > 0
        puts string[0].gsub(/\s{4}/,"\t")
    end
}

file.close
