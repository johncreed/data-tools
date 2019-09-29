# Train file path
train='./train'

# Fixed parameter
C=100

# Log path
log_path="logs"
mkdir -p $log_path


task(){
# Set up fixed parameter and train command
train_cmd="${train} -C ${C}"

# Print out all parameter pair
for l in 1 2 3
do
    cmd="${train_cmd} -l ${l}"
    echo ${cmd}
done
}


# Check command
echo "Check command list (the command may not be runned!!)"
task
wait


# Run
#task | xargs -0 -d '\n' -P 5 -I {} sh -c {} &
