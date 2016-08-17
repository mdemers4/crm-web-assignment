# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
get '/contacts' do
  Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
  Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
  Contact.create('Steve', 'Jobs', 'steve@apple.com', 'Visionary')

  erb :contacts
end