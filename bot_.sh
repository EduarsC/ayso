#!/usr/bin/env bash
# the script can be improved a lot by functions, 
# but it is left for an improvement in the next version.

# this function talks to the user and
# gives him information about what is running
function speak() {
    python -u text_to_speech.py "$1" &
}

# actiavte the virtual enviroment of
# python dor can use the function speak
cd ./tts_/bin && source activate && cd .. && cd ..

# with this if statement the time of the day is detected
# to greet the user
hour_=$(date +%H)
if [[ $(("10#$hour_")) -gt 6  && $(("10#$hour_")) -le 13 ]]; then
    part_of_day="Buenos dias"
elif [[ $(("10#$hour_")) -gt 13  && $(("10#$hour_")) -le 20 ]]; then
    part_of_day="Buenas tardes"
else
    part_of_day="Buenas noches"
fi
mens="$part_of_day $USER"

# send the task to the terminal 2
speak "$mens" >/dev/pts/2
no_salgo=true

# stores the first dir where the script is executed
dir_original=$(pwd)

# while main loop with the menu
while $no_salgo; do
    clear
    echo "                               Menu"
    echo "1 - Mostrar Hora"
    echo "2 - Mostrar el clima"
    echo "3 - Mostrar una frase"
    echo "4 - Calidad el Aire en BB"
    echo "5 - Jugar Juego Adivinador- aca tengo que crear archivos"
    echo "6 - Borrar todos los archivos y carpetas creados durante el juego"
    echo "7 - Mostrar el día que se jugó más veces a adivinar el número"
    echo "8 - Salir"
    read -rp ":" opcion

    case "${opcion}" in
    1)
        hour=$(date +%H)
        mens=$(date +%r)
        ampm=""
        if [[ $(("10#$hour")) -lt 12 ]]; then
            ampm="A.M."
        else
            ampm="P.M."
        fi
        speak "$mens""$ampm" && sleep 1s && echo "$mens""$ampm" >/dev/pts/2
        sleep 4s >/dev/pts/2
        clear >/dev/pts/2
        ;;
    2)
        speak "El clima de hoy en Bahia Blanca" && curl -s wttr.in | head --lines=7 >/dev/pts/2
        sleep 4s >/dev/pts/2
        clear >/dev/pts/2
        ;;
    3)
        frase=$(curl -s https://frasedeldia.azurewebsites.net/api/phrase | jq '.phrase')
        speak "$frase" >/dev/pts/2
        sleep 2s >/dev/pts/2
        echo "$frase" >/dev/pts/2
        ;;
    4)
        curl -s https://gobiernoabierto.bahia.gob.ar/WS/3040 >response.json
        contador=0
        for item in $(jq '.[] | .valor' response.json); do
            # sleep 1s
            case "${contador}" in
            0)
                echo "Fracción de particulas de hasta 10 micrometros en nanogramos por metro cubico" >/dev/pts/2
                speak "Fracción de particulas de hasta 10 micrometros" >/dev/pts/2
                echo "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                speak "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                ;;
            1)
                echo "Dioxido se Azufre, S02 en partes por billon " >/dev/pts/2
                speak "Dióxido se Azufre" >/dev/pts/2
                echo "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                speak "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                ;;
            2)
                echo "Ozono O3 en partes por millon" >/dev/pts/2
                speak "Ozono" >/dev/pts/2
                echo "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                speak "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                ;;
            3)
                echo "Dioxido de nitrogeno, en partes por billon" >/dev/pts/2
                speak "Dióxido de nitrógeno" >/dev/pts/2
                echo "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                speak "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                ;;
            4)
                echo "Monoxido de Carbono, en partes por billon" >/dev/pts/2
                speak "Monóxido de Carbono" >/dev/pts/2
                echo "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                speak "$item" >/dev/pts/2
                sleep 3s >/dev/pts/2
                ;;
            esac
            if [[ $contador -eq 4 ]]; then
                break
            fi
            contador=$((contador + 1))
        done
        # http://quepasabahiablanca.gob.ar/tiempo_real/calidad_de_aire/
        ;;
    5)
        ./game.sh >/dev/pts/2
        ;;
    6)
        cd /home/$USER
        operation_success=0
        for item in $(ls . | grep '[0-3][0-9]-[0-1][0-9]-[1-2][0-9][0-9][0-9]'); do
            rm -R "$item"
            operation_success=1
        done
        cd "$dir_original"
        if [[ "$operation_success" -eq 1 ]]; then
            speaking="Borrado completo"
            echo "$speaking" >/dev/pts/2
            speak "$speaking" >/dev/pts/2
        else
            speaking="Nada para Borrar"
            echo "$speaking" >/dev/pts/2
            speak "$speaking" >/dev/pts/2
        fi
        ;;
    7)
        cd /home/$USER
        max=0
        numero_archivos=0
        fecha_mas_jugado=""
        if [[ "$(find /home/"$USER" -name "$(date +%d-%m-%Y)" -type d)" != "" ]]; then
            for item in $(ls . | grep '[0-3][0-9]-[0-1][0-9]-[1-2][0-9][0-9][0-9]'); do
                numero_archivos="$(ls -A ${item} | wc -l)"
                if [ "$numero_archivos" -gt "$max" ]; then
                    max="$numero_archivos"
                    fecha_mas_jugado=${item}
                fi
            done
            cd "$dir_original"
            speaking="la fecha que se jugó más fue el $fecha_mas_jugado unas $max veces"
            echo "$speaking" >/dev/pts/2
            speak "$speaking" >/dev/pts/2
        else
            cd "$dir_original"
            speaking="No se ha jugado aun ninguna partida o se borraron los registros"
            echo "$speaking" >/dev/pts/2
            speak "$speaking" >/dev/pts/2
        fi
        ;;
    8)
        no_salgo=false
        speak "Adios $USER"
        sleep 4s
        clear
        kill $(pgrep xfce4-terminal)
        exit
        ;;
    *)
        echo "opcion no valida"
        speak "opcion no válida" >/dev/pts/2
        ;;
    esac
    if [ "$no_salgo" == true ]; then
        sleep 1s
        read -n 1 -s -r -p "Presione enter para continuar"
    fi
    clear >/dev/pts/2
    if [[ $(pwd) != "$dir_original" ]]; then
        cd $dir_original
    fi
done
