
```
# install git and nodejs. This works on Ubuntu. If you use a different OS, please
# look for instructions to install these packages.
sudo apt-get install git nodejs

# Install the Ruby Version Manager (RVM) for installing Ruby.
# For more instructions, see https://rvm.io/rvm/install
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

# logout of your current session and login again
rvm install ruby 2.2.2 # you might need to enter your sudo password

# Download the code for the test application
git clone https://github.com/rhomeister/testapp.git

cd testapp

# Install 3rd party libraries
gem install bundler
bundle

bundle exec rails server # to run the server

bundle exec rspec # to run the tests
```
