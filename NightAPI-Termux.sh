#!/data/data/com.termux/files/usr/bin/bash

API_URL="https://nightapioficial.onrender.com/api"
DATA_DIR="$HOME/NightAPI"
mkdir -p $DATA_DIR

# Comando para ejecutar la IA Gemini
gemini() {
  echo -e "\e[36mHablando con Gemini...\e[0m"
  curl -s "$API_URL/gemini?message=$1"
}

# Comando para ejecutar SimSimi
simsimi() {
  echo -e "\e[36mHablando con SimSimi...\e[0m"
  curl -s "$API_URL/simi?text=$1&language=es"
}

# Comando para generar un código con MayCode
maycode() {
  echo -e "\e[36mGenerando código con MayCode...\e[0m"
  curl -s "$API_URL/maycode?messsge=$1"
}

# Comando para obtener una broma aleatoria
joke() {
  echo -e "\e[36mObteniendo una broma...\e[0m"
  curl -s "$API_URL/jokes/random"
}

# Comando para obtener una cita aleatoria
quote() {
  echo -e "\e[36mObteniendo una cita...\e[0m"
  curl -s "$API_URL/quotes/random"
}

# Comando para obtener el clima actual
weather() {
  echo -e "\e[36mObteniendo el clima actual...\e[0m"
  curl -s "$API_URL/weather/current?location=$1"
}

# Comando para obtener pronóstico del clima
forecast() {
  echo -e "\e[36mObteniendo el pronóstico del clima...\e[0m"
  curl -s "$API_URL/weather/forecast?location=$1&days=$2"
}

# Comando para obtener noticias recientes
news() {
  echo -e "\e[36mObteniendo noticias...\e[0m"
  curl -s "$API_URL/news/latest?category=$1"
}

# Comando para obtener una búsqueda de noticias
search_news() {
  echo -e "\e[36mBuscando noticias...\e[0m"
  curl -s "$API_URL/news/search?query=$1"
}

# Comando para jugar con la mascota
pet_action() {
  echo -e "\e[36mAcción para la mascota $1...\e[0m"
  curl -s "$API_URL/pet?name=$1&action=$2"
}

# Comando para generar imagen de Dall-E
dalle() {
  echo -e "\e[36mGenerando imagen con DALL·E...\e[0m"
  curl -s "$API_URL/dalle?prompt=$1"
}

# Comando para generar un emoji mix
emojimix() {
  echo -e "\e[36mGenerando emoji mix...\e[0m"
  curl -s "$API_URL/emojimix?emoji1=$1&emoji2=$2"
}

# Comando para obtener una URL acortada
shorten_url() {
  echo -e "\e[36mAcortando URL...\e[0m"
  curl -s "$API_URL/url/shorten?url=$1"
}

# Comando para obtener información de una URL acortada
url_info() {
  echo -e "\e[36mObteniendo información de URL...\e[0m"
  curl -s "$API_URL/url/info?code=$1"
}

# Comando para reproducir audio de YouTube
play_audio() {
  echo -e "\e[36mReproduciendo audio...\e[0m"
  curl -s "$API_URL/ytaudio?url=$1&format=mp3" | mpv -
}

# Comando para reproducir video de YouTube
play_video() {
  echo -e "\e[36mReproduciendo video...\e[0m"
  curl -s "$API_URL/ytvideo?url=$1&format=mp4&quality=720p" | mpv -
}

# Comando para generar un GIF aleatorio de gatos
random_gif() {
  echo -e "\e[36mObteniendo GIF aleatorio de gatos...\e[0m"
  curl -s "$API_URL/gif/random?query=cat"
}

# Comando para generar un GIF aleatorio de perros
random_dog_gif() {
  echo -e "\e[36mObteniendo GIF aleatorio de perros...\e[0m"
  curl -s "$API_URL/gif/random?query=dog"
}

# Comando para obtener el tipo de cambio de divisas
currency_rates() {
  echo -e "\e[36mObteniendo tipo de cambio...\e[0m"
  curl -s "$API_URL/currency/rates?base=$1"
}

