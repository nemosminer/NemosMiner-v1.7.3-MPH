@echo off
SETLOCAL EnableExtensions
SET USER=nemo.1050ti
SET PASS=x
SET GPUequihash=0 1 2 3 4 5 
SET GPUccminer=0,1,2,3,4,5
SET A=ethminer.exe
SET B=zminer.exe
SET C=ccminersp-mod
SET D=ccminerAlexis78.exe
SET E=ccminerTanguy.exe
SET POOL=hub.miningpoolhub.com
:start
ECHO Starting NemosMiner-v1.7.3 if this helped you please donate #Nemo.... 
%A% --cuda-devices %GPUequihash% --farm-retries 0 -U -S asia.ethash-%POOL%:12020 -O %USER%:%PASS% -FS exit
%B% --cuda_devices %GPUequihash% --server asia.equihash-%POOL% --port 12023 --fee 0 --eexit 3 --user %USER% --pass %PASS%
%E% -d %GPUccminer% -r 0 -a cryptonight -o stratum+tcp://asia.cryptonight-%POOL%:12024 -u %USER% -p %PASS%
%D% -d %GPUccminer% -r 0 -a neoscrypt -o stratum+tcp://%POOL%:12012 -u %USER% -p %PASS% -i 15
%E% -d %GPUccminer% -r 0 -a groestl -o stratum+tcp://%POOL%:12004 -u %USER% -p %PASS%
%D% -d %GPUccminer% -r 0 -a lyra2v2 -o stratum+tcp://%POOL%:12018 -u %USER% -p %PASS%
%D% -d %GPUccminer% -r 0 -a myr-gr -o stratum+tcp://%POOL%:12005 -u %USER% -p %PASS%
%D% -d %GPUccminer% -r 0 -a skein -o stratum+tcp://%POOL%:12016 -u %USER% -p %PASS%
ECHO Starting NemosMiner-v1.7.3 if this helped you please donate #Nemo....
GOTO start