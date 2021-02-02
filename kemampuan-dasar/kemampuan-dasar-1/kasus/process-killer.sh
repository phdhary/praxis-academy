echo "Program apa yang mau dimatikan?"
read program

pid=$(ps -Af | grep "$program" |)

if [[ $pid != "" ]]; then
    program_count=$(pkill -c $program)
    if [[ program_count > 0 ]]; then
        echo "Program $program sudah dimatikan"
    fi
else
    echo "Program $program tidak ditemukan"
fi
