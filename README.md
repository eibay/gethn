GetHN
=====
This is a hacker news aggregator web application. The main topic to gather was preset initially as "nodejs" and gets fetched once every hour. It allows user to hover and delete news from the main page or view it in detail on a separate page. "Remove" button sets display flag to off and will no longer be displayed on the listing. "Delete" button will totally remove a single record from database. During the initial launch, data is persisted right away in the database.

### Run these commands from your terminal in order to use this program:
  - "command T" or "ctrl T"                      : command T for mac / ctrl T for windows to open a new terminal window
  - "git clone https://github.com/eibay/gethn"   : creates a local copy to your computer
  - "rails db:create db:migrate"                 : builds database, tables and initial data
  - "rails db:seed"                              : (optional) pre-populate database with initial records of data                  
  - "rails server"                               : runs the rails server and force the initial download of news data
  - "open http://localhost:3000"                 : opens default browser window

### Settings
  - The default hourly fetch interval can be changed from *"config/initializers/aggregator.rb"* at line 36,
  *hourly_fetch = scheduler.every '60m'*  :means 60 minutes

### Future implementations
  - rendering of frontend every time there's a new record on database without page refresh
  - test coverage

### This app is built using these technologies. Kindly visit the link if you have not installed them yet.
- Version system : [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Language       : [Ruby 2.4.2](https://www.ruby-lang.org/en/downloads/)
- MVC Framework  : [Rails 5.1.4](http://rubyonrails.org/)
- Database       : [Postgresql](http://postgresguide.com/setup/install.html)

### Feedback And Support 
- web: [eibayan.com](http://eibayan.com)
