# Brew2Venue Brisbane Hack

**Date**<br>
Friday, August 4, 2017 6:00 PM
to Saturday, August 5, 2017, 7:00 PM

**Venue**<br>
Fishburners
Level 2, 155 Queen St, Brisbane (map)

Bitcoin and Ethereum meetup member "Jeff" has a startup Brew2Venue(.com). The purpose of this meetup is to hack / build a supply chain around beer for independent breweries.

**What's in it for me?**

If you're looking to start coding and building Ethereum based products, you will get real world hands-on experience and perhaps help a Brisbane based startup on his way to success. So some warm and fuzzies. 

**Who will own the IP?**

The code will be committed to GitHub under the MIT licence. https://choosealicense.com/licenses/mit/

**What's in it for Jeff and his startup?**

In his words, this is about seeing what is possible with Blockchain and Ethereum beyond it's typical application in financial services. It's an opportunity for the independents in the beer industry to reflect on current challenges with the supply chain and how technology may improve efficiency.

So we are doing free work for Jeff? 

The short answer is yes. If this is something of concern, then perhaps this isn't the event for you. 

**Agenda:**

**Day 1** - Kick off at 6pm. Set up your laptop with the tools required to start developing. High level view of what we are building, basic Git commands.

**Day 2** - Arrive at 9am and start building.

Avanade Australia have sponsored beer and pizza, and some people in the industry to present to at the end of the day.  Microsoft will attend and provide some Azure credits to run some nodes in the cloud.

**About the event space at Fishburners:**

A big thank you to Fishburners who have provided the space for our meetup. Fishburners is Australia’s largest community of tech startups and a not for profit organisation. They support over 300 startups in their communities in Brisbane and Sydney and host more than 500 events around Australia. They offer a free one week trial which you can take up here: www.fishburners.org

## About the code

### Stock or products

Beer products, such as "Newstead Brewery 21 Feet Seven Inches porter" are represented in the smart contract as a struct.  The product should have a unique key, such as a primary key.  The foregin key is brewers address, or Ethereum public key.
```
    enum beerType {lager, stout, porter, ipa}
    
    //Brewers products, such as Newstead Brewery 21 Feet Seven Inches porter
    struct product {
        address brewer;
        beerType beerType;
        string name;
        int ml;  //size of bottle / can in milliletres
        byte32 sku;
    }
```

The brewer, assigned by their public key, can add or discontinue products.  These stock structs are stored in "mappings" on the smart contract.  The address key in the mapping returns an array of products.

```
    mapping(address => product[]); 
```

### Adding supply

Once the brewer brews the product, they then add quantities of stock to the blockchain.  Ready for sale or distribution.  Because of the transparancey of the chain, merchants / ATO etc can see the brewers stock levels.  Only the brewer can add their item.  This is asserted by the require method.

```
    function issue(string _sky, int quantity) {
        
    }
```

### Trading stock


### Forcasting demand

## Private chain
In the folder, there is a genesis.json file.  
-- geth --datadir /Volumes/Chains/hack init /Volumes/Chains/hack/genesis.json

## Appendix

### Ropsten Testnet keys

| Actor | Public Key | Private Key
