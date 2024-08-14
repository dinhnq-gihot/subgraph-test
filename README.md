# 🚀 Subgraph Deployment Guide for Non-Web3 Developers
## 📚 Introduction
This guide will walk you through the steps required to update and deploy a subgraph for ERC-20 and ERC-721 smart contracts. You don't need prior experience with blockchain or Web3 development to follow this guide.

## 🛠 Prerequisites
Before getting started, ensure you have the following installed on your machine:

1. Node.js (version 18.x or 16.x recommended) 🟢
2. npm (comes with Node.js) 📦
3. Graph CLI (Command Line Interface tool from The Graph)

    To install Graph CLI globally, run:
    ```bash
    npm install -g @graphprotocol/graph-cli
    ```

## 📝 Step 1: Clone the Subgraph Repository
1. Clone the subgraph repository to your local machine:
    ```bash
    git clone <repository_url>
    ```
    🖥️ This downloads the project files to your computer.


## 🔄 Step 2: Configuration in subgraph.yaml
1. Config the `config/config.yaml` file in a text editor. ✏️
2. Update the listed fields of the ERC-20 | ERC-721 | ERC-404 contract you want to track. 🔗
    ```yaml
    erc20:
        network: <rpc_url>
        address: <address contract>
        startBlock: <start block of contract>
    ...
    ```
    Besides, you can also be unable to index the contract by commenting the whole block:
    ```yaml
    ## erc20:
    ##    network: <rpc_url>
    ##    address: <address contract>
    ##    startBlock: <start block of contract>
    ...
    ```

3. Run makefile to update the `subgraph.yaml` file in subgraphs. 🔄
    ```bash
    make generate-subgraph
    ```

## 🛠️ Step 3: Build the Subgraph
After updating the needed fields for contracts, the next step is to build the subgraph.
1. In your terminal, run:
    ```bash
    make subgraph-build
    ```
    - `graph codegen`: Generates TypeScript code based on your subgraph schema and smart contract ABIs. ⚙️
    - `graph build`:  Compiles the subgraph and prepares it for deployment. 🏗️

2. Ensure that there are no errors in the terminal output. If there are errors, double-check the contract addresses and any changes you made in subgraph.yaml. ✅

## 🚀 Step 5: Deploy the Subgraph
Once the subgraph is built, you can deploy it to The Graph's Hosted Service or the decentralized Graph Network.
### 🌐 Deploy to The Graph Hosted Service
1. Run the following command to deploy the subgraph:
    ```bash
    graph deploy --product hosted-service <GITHUB_USERNAME>/<SUBGRAPH_NAME>
    ```
    Replace `<GITHUB_USERNAME>` with your GitHub username and `<SUBGRAPH_NAME>` with the name of your subgraph. 📝


2. During the deployment process, you will be prompted to authenticate. Follow the on-screen instructions to log in with your GitHub account. 🔐
3. Once the deployment is complete, you will receive a link to your subgraph on The Graph Hosted Service. 🔗

### 🔍 Verify the Deployment
1. After deployment, you can verify that your subgraph is live by visiting the Graph Explorer:
- Hosted Service Explorer 🌐
- Search for your subgraph by name. 🔍

2. Ensure that data from the updated contract addresses is being indexed correctly. ✅

## 🎉 Conclusion
Congratulations! 🎊 You've successfully updated and deployed a subgraph by changing the contract addresses. If you encounter any issues, double-check the steps above or reach out to a Web3 developer for assistance.