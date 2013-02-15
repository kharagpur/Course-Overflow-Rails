class User < ActiveRecord::Base
  
  attr_accessor   :password  #virtual attribute not corresponding to any column in database. 
  #attribute exists only in memory  
                            
  attr_accessible :firstname, :lastname, :major, :email, :password, :password_confirmation #since we would be needing
                                                                  #:password, :password_confirmation
                                                                  #for sign_up
  has_many :questions
  
  email_regex = /\A[\w+\-.]+@[sfu]+\.[ca]+\z/i
  
  validates :firstname, :presence => true,
            :length => {:maximum => 50 }
                   
  validates :lastname, :presence => true,
            :length => {:maximum => 50 }
  
  validates :email, :presence => true,
                    :format => {:with => email_regex },
                    :uniqueness => { :case_sensitive => false }
                    
 
  # Automatically create the virtual attribute 'password_confirmation'.
  validates :password, :presence     => true,
                        #automatically create a virtual attribute
                        #called password_confirmation, while confirming that it 
                        #matches the password attribute at the same time.
                       :confirmation => true,
                       :length       => { :within => 6..40 }
    
                       
  #register a callback called encrypt_password 
  #things to do before saving a User
  #Active Record will automatically call the encrypt_password method before saving the record.
   before_save :encrypt_password
   
   
   # Return true if the user's password matches the submitted password.
     def has_password?(submitted_password)
       # Compare encrypted_password with the encrypted version of
       # submitted_password.
       encrypted_password == encrypt(submitted_password)
     end
     
     def self.authenticate(email, submitted_password)
         user = find_by_email(email)
         return nil  if user.nil?
         return user if user.has_password?(submitted_password)
    end
    
    def self.authenticate_with_salt(id, cookie_salt)
        user = find_by_id(id)
        (user && user.salt == cookie_salt) ? user : nil
      end
   
   private

        def encrypt_password
          self.salt = make_salt unless has_password?(password)
          self.encrypted_password = encrypt(password)
        end

        def encrypt(string)
          secure_hash("#{salt}--#{string}")
        end

        def make_salt
          secure_hash("#{Time.now.utc}--#{password}")
        end

         def secure_hash(string)
            Digest::SHA2.hexdigest(string)
         end
  
end

