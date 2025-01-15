def signup
  puts "Définissez un mot de passe"
  password = gets.chomp
  return password
end

def login(password)
  puts "Veuillez entrer votre mot de passe"
  mdp = gets.chomp

  while mdp != password
    puts "Mot de passe incorrect. Réessaie."
  mdp = gets.chomp
  end

  puts "Mot de passe correct."
end

def welcome_screen
  puts "Bienvenue dans votre zone secrète"
  puts "Quelques secrets"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform
