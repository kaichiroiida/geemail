module Mailer                                                                              
  extend ActiveSupport::Concern                                                            
                                                                                           
  included do                                                                              
                                                                                           
  end                                                                                      
                                                                                           
  def test_sender                                                                          
    p "test_sender"                                                                        
  end                                                                                      
  
  def mail_sender                                                                          
    @username = "ksteadymail@gmail.com"                                                     
    @password = "iqXE8i6n"                                                                  
    gmail = Gmail.new(@username, @password)                                                  
                                                                                           
    message =                                                                              
      gmail.generate_message do                                                            
        to "s15mm302@gmail.com"                                                            
        subject "題名 testmail"                                                            
        html_part do                                                                       
          content_type "text/html; charset=UTF-8"                                          
          body "<h1>Email from Ruby!!</h1>"                                                
        end                                                                                
      end                                                                                  
                                                                                           
   timer("06:56:58") do  #ここが時間調整                                                   
   gmail.deliver(message)                                                                  
   gmail.logout                                                                            
   end                                                                                     
  end   
  private                                                                                  
  def timer(arg, &proc)                                                                    
    x = case arg                                                                           
    when Numeric then arg                                                                  
    when Time    then arg - Time.now                                                       
    when String  then Time.parse(arg) - Time.now                                           
    else raise   end                                                                       
                                                                                           
    sleep x if block_given?                                                                
    yield                                                                                  
  end 
end                                                        
