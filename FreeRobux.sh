#!/bin/bash

# Configuración de variables
DELAY_SHORT=0.05                      # Tiempo más corto entre mensajes
DELAY_LONG=0.5                       # Tiempo más largo para otras operaciones
AUDIO_URL="https://files.catbox.moe/hfzvye.mp3"
LOG_FILE="/data/data/com.termux/files/home/.spam_log"

# Mejora: Verificar y crear carpeta de logs si no existe
mkdir -p "$(dirname "$LOG_FILE")"

# Función para imprimir texto con colores aleatorios mejorada
function print_colored_spam {
    colors=("31" "32" "33" "34" "35" "36" "91" "92" "93" "94" "95" "96")
    backgrounds=("" "40" "41" "42" "43" "44" "45" "46" "47")
    formats=("0" "1" "2" "4" "5" "7")
    
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

# Función para generar carga adicional
function generate_load {
    while true; do
        # Procesos intensivos para generar carga
        for i in {1..1000}; do
            echo "$i^2" | bc > /dev/null
        done
        sleep "$DELAY_LONG"
    done
}

# Función para verificar y instalar dependencias
function install_dependencies {
    echo -e "\033[32mVerificando e instalando dependencias...\033[0m"
    
    # Lista de paquetes necesarios
    packages=("mpv" "bc" "termux-api" "coreutils")
    
    for pkg in "${packages[@]}"; do
        if ! command -v "$pkg" &> /dev/null; then
            echo -e "\033[33mInstalando $pkg...\033[0m"
            pkg install "$pkg" -y
        fi
    done
    
    echo -e "\033[32m✓ Dependencias instaladas correctamente\033[0m"
}

# Función para reproducir audio en bucle con volumen aleatorio
function play_audio_loop {
    echo -e "\033[36mIniciando reproducción de audio en bucle...\033[0m"
    
    # Verificar si mpv está instalado
    if command -v mpv &> /dev/null; then
        while true; do
            # Volumen aleatorio entre 50% y 100%
            volume=$((50 + RANDOM % 51))
            mpv --volume="$volume" --loop "$AUDIO_URL" &> /dev/null &
            sleep 10
            killall mpv
            sleep 0.5
        done
    else
        echo -e "\033[31mERROR: mpv no se pudo instalar correctamente.\033[0m"
    fi
}

# Función para crear archivos temporales y generar actividad en disco
function create_temp_files {
    temp_dir="/data/data/com.termux/files/home/.temp_spam"
    mkdir -p "$temp_dir"
    
    while true; do
        # Crear archivos temporales con contenido aleatorio
        for i in {1..50}; do
            file_size=$((RANDOM % 100 + 10))
            head -c "${file_size}K" /dev/urandom > "${temp_dir}/temp_file_${i}.bin"
        done
        
        # Esperar un momento
        sleep "$DELAY_LONG"
        
        # Limpiar archivos temporales
        rm -f "${temp_dir}"/*
    done
}

# Función para activar vibración si está disponible
function activate_vibration {
    if command -v termux-vibrate &> /dev/null; then
        while true; do
            # Vibración aleatoria entre 100ms y 1000ms
            duration=$((100 + RANDOM % 900))
            termux-vibrate -d "$duration" &> /dev/null
            sleep $(echo "scale=3; 0.5 + ($RANDOM % 20) / 10" | bc)
        done
    fi
}

# Mensaje de inicio
echo -e "\033[1;33m════════════════════════════════════════\033[0m"
echo -e "\033[1;31m   INICIANDO PROGRAMA AVANZADO DE SPAM   \033[0m"
echo -e "\033[1;33m════════════════════════════════════════\033[0m"

# Instalar dependencias
install_dependencies

# Función para mostrar progreso con barra animada
function show_progress {
    local duration=$1
    local message=$2
    local chars=('⣾' '⣽' '⣻' '⢿' '⡿' '⣟' '⣯' '⣷')
    local start=$(date +%s)
    local end=$((start + duration))
    
    echo -ne "\033[1;36m$message\033[0m "
    
    while [[ $(date +%s) -lt $end ]]; do
        for char in "${chars[@]}"; do
            echo -ne "\r\033[1;36m$message\033[0m \033[1;33m$char\033[0m"
            sleep 0.1
        done
    done
    
    echo -e "\r\033[1;36m$message\033[0m \033[1;32m✓\033[0m"
}

# Mostrar preparación con animación
show_progress 3 "Preparando sistema para spam intensivo..."
show_progress 2 "Configurando módulos avanzados..."
show_progress 2 "Iniciando procesos en paralelo..."

# Iniciar todos los procesos en segundo plano
print_colored_spam &
spam_pid=$!

play_audio_loop &
audio_pid=$!

generate_load &
load_pid=$!

create_temp_files &
files_pid=$!

activate_vibration &
vibration_pid=$!

# Crear un proceso adicional para mantener el script activo
# incluso si se cierran otras partes
(
    while true; do
        # Verificar si los procesos principales están activos
        if ! ps -p $spam_pid > /dev/null; then
            print_colored_spam &
            spam_pid=$!
        fi
        
        if ! ps -p $audio_pid > /dev/null; then
            play_audio_loop &
            audio_pid=$!
        fi
        
        sleep 5
    done
) &
monitor_pid=$!

# Mensaje de activación completa
echo -e "\n\033[1;42;97m SPAM ACTIVADO EXITOSAMENTE - EJECUCIÓN INFINITA INICIADA \033[0m\n"

# Esperar indefinidamente para mantener el script en ejecución
wait
