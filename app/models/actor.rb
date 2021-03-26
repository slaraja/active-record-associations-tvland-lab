class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def change
        create_table :actors do |t|
        t.string :first_name
        t.string :last_name
        end
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
       
    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end 

end