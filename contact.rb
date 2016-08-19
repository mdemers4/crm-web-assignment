# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
class Contact

	attr_accessor(:first_name, :last_name, :email, :note, :id)


	@@contacts = []
	@@id = 1

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
		@id = @@id
		@@id += 1
		@@contacts << self
	end
	def self.all
		return @@contacts
	end
	def self.create(first_name, last_name, email, note)
		new_contact = Contact.new(first_name, last_name, email, note)
		return new_contact
	end

	def self.find(id)
		@@contacts.find { |contact| contact.id == id }
	end

	
	def self.find_by(attribute, value)

		if attribute == "first name"

			@@contacts.each do |contact|
				if value == contact.first_name
					return contact #[contact.first_name, contact.last_name, contact.email, contact.note, contact.id]
				end
			end
			
		elsif attribute == "last name"

			@@contacts.each do |contact|
				if value == contact.last_name
					return contact #[contact.first_name, contact.last_name, contact.email, contact.note, contact.id]
				end
			end


		elsif attribute == "email"

			@@contacts.each do |contact|
				if value == contact.email
					return contact #[contact.first_name, contact.last_name, contact.email, contact.note, contact.id]
				end
			end
		else
			"the attribute #{attribute} is not searchable, try again"
			self.find_by()
		end
	end

	def self.remove_all()
		return @@contacts = []
	end

	def full_name()
		return "#{@first_name} #{@last_name}"
	end

	def update(attribute, change)
		if attribute == "first name"
			@first_name = change
		elsif attribute == "last name"
			@last_name = change
		elsif attribute == "email"
			@email = change
		elsif attribute == "note"
			@note = change
		else
			"attribute does not exist"
		end
	end
	
	def update_all_attributes(first_name, last_name, email, note)
		@first_name = change
		@last_name = change
		@email = change
		@note = change
	end

	def delete()
		return @@contacts.delete(self)
	end
end
