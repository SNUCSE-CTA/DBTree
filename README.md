<meta name="robots" content="noindex">

# DB+ Tree: A New Variant of B+ Tree for Main-Memory Database Systems

### key_gen_alphanumeric
`key_gen_alphanumeric` generates `Alphanumeric` keys, each byte of which is selected from {'A'-'Z', 'a'-'z', '0'-'9'} following the Zipf distribution.

- Usage
```bash
./key_gen_alphanumeric <key length> <num keys>
```

- Example Usage
```bash
./key_gen_alphanumeric 32 10
```

- Example Output
```bash
19892260DCTK32450GC700LU110MBP42
1Pa00000EeG4100tBD1B0P4j31031EcD
J08bj89m6t23Y0sA2Sgs011W2014d052
Zc0S2j9M01o2E02qaM8061002R93H4B8
004Ac2008F204601H2wCND0AE033VG97
1502o27P6yK0EBa9122W5l37bI802e10
3u223AC010312U63Wj01wiGP1118c040
95D612gCI176HC0Q203cYF3G1044Oq1Y
mAJ4P04rL0B4016o10X76241210G0009
s01dNC031F2510C9G2JQ1D01D2CM3C02
```

### key_gen_random
Given an integer `hi`, `key_gen_random` generates `Random` keys, each byte of which is selected from [1, `hi`] following the Zipf distribution.

- Usage
```bash
./key_gen_random <hi> <key length> <num keys>
```

- Example Usage
```bash
./key_gen_random 5 32 10
```

- Example Output
```
^E^C^E^A^A^D^E^C^E^B^A^D^C^A^C^C^A^D^A^A^B^E^A^A^A^A^C^D^B^B^D^A
^A^A^A^B^B^A^B^B^D^D^C^A^B^B^A^A^D^A^C^B^D^A^A^D^E^A^A^B^A^A^B^C
^C^B^A^D^A^A^A^B^B^B^A^A^A^C^A^C^C^B^A^A^D^D^C^A^C^C^E^A^C^D^B^B
^C^D^A^D^A^B^A^D^D^C^A^A^A^A^A^A^B^B^A^A^C^A^A^B^A^C^C^A^D^B^E^B
^C^A^A^B^A^A^A^B^A^A^A^B^A^A^C^A^B^A^B^A^D^C^E^A^A^B^B^B^D^A^A^A
^B^A^A^A^E^E^A^A^C^A^A^D^C^D^D^D^A^A^D^A^C^A^A^A^B^A^A^A^A^A^A^A
^D^A^A^E^A^A^A^B^A^A^A^B^A^C^A^A^A^E^B^A^B^A^A^B^A^A^A^A^B^A^A^A
^A^D^A^A^D^A^C^A^A^C^A^B^E^A^D^C^D^E^A^B^B^B^A^B^A^B^B^D^C^D^C^A
^D^E^E^C^A^A^B^A^D^C^A^A^A^C^D^A^A^A^B^A^A^A^C^D^D^B^B^A^E^A^A^C
^C^C^A^D^C^A^B^B^A^B^B^C^C^E^D^A^E^A^B^B^C^A^C^A^A^A^A^E^B^D^A^E
```

### workload_alphanumeric_load
`workload_alphanumeric_load.dat` is the load file for `Alphanumeric` keys in the dynamic scenario.
You can unzip the file using the following command.
```bash
cat workload_alphanumeric_load/* > workload_alphanumeric_load.dat.tar.bz && tar -xvjf workload_alphanumeric_load.dat.tar.bz
```

### workload_alphanumeric_mod
`workload_alphanumeric_mod.dat` is the insertion/deletion file for `Alphanumeric` keys in the dynamic scenario.
You can unzip the file using the following command.
```bash
cat workload_alphanumeric_mod/* > workload_alphanumeric_mod.dat.tar.bz && tar -xvjf workload_alphanumeric_mod.dat.tar.bz
```

### workload_alphanumeric_pointsearch
`workload_alphanumeric_pointsearch` contains search queries for `Alphanumeric` keys.
You can unzip the file using the following command.
```bash
cat workload_alphanumeric_pointsearch/* > workload_alphanumeric_pointsearch.dat.tar.bz && tar -xvjf workload_alphanumeric_pointsearch.dat.tar.bz
```

### dynamic.sh
`dynamic.sh` is a script used for experiments in the dynamic scenario.

### DB+ tree
The code of DB+ tree cannot be made public due to company policies.
