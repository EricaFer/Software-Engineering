module TextFile

    def read_file(file_name)

        events = []

        file = File.open(file_name, "r:ISO-8859-1:UTF-8")

        file.each{ |each_line|
            string = each_line.scan(/\d{2}\/{1}\d{7}\s{4}.*/)
            if string.length > 0
                events << string[0].split(/\s{4}/)
            end
        }
        file.close
        
        return events

    end

    def sort(arr)

        choice = yield

        if choice == 'name'
            
            sorted = arr.sort() { |a, b| a[1] <=> b[1]}

        elsif choice == 'registration'
            
            sorted = arr.sort() { |a, b| a[0] <=> b[0]}
    
        end
        
        sorted.each{|arr|
         puts (arr[0] + "\t" + arr[1])
        }

    end
end

include TextFile

test = TextFile.read_file('engsoft.txt')
TextFile.sort(test){'registration'}

print("\n\n\n\n")

TextFile.sort(test){'name'}

