def wtf_pyramid
    height = 0
    while height.even? || height <= 0
      puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
      print "> "
      height = gets.chomp.to_i
  
      if height.even? || height <= 0
        puts "Le nombre doit être impair et positif. Réessaie."
      end
    end
  
    puts "Voici la pyramide :"
    
    mid_point = height / 2
  
    (0..mid_point).each do |i|
      spaces = ' ' * (mid_point - i)
      hashes = '#' * (2 * i + 1)
      puts spaces + hashes
    end
  
    (mid_point - 1).downto(0) do |i|
      spaces = ' ' * (mid_point - i)
      hashes = '#' * (2 * i + 1)
      puts spaces + hashes
    end
  end
  
  wtf_pyramid
  
