def stairway
    position = 0
    puts "Bienvenue dans le super jeu de l'oie !"
    puts "Tu es au bas de l'escalier. Il y a 10 marches à monter."
    
    while position < 10
      puts "\nAppuie sur Entrée pour lancer le dé..."
      gets.chomp 
      
      de = rand(1..6)
      puts "Tu as lancé un #{de} !"
  
      if de == 5 || de == 6
        position += 1
        puts "Tu avances d'une marche ! Tu es maintenant à la marche #{position}."
      elsif de == 1
        position -= 1 if position > 0 
        puts "Tu descends d'une marche... Tu es maintenant à la marche #{position}."
      else
        puts "Rien ne se passe... Tu es toujours à la marche #{position}."
      end
  
      if position == 10
        puts "\nFélicitations ! Tu as atteint la 10ème marche ! 🎉"
        break  
      end
    end
  end
  
  stairway
  