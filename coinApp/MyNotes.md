### Step 1 : coins


* Create a Coins table with a value, name, and timestamps of some sort 
    * Make sure null: false 
* Create a model based for coins 
    
    Coin possible model methods
        Coin:coin_sum
            sum = all coins in databas (value) 
            then we return sum 


    **Not needed methods in model  removed from rough draft notes 
        #initialize(name, value)
            takes in name and value as params

        Coin:coin=(name, value) (dont need rails generated)
            updates self so self.value = value && self.name = name 
        # remove_coin
            removes self form database (self.destroy) USING #DELETE IN CONTROLLER (NOT NEEDED )
        #all_coins 
            shows all coins in db (coin.all) // USING #INDEX IN CONTROLLER (NOT NEEDED) 
        #single_coin(id)
             show a single coin by the id (coin.find(id))) USING #SHOW IN CONTROLLER (NOT NEEDED) 
        

* Create CoinsConstroller
    #index
        return all coins 
            (@coins = Coin.all 
                render json: @coins
        )
    #show 
     return 1 coin
       ( @coin = Coin.find_by(name: params[:name])

    #create 
        @coin = Coin.new(params[:name], params[:value])
        @coin ? render json @coin : use a flash message to notify render :new (if we werent using json and using html views)
    
    #destroy
        @coin = Coin.find(params[:name]) (no html but making back end of api as if HTML exists even though we are only using json)
            render ==> (show sum and to show total is decresed because of "withdrawl" of coin )
    

    
    

            
