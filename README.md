# crypto-kitti-app
![](https://i.imgur.com/5CnIsMV.png)

# Install this project
1. RUN git clone https://gitlab.com/blockchangers/crypto-kitti-app.git
2. RUN cd crypto-kitti-app
3. RUN npm install

## Develop on this project
4. RUN npm run serve
6. WEBPAGE http://localhost:8080/

## Make changes to smart contracts.
You can deploy your smart contract changes to the follwing network and with the follwing command:
* RUN npm run deploy_local (this is a local node running on 127.0.0.1 and PORT 8545. A good local ethereum node you can download and install is https://truffleframework.com/ganache.)
* RUN npm run deploy_goerli
* RUN npm run deploy_ropsten

# Deploy this project
4. RUN npm run build
4. DEPLOY // All files for your app is now located in the /dist folder. Deploy this folder and serve index.html to the 

# Software used in this project and course
* GIT (https://git-scm.com/)
* NODE & NPM (https://nodejs.org/en/download/)
  * (windows) RUN "npm install --global windows-build-tools" after NPM has been installed( https://www.npmjs.com/package/windows-build-tools ) 
* Truffle (https://truffleframework.com/docs/truffle/getting-started/installation)
* VUE cli (https://cli.vuejs.org/guide/installation.html)
* web3 (https://web3js.readthedocs.io/en/1.0/)
* openzeppelin-solidity (https://github.com/OpenZeppelin/openzeppelin-solidity)
* MetaMask (https://metamask.io/)
* VsCode (https://code.visualstudio.com/)
* VSCode solidity extension (https://marketplace.visualstudio.com/items?itemName=JuanBlanco.solidity)

# Recreate this project-stack without code
1. INSTALL GIT (https://git-scm.com/)
1. INSTALL NODE & NPM (https://nodejs.org/en/download/)
1. INSTALL npm install -g truffle (https://truffleframework.com/docs/truffle/getting-started/installation)
2. INSTALL npm install -g @vue/cli (https://cli.vuejs.org/guide/installation.html)
3. RUN vue create crypto-kitti-app
4. RUN cd crypto-kitti-app
5. RUN cd truffle init
6. RUN vue add vuex
4. RUN npm run serve
6. WEBPAGE http://localhost:8080/