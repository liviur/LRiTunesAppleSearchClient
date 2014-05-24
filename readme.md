# LRiTunesAppleSearchClient

### Current Version 0.1

## Intro
This is a helper utility that should simplify searching Apple iTunes database for various items.

This wrapper and parser based on the information published by apple at:
https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html

The networking heavy loading is done using AFNetworking 2.0.
All the rest will be done without use of any external libraries.

## Future Goals:
1. Finish the project
2. Have a nice sample app based on a simple search form and table view.
3. Build a CocoaPod

## Do Note:
1. This project is currently under work and will take time until the first version will be ready.
2. Since Apple doesn't publish changes to the API in an orderly manner - this will be provided - as is - with no guarantee that it will continuously work.

# Current Project state:
## Implemented:
1. Search by term
2. Search Item with basic fields (as published by Apple)

## TODO:
1. Finish implementing different search options
2. Improve demo project by using a table and some minimally designed cell.
3. Improve search items by adding all those Item specific fields.