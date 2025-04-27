const https = require('https');
const readline = require('readline');
const fs = require('fs');

// COLORES ANSI
const reset = "\x1b[0m";
const bright = "\x1b[1m";
const colors = [
  "\x1b[31m", // rojo
  "\x1b[32m", // verde
  "\x1b[33m", // amarillo
  "\x1b[34m", // azul
  "\x1b[35m", // magenta
  "\x1b[36m", // cyan
  "\x1b[37m"  // blanco
];

// MINI ANIMACION ASCII
const frames = [
`${bright}\x1b[35m( •_•) \x1b[0m`,
`${bright}\x1b[35m( •_•)>⌐■-■\x1b[0m`,
`${bright}\x1b[35m(⌐■_■)\x1b[0m`,
];

function playAnimation(index = 0) {
  if (index >= frames.length) return;
  console.clear();
  console.log(`${frames[index]}\n\n${bright}\x1b[36mBienvenido al chat con SIMI!${reset}`);
  setTimeout(() => playAnimation(index + 1), 400);
}

// GUARDAR CONVERSACION
const logFile = 'simi_chat.txt';
fs.writeFileSync(logFile, '--- Conversación con Simi ---\n', 'utf8');

// EFECTO DE TIPEO
function typeWriter(text, color, callback) {
  let i = 0;
  function write() {
    if (i < text.length) {
      process.stdout.write(color + text[i] + reset);
      process.stdout.write('\x07'); // BEEP
      i++;
      setTimeout(write, 50); // velocidad de tipeo
    } else {
      process.stdout.write('\n');
      if (callback) callback();
    }
  }
  write();
}

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function preguntar() {
  rl.question(`${bright}\x1b[33m[TÚ]${reset} ¿Qué quieres decirle a Simi? -> `, (input) => {
    if (input.trim().toLowerCase() === 'salir') {
      console.log(`${bright}\x1b[31m¡Adiós, leyenda del chat!${reset}`);
      rl.close();
      return;
    }

    fs.appendFileSync(logFile, `[TÚ] ${input}\n`, 'utf8');

    const texto = encodeURIComponent(input);
    const url = `https://nightapioficial.onrender.com/api/simi?text=${texto}&language=es`;

    https.get(url, (res) => {
      let data = '';

      res.on('data', (chunk) => {
        data += chunk;
      });

      res.on('end', () => {
        try {
          const response = JSON.parse(data);
          if (response.success) {
            const randomColor = colors[Math.floor(Math.random() * colors.length)];
            process.stdout.write(`${bright}${randomColor}[SIMI]${reset} `);
            typeWriter(response.response, randomColor, () => {
              fs.appendFileSync(logFile, `[SIMI] ${response.response}\n`, 'utf8');
              preguntar(); // vuelve a preguntar
            });
          } else {
            console.log(`${bright}\x1b[31m[ERROR]${reset} No se pudo obtener respuesta.`);
            preguntar();
          }
        } catch (e) {
          console.log(`${bright}\x1b[31m[ERROR]${reset} Fallo al procesar la respuesta.`);
          preguntar();
        }
      });

    }).on('error', (err) => {
      console.log(`${bright}\x1b[31m[ERROR]${reset} No se pudo conectar con Simi.`);
      preguntar();
    });

  });
}

// ARRANQUE
playAnimation();
setTimeout(preguntar, frames.length * 400 + 200);
