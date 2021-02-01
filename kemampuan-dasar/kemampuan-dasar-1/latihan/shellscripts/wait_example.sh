echo "Wait comnand" &
process_id=$!
wait $process_id
echo "Exited with status $?"
