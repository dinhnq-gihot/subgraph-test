generate-subgraph:
	node ./config/generate-subgraph.js

subgraph-build:
	cd ./subgraphs && yarn codegen && yarn build

subgraph-test:
	cd ./subgraphs && graph test -d

subgraph-deploy:
	cd ./subgraphs && graph deploy --product hosted-service <GITHUB_USERNAME>/<SUBGRAPH_NAME>