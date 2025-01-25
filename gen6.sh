#!/bin/bash

openapi-generator generate -i ./raw_data/app_store_connect_api_openapi.json -t ./raw_data/swift6_template -g swift6 --additional-properties=responseAs=AsyncAwait,projectName=ASC,useSPMFileStructure=true,enumUnknownDefaultCase=true,identifiableModels=false -o ./ASC

rm -rf Sources/
mv ASC/Sources/ Sources/

rm -rf docs/
mv ASC/docs/ docs/

mv -f ASC/Package.swift ./

mv -f ASC/README.md ./README_GENERATOR.md

rm -rf ASC
