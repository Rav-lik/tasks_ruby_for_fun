puts %q(dial a phone number)
@tel = gets.chomp.upcase.chars

#555-MATRESS

def phone_to_number (*)
    arr = [
        %w(0),
        %w(1),
        %w(A B C),
        %w(D E F),
        %w(G H I),
        %w(J K L),
        %w(M N O),
        %w(P Q R S),
        %w(T U V),
        %w(W X Y Z)
    ]

    @tel.each_index do |k|
        print @tel[k] if @tel[k] == "5"
        arr.each_index do |j|
            arr[j].each_index do |i|
                print " --#{j}-- " if arr[j][i].include?(@tel[k])
                p j if arr[j][i].include?(@tel[k])
            end
        end
    end
end

phone_to_number('555MATRESS')
