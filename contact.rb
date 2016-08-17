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
		@second_name = second_name
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
end

get '/contacts' do
	Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
	Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
	Contact.create('Steve', 'Jobs', 'steve@apple.com', 'Visionary')
	erb :contacts
end