# Comando para convertir divisas
currency_convert() {
  echo -e "\e[36mConvirtiendo divisas...\e[0m"
  curl -s "$API_URL/currency/convert?from=$1&to=$2&amount=$3"
}

# Comando para obtener la localización de una dirección
geocode() {
  echo -e "\e[36mObteniendo geolocalización...\e[0m"
  curl -s "$API_URL/location/geocode?address=$1"
}

# Comando para obtener una traducción
translate() {
  echo -e "\e[36mTraduciendo...\e[0m"
  curl -s "$API_URL/translate?text=$1&from=$2&to=$3"
}

# Comando para generar texto a voz (TTS)
text_to_speech() {
  echo -e "\e[36mGenerando TTS...\e[0m"
  curl -s "$API_URL/tts?text=$1&lang=$2"
}

# Comando para obtener información sobre un lugar
reverse_geocode() {
  echo -e "\e[36mObteniendo información del lugar...\e[0m"
  curl -s "$API_URL/location/reverse?lat=$1&lon=$2"
}

# Comando para obtener información de un enlace
url_info() {
  echo -e "\e[36mObteniendo información de la URL...\e[0m"
  curl -s "$API_URL/url/info?code=$1"
}

# Comando de ayuda
help_menu() {
  echo -e "\e[36mComandos disponibles:\e[0m"
  echo -e "--gemini [mensaje]       => Hablar con Gemini"
  echo -e "--simsimi [mensaje]      => Hablar con SimSimi"
  echo -e "--maycode [mensaje]      => Generar código con MayCode"
  echo -e "--joke                   => Obtener una broma"
  echo -e "--quote                  => Obtener una cita"
  echo -e "--weather [ubicación]    => Obtener clima"
  echo -e "--forecast [ubicación] [días] => Obtener pronóstico"
  echo -e "--news [categoría]       => Obtener noticias"
  echo -e "--pet [nombre] [acción]  => Interactuar con mascota"
  echo -e "--dalle [promoción]      => Generar imagen con DALL·E"
  echo -e "--emojimix [emoji1] [emoji2] => Generar mezcla de emojis"
  echo -e "--shorten [url]          => Acortar URL"
  echo -e "--urlinfo [código]       => Obtener info URL"
  echo -e "--playaudio [url]        => Reproducir audio de YouTube"
  echo -e "--playvideo [url]        => Reproducir video de YouTube"
  echo -e "--randomgif              => Obtener GIF aleatorio de gatos"
  echo -e "--randomdoggif           => Obtener GIF aleatorio de perros"
}

# Controlador de comandos
case "$1" in
  --gemini) gemini "$2" ;;
  --simsimi) simsimi "$2" ;;
  --maycode) maycode "$2" ;;
  --joke) joke ;;
  --quote) quote ;;
  --weather) weather "$2" ;;
  --forecast) forecast "$2" "$3" ;;
  --news) news "$2" ;;
  --searchnews) search_news "$2" ;;
  --pet) pet_action "$2" "$3" ;;
  --dalle) dalle "$2" ;;
  --emojimix) emojimix "$2" "$3" ;;
  --shorten) shorten_url "$2" ;;
  --urlinfo) url_info "$2" ;;
  --playaudio) play_audio "$2" ;;
  --playvideo) play_video "$2" ;;
  --randomgif) random_gif ;;
  --randomdoggif) random_dog_gif ;;
  --currencyrates) currency_rates "$2" ;;
  --currencyconvert) currency_convert "$2" "$3" ;;
  --geocode) geocode "$2" ;;
  --translate) translate "$2" "$3" "$4" ;;
  --tts) text_to_speech "$2" "$3" ;;
  --reversegeocode) reverse_geocode "$2" "$3" ;;
  --help) help_menu ;;
  *) echo -e "\e[31mComando no reconocido. Usa '--help' para ver la lista de comandos.\e[0m" ;;
esac

# Hacer el script ejecutable
chmod +x ~/NightAPI/NightAPI.sh
cp ~/NightAPI/NightAPI.sh $PREFIX/bin/NightAPI
chmod +x $PREFIX/bin/NightAPI
