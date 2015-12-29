module Kenshoo
  class Client
    include Reports
    
    attr_accessor :url, :username, :password, :ks_id, :client

    def initialize(args = {})
      args.each do |key, value|
        send(:"#{key}=", value)
      end      
      initialize_client!
    end

    private

      def initialize_client!
        self.client = Faraday.new(:url => self.url, 
                                  :headers => { "Accept" => "application/json",
                                                "Content-Type" => "application/json"})
        self.client.basic_auth(username, password)
      end
  end
end
