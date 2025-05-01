#!/data/data/com.termux/files/usr/bin/bash

# Directorio para NightAPI
mkdir -p ~/NightAPI

# Script principal de NightAPI
cat <<'EOF' > ~/NightAPI/NightAPI.sh
#!/data/data/com.termux/files/usr/bin/bash

# Banner de NightAPI
show_banner() {
  echo -e "\e[36m"
  echo " _   _ _       _     _      _    ____ ___"
  echo "| \ | (_) __ _| |__ | |_   / \  |  _ \_ _|"
  echo "|  \| | |/ _\` | '_ \| __| / _ \ | |_) | |"
  echo "| |\  | | (_| | | | | |_ / ___ \|  __/| |"
  echo "|_| \_|_|\__, |_| |_|\__/_/   \_\_|  |___|"
  echo "         |___/"
  echo -e "\e[0m"
}

# Mostrar menú de ayuda
show_help() {
  show_banner
  echo -e "\e[33mComandos disponibles:\e[0m"
  echo -e "\e[32m--gemini\e[0m <mensaje>         => Consultar a Gemini AI"
  echo -e "\e[32m--simsimi\e[0m <mensaje>        => Chatear con SimSimi"
  echo -e "\e[32m--maycode\e[0m <mensaje>        => Generar código con MayCode AI"
  echo -e "\e[32m--joke\e[0m                     => Obtener un chiste aleatorio"
  echo -e "\e[32m--quote\e[0m                    => Obtener una frase célebre"
  echo -e "\e[32m--weather\e[0m <ciudad>         => Ver clima actual"
  echo -e "\e[32m--forecast\e[0m <ciudad> <días> => Ver pronóstico del clima"
  echo -e "\e[32m--news\e[0m <categoría>         => Ver últimas noticias"
  echo -e "\e[32m--news-search\e[0m <término>    => Buscar noticias"
  echo -e "\e[32m--pet\e[0m <nombre> <acción>    => Interactuar con mascota virtual"
  echo -e "\e[32m--rates\e[0m <moneda_base>      => Ver tasas de cambio"
  echo -e "\e[32m--convert\e[0m <de> <a> <monto> => Convertir divisas"
  echo -e "\e[32m--generate-img\e[0m <prompt>    => Generar imagen (descarga)"
  echo -e "\e[32m--resize-img\e[0m <url> <w> <h> => Redimensionar imagen"
  echo -e "\e[32m--geocode\e[0m <dirección>      => Obtener coordenadas"
  echo -e "\e[32m--reverse\e[0m <lat> <lon>      => Obtener dirección desde coordenadas"
  echo -e "\e[32m--translate\e[0m <texto> <de> <a> => Traducir texto"
  echo -e "\e[32m--languages\e[0m                => Ver idiomas disponibles"
  echo -e "\e[32m--shorten\e[0m <url>            => Acortar URL"
  echo -e "\e[32m--url-info\e[0m <código>        => Ver info de URL acortada"
  echo -e "\e[32m--ytaudio\e[0m <url> <formato>  => Descargar audio de YouTube"
  echo -e "\e[32m--ytvideo\e[0m <url> <formato> <calidad> => Descargar video de YouTube"
  echo -e "\e[32m--tts\e[0m <texto> <idioma>     => Texto a voz (descarga)"
  echo -e "\e[32m--gif-search\e[0m <término>     => Buscar GIF"
  echo -e "\e[32m--gif-random\e[0m <término>     => GIF aleatorio"
  echo -e "\e[32m--emojimix\e[0m <emoji1> <emoji2> => Mezclar emojis (descarga)"
  echo -e "\e[32m--dalle\e[0m <prompt>           => Generar imagen con DALL-E (descarga)"
  echo -e "\e[32m--google\e[0m <búsqueda>        => Buscar en Google"
  echo -e "\e[32m--quotesticker\e[0m <texto> <nombre> <url_avatar> => Crear sticker de cita (descarga)"
}

# Función para URL encode
urlencode() {
  local string="$1"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
    c=${string:$pos:1}
    case "$c" in
      [-_.~a-zA-Z0-9] ) o="${c}" ;;
      * )               printf -v o '%%%02x' "'$c"
    esac
    encoded+="${o}"
  done
  echo "${encoded}"
}

