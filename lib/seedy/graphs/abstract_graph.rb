module Seedy
  class AbstractGraph
    @@related_records = {
      :teams => 0,
      :accounts => 0,
      :bugs => 0,
      :calls => 0,
      :cases => 0,
      :contacts => 0,
     	:documents=> 0,
      :emails => 0,    
     	:email_addresses => 0,
      :leads => 0,
      :meetings => 0,
      :notes => 0,
      :opportunities => 0,
      :products => 0,
      :product_bundles => 0,
      :quotes => 0,
      :tasks => 0,
    }    
    
    @@records = {}
    @@buffer  = Seedy::AbstractBuffer
    
    # Adds an ID to the id array
    def add(mod,id)
      @@records[mod] = [] unless @@records[mod].class == Array
      @@records[mod] << id
    end
    
    # Selects a random ID from the id array for a given module
    def select(mod)
      @@records[mod][rand(@@records[mod].length - 1)]
    end
    
    def records
      @@related_records
    end
    
    # Our buffer
    def buffer
      @@buffer
    end
    
    def create_user
      user = Users.build
      puts user.to_sql
      buffer << user
      add(:users, user)
    end
    
    def create_teams
      mod = :teams
      records[mod].times {        
        team = Teams.build(select(:users))
        buffer << team
        add(mod, team.id)
      }
    end
    
    def create_accounts
      mod = :accounts
      records[mod].times {        
        account = Accounts.build(select(:users),select(:teams))
        buffer << account
        add(mod, account.id)
      }      
    end
    
    def create_bugs
      mod = :bugs
      records[mod].times {        
        bug = Bugs.build(select(:users),select(:teams), select(:accounts))
        buffer << bug
        add(mod, bug.id)
      }      
    end

    def create_contacts
      mod = :contacts
      records[mod].times {        
        contact = Contacts.build(select(:users),select(:teams), select(:accounts))
        buffer << contact
        add(mod, contact.id)
      }      
    end
    
    def create_cases
      mod = :cases
      records[mod].times {        
        cases = Cases.build(select(:users),select(:teams), select(:accounts))
        buffer << cases
        add(mod, cases.id)
      }      
    end
    
    def create_opportunities
      mod = :opportunities
      records[mod].times {        
        opp = Opportunities.build(select(:users),select(:teams), select(:accounts))
        buffer << opp
        add(mod, opp.id)
      }      
    end
    
    def create_leads
      mod = :leads
      records[mod].times {        
        lead = Leads.build(select(:users),select(:teams), select(:contacts), select(:opportunities), select(:accounts))
        buffer << lead
        add(mod, lead.id)
      }      
    end
      
    def create_calls
      mod = :calls
      records[mod].times {        
        call = Calls.build(select(:users),select(:teams), select(:contacts))
        buffer << call
        add(mod, call.id)
      }      
    end
    
    def create_emails
      mod = :emails
      records[mod].times {        
        email = Emails.build(select(:users),select(:teams))
        buffer << email
        add(mod, email.id)
      }      
    end
    
    def create_email_addresses
      mod = :email_addresses
      records[mod].times {        
        email = EmailAddresses.build()
        buffer << email
        add(mod, email.id)
      }      
    end      

  end
end