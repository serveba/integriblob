# integriblob

**Decentralized Blob Storage app using IPFS and providing Proof of Existence.**

This application allows users to prove the existence of some information by showing a time stamped picture/video.

Data is stored in IPFS. The hash of the data and any additional information is stored in a smart contract that can be referenced at a later date to verify the authenticity..

## User stories

1. A user logs into the web app. The user can upload some data (pictures/video) to the app, as well as add a list of tags indicating the contents of the data.
 
2. The app reads the user’s address and shows all of the data that they have previously uploaded.
 
3. Users can retrieve necessary reference data about their uploaded items to allow other people to verify the data authenticity.

4. The dapp is responsive (mobile friendly).

5. The contracts are deployed to Rinkeby and the UI is also served through IPFS. 


## Code Commands:

```bash
  Compile:        truffle compile
  Migrate:        truffle migrate
  Test contracts: truffle test
```
