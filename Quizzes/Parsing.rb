File.foreach("engsoft.txt", encoding: 'windows-1252') { |each_line|
    string = each_line.scan(/\d{2}\/{1}\d{7}\s{4}.*/)
    if string.length > 0
        puts string[0].gsub(/\s{4}/,"\t")
    end
}