# Función para descargar archivos
download_file() {
  local url="$1"
  local filename="$2"
  
  echo -e "\e[33mDescargando a $filename...\e[0m"
  curl -L -o "$filename" "$url"
  echo -e "\e[32mArchivo guardado como: $filename\e[0m"
}

# Gemini AI
gemini_api() {
  local prompt=$(urlencode "$1")
  echo -e "\e[36mConsultando a Gemini AI...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/gemini?message=$prompt")
  echo -e "\e[32mRespuesta:\e[0m $response"
}

# SimSimi
simsimi_api() {
  local message=$(urlencode "$1")
  local lang="${2:-es}"
  echo -e "\e[36mConsultando a SimSimi...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/simi?text=$message&language=$lang")
  echo -e "\e[32mRespuesta:\e[0m $response"
}

# MayCode AI
maycode_api() {
  local prompt=$(urlencode "$1")
  echo -e "\e[36mGenerando código con MayCode...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/maycode?messsge=$prompt")
  echo -e "\e[32mRespuesta:\e[0m $response"
}

# Jokes API
joke_api() {
  echo -e "\e[36mObteniendo chiste...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/jokes/random")
  echo -e "\e[32mChiste:\e[0m $response"
}

# Quotes API
quote_api() {
  echo -e "\e[36mObteniendo frase célebre...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/quotes/random")
  echo -e "\e[32mFrase:\e[0m $response"
}

# Weather Current API
weather_api() {
  local location=$(urlencode "$1")
  echo -e "\e[36mConsultando clima en $1...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/weather/current?location=$location")
  echo -e "\e[32mClima:\e[0m $response"
}

# Weather Forecast API
forecast_api() {
  local location=$(urlencode "$1")
  local days="${2:-3}"
  echo -e "\e[36mConsultando pronóstico para $1 ($days días)...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/weather/forecast?location=$location&days=$days")
  echo -e "\e[32mPronóstico:\e[0m $response"
}

# News Latest API
news_api() {
  local category=$(urlencode "${1:-general}")
  echo -e "\e[36mConsultando noticias de $1...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/news/latest?category=$category")
  echo -e "\e[32mNoticias:\e[0m $response"
}

# News Search API
news_search_api() {
  local query=$(urlencode "$1")
  echo -e "\e[36mBuscando noticias sobre '$1'...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/news/search?query=$query")
  echo -e "\e[32mResultados:\e[0m $response"
}

# Pet API
pet_api() {
  local name=$(urlencode "$1")
  local action=$(urlencode "$2")
  local param=$(urlencode "${3:-}")
  
  local url="https://nightapioficial.onrender.com/api/pet?name=$name&action=$action"
  if [ -n "$param" ]; then
    url="$url&param=$param"
  fi
  
  echo -e "\e[36mInteractuando con mascota $name (acción: $action)...\e[0m"
  local response=$(curl -s "$url")
  echo -e "\e[32mRespuesta:\e[0m $response"
}

# Currency Rates API
rates_api() {
  local base="${1:-USD}"
  echo -e "\e[36mConsultando tasas de cambio (base: $base)...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/currency/rates?base=$base")
  echo -e "\e[32mTasas:\e[0m $response"
}

# Currency Convert API
convert_api() {
  local from="${1:-USD}"
  local to="${2:-EUR}"
  local amount="${3:-100}"
  echo -e "\e[36mConvirtiendo $amount $from a $to...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/currency/convert?from=$from&to=$to&amount=$amount")
  echo -e "\e[32mConversión:\e[0m $response"
}

# Image Generate API
generate_img_api() {
  local prompt=$(urlencode "$1")
  local filename="generatedimg_$(date +%s).jpg"
  echo -e "\e[36mGenerando imagen para '$1'...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/image/generate?prompt=$prompt" "$filename"
}

# Image Resize API
resize_img_api() {
  local url=$(urlencode "$1")
  local width="${2:-300}"
  local height="${3:-200}"
  local filename="resizedimg_$(date +%s).jpg"
  echo -e "\e[36mRedimensionando imagen a ${width}x${height}...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/image/resize?url=$url&width=$width&height=$height" "$filename"
}

# Geocode API
geocode_api() {
  local address=$(urlencode "$1")
  echo -e "\e[36mObteniendo coordenadas para '$1'...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/location/geocode?address=$address")
  echo -e "\e[32mCoordenadas:\e[0m $response"
}

