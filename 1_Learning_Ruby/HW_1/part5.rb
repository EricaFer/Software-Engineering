class Class
    def attr_accessor_with_history(attr_name)
     attr_name = attr_name.to_s # make sure it's a string
     attr_reader attr_name # create the attribute's getter
     attr_history =  attr_name+"_history" # create bar_history getter
     attr_reader attr_history
     # OBS: #{} => equivalente a f string em Python
     # aqui coloco a "f-string" para substituir o nome de attr_history que
     # ainda n sei => definido pelo usuário
     class_eval %Q{
        def #{attr_name}=(value)
            if @#{attr_name}_history.nil?
                @#{attr_name}_history = [nil]
            end
            @#{attr_name}_history.push(value)
        end
     }
    end
end
class Foo
    attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
f = Foo.new
f.bar = 4

print(f.bar_history)