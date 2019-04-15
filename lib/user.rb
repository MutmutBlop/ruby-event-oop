#require 'pry'

class User # je crée ma classe user que je vais définir
  attr_accessor :email, :age # je permets de consulter, lire et modifier simplement l'email et l'âge
  @@all_users = []

  def initialize(email_to_save, age_to_save) # j'initialise les données qui doivent être ajoutées en même temps que la création de l'utilisateur
    @email = email_to_save
    @age = age_to_save
    @@all_users << self # j'ajoute le nouvel utilisateur à la liste de tous les utilisateurs
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    for user in @@all_users do
      if user.email == email
    #@@all_users.each { |user| return user if user.email == email }
    puts "Voici l'âge de l'utilisateur trouvé : #{user.age}"
      end
    end
  end

end

#binding.pry
