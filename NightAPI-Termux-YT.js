const readline = require('readline');
const { exec } = require('child_process');

// Configurar readline para obtener entrada del usuario
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Función para descargar el video o audio
function descargarContenido(url, formato, nombreArchivo) {
  let apiUrl = '';
  let extension = '';
  
  if (formato === 'video') {
    apiUrl = `https://nightapioficial.onrender.com/api/ytvideo?url=${url}&format=mp4&quality=720p`;
    extension = 'mp4';
  } else if (formato === 'audio') {
    apiUrl = `https://nightapioficial.onrender.com/api/ytaudio?url=${url}&format=mp3`;
    extension = 'mp3';
  } else {
    console.log('Formato no válido');
    return;
  }

  // Asegurarse de que el archivo tenga la extensión correcta
  if (!nombreArchivo.endsWith(`.${extension}`)) {
    nombreArchivo += `.${extension}`;
  }

  // Usar curl para descargar el archivo
  const comando = `curl -o /sdcard/download/${nombreArchivo} "${apiUrl}"`;

  exec(comando, (err, stdout, stderr) => {
    if (err) {
      console.error(`Error: ${stderr}`);
    } else {
      console.log(`Archivo descargado correctamente como /sdcard/download/${nombreArchivo}`);
    }
  });
}

// Preguntar qué formato quiere el usuario
rl.question('¿Qué formato quieres descargar? (video/audio): ', (formato) => {
  rl.question('Ingresa la URL del video: ', (url) => {
    rl.question('¿Cómo se debe llamar el archivo? (sin extensión): ', (nombreArchivo) => {
      descargarContenido(url, formato, nombreArchivo);
      rl.close();
    });
  });
});
