#!/usr/bin/env bash
# ==========================================================================================
# ===================================   Functions  =========================================
# ==========================================================================================

# this function show a message when the player win with 3 or less tries
function win_best() {
    sleep 0.5s
    echo '                           ONLY ' "$1" ' tries......'
    sleep 1s
    echo '                           COME ON BRO!!!, YOU HAVE THE POWER....'
    sleep 1s
    echo '                           HOW MUCH IS THE DOLLAR GOING TO BE IN ARGENTINA?'
    sleep 1.5s
    echo '                           ES MUCHO MUY IMPORTANTE QUE ME LO DIGAS.......'
    sleep 2s
    echo '                           NOOOOOO EL JUEGO SE TERMINOOOOOOOOO'
    sleep 2.5s
    clear
    sleep 2s
    echo "  
                                               ░░░
                                          ░▓▓███████▓▒░  ▒██░
                                       ▒██▓▒▒▒▒▒▒▒▒▒▓▓█▒▒██████
                                     ███████   ░░░░░░░░▓███░ ███
                                   ▒████████▓  ░░░░░░ ███▒▒  ███
                                  ░██▒     ████  ░░░░░░██  ▒▓░ █░
                                 ░█▓░░░░░░  ░███  ░░░░░   ▒██▓▒
                                ░█▓░░░░░░░░░  ███ ░░░░░  ██████▒
                                █▓░ ░░░░░░░░░  ███ ░░░░ ███ ▒███▒
                               ▓▓░░░░░░░░░░░░░  ██ ░░░ ▒██    ██▓▒
                              ▒█▒░░░░░░░░░░░░░░   ░░░░ ██      ███▓
                              █▓ ░░░░░░░░░░░░░░░░░░░░░ ██     ░██▓▓
                             ▒█░░░░░░░      ░░░░░░░░░ ░█▓     ░██░█
                             █▓░░░░░░ █████▒  ░░░░░░░░▒█░ ███ ░██░█
                            ░█▒░░░░░░ ███████▓  ░░░░░ ▒█▓█████ ██░▓█
                            ▒▓░░░░░░░░   ░▓████  ░░░░░░███████░██░▒█
                            ▓▒░░░░░░░░░ ░   ░███▒ ░░░ ███████▓██░▒█
                            ▓▒░░░░░░░░░░░░░░  ███░░░░░ █████████▒░▒▓
                            █▒░░░░░░░░░░░░░░░  ▒░░░░░░ ░████████░▒▒▓
                            ▓▒░░░░░░░░░░░░░░░░░░░░░░░░░ ███████▒░▒░▓
                            █▒░░░░░░░░░░░░░░░░░░░░░░░░░  ▓████▒░▒▒▒▒
                            █▒░▒░░░░░░░░░░░░░░░░░░░░░░░░░ ░▒▒░░▒▒▒▒▓
                            █▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▓
                            █▒░▒░░░░░░░░██═░░░░░░░░░░░░░░░░▒░▒▒▒▒▒▒▓
                            █▓░▒▒░░░░░░═██░═░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒█
                            ██░▒▒▒░░░░░═██▒═░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒█
                            ▓█▒░▒▒░░░░░═▒██═░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▓█
                            ░█▒░▒▒░▒░░░░═██▒═░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▓█
                             ██░▒▒▒▒▒░░░═░██░═░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒█▒
                             ▓█▒░▒▒▒▒▒░░░═▓██░═░░░░▒░▒▒▒▒▒▒▒▒▒▒▒░██
                              ██▒▒▒▒▒▒▒░▒░═███▓═░░░░▒▒▒▒▒▒░░▒▒▒░▒█▓
                              ▒█▓▒▒▒▒▒▒▒▒▒░═▓███▓░═░░░░░░░▓█▓▒▒▒██
                               ██▒▒▒▒▒▒▒▒▒▒░░▒█████▓▓▒▓▓█████░▒▓█░
                                ██▒▒▒▒▒▒▒▒▒▒▒░░▒███████████▓░▒▓█▒
                                 ██▒▒▒▒▒▒▒▒▒▒▒▒░░░▓█████▓▒░░░▓█▓
                                 ░██▓▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░▒░▒██▓
                                   ███▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▓██▓
                                    ▓███▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▒███░
                                     ░████▓▒▒▒▒▒▒░▒▒▒▒▓███▓
                                       ░▓██████▓▓███████▒
                                          ░▓█████████▒░
"
    
}

