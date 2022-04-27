def launch(options={})
  a = options[:'angle'] || 90
  b = options[:'astronauts'] || [:belka, :strelka]
  c = options[:'delay'] || 5

  c.downto(1) do |sec|
    print "\rSeconds left: #{sec}"
    sleep 1
  end
  puts
  puts "The rocket launched by angle #{a} with #{b} on board"
end

x = launch(angle: 27, delay: 3, astronauts: [:belka])
