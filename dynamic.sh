key=$1
op=$2
index=$3

declare -A key_lengths=( ["12-zipf"]="32" ["62-zipf"]="32" ["100-zipf"]="32" ["220-zipf"]="32" ["alpha-numeric-zipf"]="32" ["220-zipf"]="32" ["customername"]="18" ["ERP"]="19" ["wikititle"]="128" ["wikiurl"]="128" ["yago"]="128" )
declare -A exe_types=( ["12-zipf"]="synthetic" ["62-zipf"]="synthetic" ["100-zipf"]="synthetic" ["220-zipf"]="synthetic" ["alpha-numeric-zipf"]="synthetic" ["220-zipf"]="synthetic" ["customername"]="string" ["ERP"]="string" ["wikititle"]="string" ["wikiurl"]="string" ["yago"]="string" )

key_length=${key_lengths[${key}]}
exe_type=${exe_types[${key}]}

exe="./bin/${key_length}B/workload_${exe_type}_dynamic"

workload_dir="./workload_dir"
init_file="${workload_dir}/workload_${key}_load.dat"
mod_file="${workload_dir}/workload_${key}_mod.dat"
txn_file="${workload_dir}/workload_${key}_${op}.dat"

cmd="numactl --cpunodebind 1 --membind 1 ${exe} ${init_file} ${mod_file} ${txn_file} ${index}"

eval ${cmd}