# this function show a message when the player win with more of 3 tries
function win_normal() {

    echo "
    
                                                 ░██░
                                                ░█▓▓█░
                                               ░█▓▓▓█░
                                              ░█▓▓▓▓▓█░
                                             ░█▓▓▓▓▓█░
                                      ░░░   ░█▓▓▓▓▓▓█░
                                     ░███░  ░█▓▓▓▓▓█░
                                   ░██░░░██░█▓▓▓▓▓█░
                                  ░█░░█░░░░██▓▓▓▓▓█░
                                ░██░░█░░░░░░█▓▓▓▓█░
                               ░█░░░█░░░░░░░██▓▓▓█░
                              ░█░░░░█░░░░░░░░█▓▓▓█░
                              ░█░░░░░█░░░░░░░░█▓▓▓█░
                              ░█░░█░░░█░░░░░░░░█▓▓█░
                             ░█░░░█░░░░██░░░░░░█▓▓█░
                             ░█░░░░█░░░░░██░░░█▓▓▓█░
                             ░█░█░░░█░░░░░░███▓▓▓▓█░
                            ░█░░░█░░░██░░░░░█▓▓▓▓▓█░
                            ░█░░░░█░░░░█████▓▓▓▓▓█░
                            ░█░░░░░█░░░░░░░█▓▓▓▓▓█░
                            ░█░█░░░░██░░░░█▓▓▓▓▓█░
                             ░█░█░░░░░████▓▓▓▓██░
                             ░█░░█░░░░░░░█▓▓██▓█░
                              ░█░░██░░░██▓▓█▓▓▓█░
                               ░██░░███▓▓██▓█▓▓█░
                                ░██▓▓▓███▓▓▓█▓▓▓█░
                                  ░█▓▓▓▓▓▓▓▓█▓▓▓█░
                                  ░█▓▓▓▓▓▓▓▓▓▓▓▓▓█░

"
    sleep 1s
    echo '                                  ONLY' "$1" 'tries....'
    sleep 2s
    echo '                                  NOT BAD NOT BAD'
    sleep 1s
}
# this function show a message when the player loses
function player_sucks() {
    echo '                           ──────────────────────────────────
                            ─────────▄▄───────────────────▄▄──
                            ──────────▀█───────────────────▀█─
                            ──────────▄█───────────────────▄█─
                            ──█████████▀───────────█████████▀─
                            ───▄██████▄─────────────▄██████▄──
                            ─▄██▀────▀██▄─────────▄██▀────▀██▄
                            ─██────────██─────────██────────██
                            ─██───██───██─────────██───██───██
                            ─██────────██─────────██────────██
                            ──██▄────▄██───────────██▄────▄██─
                            ───▀██████▀─────────────▀██████▀──
                            ──────────────────────────────────
                            ──────────────────────────────────
                            ──────────────────────────────────
                            ───────────█████████████──────────
                            ──────────────────────────────────
                            ──────────────────────────────────
    '
    sleep 1s
    echo '                          YOU REALLY DIDNT READ THE CLUES.......'
    sleep 2s
    echo '                          You suck bro, zero intuition and lucky....'
    sleep 2s
    echo '                          Better try being a developer.............'
    sleep 1s
}
# this function show the title of gama and information about this, like tries, upper limit
function title() {
    echo '              ==============================================='
    echo '              =========      THE LUCKY NUMBER      =========='
    echo '              ======== Try to guess the lucky number ========'
    echo '              ========  just enter a number between  ========'
    echo '              ========            1 and' "$1" '          ========'
    if (($2 < 10)); then
        echo '              ===============  Try n°' "$2"'/'"$3"'    ==============='
    else
        echo '              ===============  Try n°' "$2"'/'"$3"'    =============='
    fi
    echo '              ==============================================='
}

# this function read the number that the user enter
function read_value() {
    #
    local number
    read -rp '              Number =: ' number
    echo "${number}"
}
# this function get the lucky random number
function calc_ramdom_number() {
    local number=$((RANDOM % "$1" + 1))
    echo "${number}"
}

# ==========================================================================================
# =================================== Main Program =========================================
# ==========================================================================================

clear
# =================================================
#                      FOR TESTING
# upper_limit=$1
# max_tries=$2
# =================================================

# defines the upper limit for generating the random number
upper_limit=10
# defines the numeber of tries
max_tries=10

# generate random number
lucky_number=$(calc_ramdom_number "$upper_limit")

# =================================================
#                      FOR TESTING
#echo "$lucky_number"
#sleep 2s
# =================================================

# initialize the counter of tries
tries=1

# define the minimun number of tries for the best victory
win_fine=3

# define the minimun number of tries for the normal victory
win_not_so_fine=10

# initialize the variable with value -1
number=-1

# for max_tries tries
# enter a number
# if number is lucky number end the loop
# else continue until the number of tries be equal to max_tries

# if the directory does not exist, it is created
if [[ "$(find /home/"$USER" -name "$(date +%d-%m-%Y)" -type d)" == "" ]]; then
    mkdir /home/"$USER"/"$(date +%d-%m-%Y)"
fi

for ((i = 0; i < "$max_tries"; i++)); do
    # verifies that the number entered satisfies the conditions
    while ((("$number" < 1) || ("$number" > "$upper_limit"))); do
        # clear the terminal
        clear
        # function call with these arguments
        title "$upper_limit" "$tries" "$max_tries"
        # fucntion call for read the number entered for the user
        number=$(read_value)    >   /dev/pts/2
        if ((("$number" < 1) || ("$number" > "$upper_limit"))); then
            echo '              THE NUMBER MUST BE BETWEEN 1 AND' "$upper_limit"
            sleep 1s
            echo '              TRY AGAIN'
            sleep 2s
        fi
    done
    if (("$number" == "$lucky_number")); then
        echo '              CONGRATULATIONS!!!!!!'
        sleep 2s
        break
    else
        if (("$number" < "$lucky_number")); then
            echo '              ===================================='
            echo '              =NO NO, THE LUCKY NUMBER IS BIGGER ='
            echo '              ===================================='
        else
            echo '              ====================================='
            echo '              =NO NO, THE LUCKY NUMBER IS SMALLER ='
            echo '              ====================================='
        fi
    fi
    sleep 1s
    ((tries++))
    number=-1
done

# enter the corresponding directory with the current date and create
# a file with information about the game.
cd /home/"$USER"/"$(date +%d-%m-%Y)"
number_file=$(ls -A . | wc -l)
file_name="archivo""$((number_file + 1))"".txt"
echo "$tries" intentos para adivinar el numero "$lucky_number" >"$file_name"

# if you guess the number in less than 3 tries
# the best win
# else if you guess the number in less than 10 tries normal win
# otherwise lose
if (("$tries" <= "$win_fine")); then
    win_best "$tries"
elif [ "$tries" -le "$win_not_so_fine" ]; then
    win_normal "$tries"
else
    player_sucks
fi