# Reverse Geocode API
reverse_api() {
  local lat="$1"
  local lon="$2"
  echo -e "\e[36mObteniendo dirección para coordenadas ($lat, $lon)...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/location/reverse?lat=$lat&lon=$lon")
  echo -e "\e[32mDirección:\e[0m $response"
}

# Translate API
translate_api() {
  local text=$(urlencode "$1")
  local from="${2:-en}"
  local to="${3:-es}"
  echo -e "\e[36mTraduciendo de $from a $to...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/translate?text=$text&from=$from&to=$to")
  echo -e "\e[32mTraducción:\e[0m $response"
}

# Languages API
languages_api() {
  echo -e "\e[36mConsultando idiomas disponibles...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/languages")
  echo -e "\e[32mIdiomas:\e[0m $response"
}

# URL Shorten API
shorten_api() {
  local url=$(urlencode "$1")
  echo -e "\e[36mAcortando URL...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/url/shorten?url=$url")
  echo -e "\e[32mURL acortada:\e[0m $response"
}

# URL Info API
url_info_api() {
  local code="$1"
  echo -e "\e[36mConsultando información de URL acortada...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/url/info?code=$code")
  echo -e "\e[32mInformación:\e[0m $response"
}

# YouTube Audio API
ytaudio_api() {
  local url=$(urlencode "$1")
  local format="${2:-mp3}"
  local filename="ytaudio_$(date +%s).$format"
  echo -e "\e[36mDescargando audio de YouTube...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/ytaudio?url=$url&format=$format" "$filename"
}

# YouTube Video API
ytvideo_api() {
  local url=$(urlencode "$1")
  local format="${2:-mp4}"
  local quality="${3:-720p}"
  local filename="ytvideo_$(date +%s).$format"
  echo -e "\e[36mDescargando video de YouTube ($quality)...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/ytvideo?url=$url&format=$format&quality=$quality" "$filename"
}

# Text to Speech API
tts_api() {
  local text=$(urlencode "$1")
  local lang="${2:-es}"
  local filename="tts_$(date +%s).mp3"
  echo -e "\e[36mConvirtiendo texto a voz (idioma: $lang)...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/tts?text=$text&lang=$lang" "$filename"
}

# GIF Search API
gif_search_api() {
  local query=$(urlencode "$1")
  echo -e "\e[36mBuscando GIFs de '$1'...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/gif/search?query=$query")
  echo -e "\e[32mGIFs:\e[0m $response"
}

# GIF Random API
gif_random_api() {
  local query=$(urlencode "$1")
  echo -e "\e[36mBuscando GIF aleatorio de '$1'...\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/gif/random?query=$query")
  echo -e "\e[32mGIF:\e[0m $response"
}

# Emoji Mix API
emojimix_api() {
  local emoji1=$(urlencode "$1")
  local emoji2=$(urlencode "$2")
  local filename="emojimix_$(date +%s).png"
  echo -e "\e[36mMezclando emojis $1 y $2...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/emojimix?emoji1=$emoji1&emoji2=$emoji2" "$filename"
}

# DALL-E API
dalle_api() {
  local prompt=$(urlencode "$1")
  local filename="dalle_$(date +%s).png"
  echo -e "\e[36mGenerando imagen DALL-E para '$1'...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/dalle?prompt=$prompt" "$filename"
}

# Google Search API
google_api() {
  local query=$(urlencode "$1")
  echo -e "\e[36mBuscando en Google: '$1'\e[0m"
  local response=$(curl -s "https://nightapioficial.onrender.com/api/google?query=$query")
  echo -e "\e[32mResultados:\e[0m $response"
}

# Quote Sticker API
quotesticker_api() {
  local text=$(urlencode "$1")
  local name=$(urlencode "$2")
  local avatar=$(urlencode "$3")
  local filename="quotesticker_$(date +%s).png"
  echo -e "\e[36mCreando sticker de cita...\e[0m"
  download_file "https://nightapioficial.onrender.com/api/quotesticker?text=$text&name=$name&avatar=$avatar" "$filename"
}

