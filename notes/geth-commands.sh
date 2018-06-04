geth --rinkeby --fast #connect to rinkeby 
geth --dev #create private test network

dapps connect to geth using IPC-RPC (default), JSON-RPC , WS-RPC

ipc-rpc can be used only when app and node are co-located
json and ws rpc are disabled by default

by default only eth,web3,net apis are enabled, other apis like admin are disabled

geth --rpc --rpcaddr "localhost" --rpcport "8585" --rinkeby --fast
--rpcapi "list of api to be enabled"
geth --ws --wsaddr "host" --wsport "port"
--wsapi "list of api to be enabled"


geth --verbosity "0" --trace "./trace.txt" --rinkeby --fast console

geth --verbosity "3" --trace "./trace.txt" --rinkeby attach /home/nadeem/.ethereum/rinkeby/geth.ipc

geth --verbosity "0" --trace "./trace.txt" --rinkeby --fast --preload "utils.js" console

geth --verbosity "0" --trace "./trace.txt" --rinkeby --fast --exec "personal.listAccounts" console


#manage accounts 

geth --rinkeby account new 
geth --rinkeby account list

#by default geth lock the accounts


geth --verbosity "0" --rinkeby console

0x947BeB125252e47f280bFF337176713E0E817773


geth --verbosity "0" --rinkeby --exec "loadScript('./send.unlock.js')" console

geth --verbosity "0" --rinkeby --exec "loadScript('./send.unlock.js')" --unlock "0" console

#mining options

geth --mine --minerthreads --etherbase 

geth --verbosity "0" --rinkeby --mine --minerthreads 4 --extradata "Nadeem Lalani"