# Manejo principal de comandos
case "$1" in
  --gemini)
    shift
    gemini_api "$*"
    ;;
  --simsimi)
    shift
    simsimi_api "$*"
    ;;
  --maycode)
    shift
    maycode_api "$*"
    ;;
  --joke)
    joke_api
    ;;
  --quote)
    quote_api
    ;;
  --weather)
    shift
    weather_api "$*"
    ;;
  --forecast)
    shift
    location="$1"
    days="$2"
    forecast_api "$location" "$days"
    ;;
  --news)
    shift
    news_api "$*"
    ;;
  --news-search)
    shift
    news_search_api "$*"
    ;;
  --pet)
    shift
    name="$1"
    action="$2"
    param="$3"
    pet_api "$name" "$action" "$param"
    ;;
  --rates)
    shift
    rates_api "$1"
    ;;
  --convert)
    shift
    from="$1"
    to="$2"
    amount="$3"
    convert_api "$from" "$to" "$amount"
    ;;
  --generate-img)
    shift
    generate_img_api "$*"
    ;;
  --resize-img)
    shift
    url="$1"
    width="$2"
    height="$3"
    resize_img_api "$url" "$width" "$height"
    ;;
  --geocode)
    shift
    geocode_api "$*"
    ;;
  --reverse)
    shift
    lat="$1"
    lon="$2"
    reverse_api "$lat" "$lon"
    ;;
  --translate)
    shift
    text="$1"
    from="$2"
    to="$3"
    translate_api "$text" "$from" "$to"
    ;;
  --languages)
    languages_api
    ;;
  --shorten)
    shift
    shorten_api "$1"
    ;;
  --url-info)
    shift
    url_info_api "$1"
    ;;
  --ytaudio)
    shift
    url="$1"
    format="$2"
    ytaudio_api "$url" "$format"
    ;;
  --ytvideo)
    shift
    url="$1"
    format="$2"
    quality="$3"
    ytvideo_api "$url" "$format" "$quality"
    ;;
  --tts)
    shift
    text="$1"
    lang="$2"
    tts_api "$text" "$lang"
    ;;
  --gif-search)
    shift
    gif_search_api "$*"
    ;;
  --gif-random)
    shift
    gif_random_api "$*"
    ;;
  --emojimix)
    shift
    emoji1="$1"
    emoji2="$2"
    emojimix_api "$emoji1" "$emoji2"
    ;;
  --dalle)
    shift
    dalle_api "$*"
    ;;
  --google)
    shift
    google_api "$*"
    ;;
  --quotesticker)
    shift
    text="$1"
    name="$2"
    avatar="$3"
    quotesticker_api "$text" "$name" "$avatar"
    ;;
  *)
    show_help
    ;;
esac
EOF

# Hacer el script ejecutable y establecerlo como comando
chmod +x ~/NightAPI/NightAPI.sh
cp ~/NightAPI/NightAPI.sh $PREFIX/bin/NightAPI
chmod +x $PREFIX/bin/NightAPI

# Mostrar mensaje de finalización
echo -e "\e[32m"
echo "███████╗██╗  ██╗██╗████████╗ ██████╗"
echo "██╔════╝╚██╗██╔╝██║╚══██╔══╝██╔═══██╗"
echo "█████╗   ╚███╔╝ ██║   ██║   ██║   ██║"
echo "██╔══╝   ██╔██╗ ██║   ██║   ██║   ██║"
echo "███████╗██╔╝ ██╗██║   ██║   ╚██████╔╝"
echo "╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝    ╚═════╝ "
echo -e "\e[0m"
echo -e "\e[36mNightAPI ha sido instalado correctamente!\e[0m"
echo -e "\e[33mPuedes usar el comando \e[1mNightAPI\e[0m\e[33m para ver todas las opciones disponibles.\e[0m"
echo ""
echo -e "\e[32mEjemplos de uso:\e[0m"
echo -e "  \e[37mNightAPI --gemini \"Hola cómo estás\"\e[0m"
echo -e "  \e[37mNightAPI --simsimi \"Hola feo\"\e[0m"
echo -e "  \e[37mNightAPI --maycode \"genera un pato con html\"\e[0m"
echo -e "  \e[37mNightAPI --weather \"Madrid\"\e[0m"
echo -e "  \e[37mNightAPI --translate \"Hello World\" en es\e[0m"
echo -e "  \e[37mNightAPI --help\e[0m"
