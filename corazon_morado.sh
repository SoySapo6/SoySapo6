#!/bin/bash

# Corazon Morado - Juego de Romance
# Hecho por SoyMaycol <3

clear

# ASCII Art del titulo
echo "  ___                        __  __                 _      "
echo " / __\___  _ __ __ _ _____   |  \/  | ___  _ __ __ _| | ___ "
echo "/ /  / _ \| '__/ _\` |_  / _ \| |\/| |/ _ \| '__/ _\` | |/ _ \\"
echo "\ \ | (_) | | | (_| |/ / (_) | |  | | (_) | | | (_| | | (_) |"
echo " \\_/ \___/|_|  \__,_/___\___/|_|  |_|\___/|_|  \__,_|_|\___/"
echo ""
echo "                    Hecho por SoyMaycol <3"
echo ""
echo "Un juego de romance donde las decisiones importan..."
echo ""

# Funcion para limpiar pantalla y mostrar titulo
mostrar_titulo() {
    clear
    echo "=== CORAZON MORADO ==="
    echo ""
}

# Funcion para pausar
pausar() {
    echo ""
    read -p "Presiona cualquier tecla para continuar..." -n1 -s
    echo ""
}

# Inicio del juego
while true; do
    read -p "Escribe 'COMENZAR' para iniciar el juego: " inicio
    if [[ "${inicio,,}" == "comenzar" ]]; then
        break
    else
        echo "Por favor, escribe 'COMENZAR' para iniciar."
    fi
done

# Introduccion
mostrar_titulo
echo "Eres Amara, una estudiante de 4to grado de secundaria."
echo "Tu companero de clase Enzo siempre te mira de manera extraña..."
echo "Tus mejores amigas son Sofia, Iskra y Aylin."
echo "Los amigos de Enzo son Adrian, Mateo y Antuan."
pausar

# Capitulo 1 - 4to Grado
mostrar_titulo
echo "=== 4TO GRADO DE SECUNDARIA ==="
echo ""
echo "Estas en el recreo con tus amigas cuando Sofia te dice:"
echo ""
echo "Sofia: 'Amara, creo que Enzo te esta mirando otra vez...'"
echo "Iskra: 'Si, siempre hace eso. Es obvio que le gustas.'"
echo "Aylin: 'Deberia decirtelo directamente en lugar de solo mirarte.'"
echo ""
echo "En ese momento, Enzo se acerca con sus amigos..."
echo ""
echo "Enzo: 'Hola Amara... eh... tienes muy bonito cabello hoy.'"
echo "Adrian: (susurra) 'Dile de una vez, hermano.'"
echo ""
echo "¿Como respondes?"
echo ""
echo "1) 'Gracias Enzo, el tuyo tambien se ve bien.'"
echo "2) 'Gracias...' (y te alejas rapidamente)"
echo "3) 'Solo es cabello normal, no es gran cosa.'"

while true; do
    read -p "Elige tu respuesta (1, 2 o 3): " respuesta1
    case $respuesta1 in
        1)
            mostrar_titulo
            echo "Le sonries a Enzo y el se pone muy nervioso."
            echo "Enzo: 'Yo... eh... queria preguntarte algo...'"
            echo "Mateo: 'Hazlo, Enzo. Solo preguntale.'"
            echo ""
            echo "Pero justo en ese momento suena la campana para regresar a clases."
            echo "Enzo se ve decepcionado y regresa al salon con sus amigos."
            pausar
            break
            ;;
        2)
            mostrar_titulo
            echo "Te alejas rapidamente hacia tus amigas."
            echo "Sofia: 'Por que te fuiste asi? El chico claramente queria hablar contigo.'"
            echo "Tu: 'No se... me pone nerviosa cuando me habla asi.'"
            echo ""
            echo "Ves como Enzo habla con sus amigos, parecen estar aconsejandolo."
            pausar
            break
            ;;
        3)
            mostrar_titulo
            echo "Enzo se ve un poco herido por tu respuesta fria."
            echo "Antuan: 'Vamos Enzo, tal vez otro dia.'"
            echo ""
            echo "Se alejan y tus amigas te miran con desaprobacion."
            echo "Aylin: 'Fuiste un poco dura con el, Amara.'"
            pausar
            break
            ;;
        *)
            echo "Opcion invalida. Elige 1, 2 o 3."
            ;;
    esac
done

# Continuacion - La declaracion de Enzo
mostrar_titulo
echo "=== UNAS SEMANAS DESPUES ==="
echo ""
echo "Enzo ha estado actuando extraño ultimamente."
echo "Siempre te trae dulces, te ayuda con las tareas y te saluda todos los dias."
echo ""
echo "Hoy, al final de las clases, Enzo se acerca a ti solo."
echo ""
echo "Enzo: 'Amara, necesito decirte algo importante...'"
echo "Enzo: 'He estado pensando mucho y... me gustas mucho.'"
echo "Enzo: 'Me gustas desde hace meses. Queria saber si... si tu sientes algo por mi.'"
echo ""
echo "Tu corazon late rapido. No esperabas esto."
echo ""
echo "¿Como respondes?"
echo ""
echo "1) 'Enzo, me gustas como amigo, pero no de esa manera.'"
echo "2) 'No lo se... necesito tiempo para pensarlo.'"
echo "3) 'Lo siento, pero no siento lo mismo por ti.'"

while true; do
    read -p "Elige tu respuesta (1, 2 o 3): " respuesta2
    case $respuesta2 in
        1|2|3)
            mostrar_titulo
            echo "Enzo: 'Entiendo... solo queria que lo supieras.'"
            echo "Enzo: 'Espero que podamos seguir siendo amigos.'"
            echo ""
            echo "Se aleja tristemente y tu te sientes confundida."
            echo "No estas segura de si tomaste la decision correcta..."
            pausar
            break
            ;;
        *)
            echo "Opcion invalida. Elige 1, 2 o 3."
            ;;
    esac
done

# Capitulo 2 - 5to Grado
mostrar_titulo
echo "=== 5TO GRADO DE SECUNDARIA ==="
echo ""
echo "Ha pasado un año desde la declaracion de Enzo."
echo "El siguio siendo tu amigo, pero ya no te mira como antes."
echo "Ha estado saliendo con otras chicas y parece mas feliz."
echo ""
echo "Pero algo cambio en ti..."
echo "Empezaste a notar cosas de Enzo que no habias visto antes."
echo "Su sonrisa, como ayuda a todos, su manera de ser gentil..."
echo ""
echo "Un dia, hablando con tus amigas:"
echo ""
echo "Sofia: 'Amara, estas bien? Te ves distraida ultimamente.'"
echo "Iskra: 'Si, y siempre estas mirando hacia donde esta Enzo.'"
echo "Aylin: 'Oh no... no me digas que ahora TU estas enamorada de el.'"
echo ""
pausar

mostrar_titulo
echo "Tu: 'Creo que... creo que me gusta Enzo.'"
echo "Sofia: 'Pero el año pasado tu lo rechazaste!'"
echo "Iskra: 'Y ahora el esta saliendo con Camila de 5to B.'"
echo "Aylin: 'Esto se puso complicado, Amara.'"
echo ""
echo "En ese momento ves a Enzo riendo con Camila en el patio."
echo "Sientes una punzada en el pecho que nunca habias sentido antes."
echo ""
echo "¿Que decides hacer?"
echo ""
echo "1) Hablar con Enzo y confesarle tus sentimientos"
echo "2) Pedirle consejo a Adrian, Mateo o Antuan"
echo "3) Guardar tus sentimientos y no hacer nada"

while true; do
    read -p "Elige tu decision (1, 2 o 3): " decision_final
    case $decision_final in
        1)
            # Ruta: Confesion directa
            mostrar_titulo
            echo "Decides ser valiente y hablar directamente con Enzo."
            echo ""
            echo "Te acercas a el despues de clases."
            echo "Tu: 'Enzo, podemos hablar a solas?'"
            echo "Enzo: 'Claro, Amara. ¿Que pasa?'"
            echo ""
            echo "Tu: 'Se que esto va a sonar extraño, pero... ahora me doy cuenta'"
            echo "Tu: 'de que me gustas. Se que el año pasado te rechace, pero mis'"
            echo "Tu: 'sentimientos han cambiado.'"
            echo ""
            echo "Enzo se queda en silencio por un momento largo..."
            pausar
            
            mostrar_titulo
            echo "Enzo: 'Amara... agradezco tu honestidad.'"
            echo "Enzo: 'Pero ya no siento lo mismo por ti.'"
            echo "Enzo: 'El año pasado estuve esperando, pero aprendi a seguir adelante.'"
            echo "Enzo: 'Ahora estoy con Camila y soy feliz.'"
            echo ""
            echo "Tu corazon se rompe, pero entiendes."
            echo ""
            echo "¿Como respondes?"
            echo ""
            echo "A) 'Entiendo. Solo queria que lo supieras. Te deseo lo mejor.'"
            echo "B) 'Pero podrias darme una oportunidad? Las cosas son diferentes ahora.'"
            
            while true; do
                read -p "Elige (A o B): " subfinal
                case $subfinal in
                    [Aa])
                        # Final Maduro
                        mostrar_titulo
                        echo "=== FINAL: CRECIMIENTO PERSONAL ==="
                        echo ""
                        echo "Enzo sonrie con tristeza pero con respeto."
                        echo "Enzo: 'Gracias por entender, Amara. Eres una gran persona.'"
                        echo ""
                        echo "Los meses pasan y aunque al principio duele, aprendes"
                        echo "una leccion valiosa sobre el tiempo y las oportunidades."
                        echo ""
                        echo "Te enfocas en tus estudios y en crecer como persona."
                        echo "Enzo y tu mantienen una amistad respetuosa."
                        echo ""
                        echo "Un año despues, conoces a alguien nuevo que valora"
                        echo "quien eres desde el primer momento."
                        echo ""
                        echo "A veces las cosas no salen como esperamos,"
                        echo "pero eso nos ayuda a crecer y encontrar algo mejor."
                        echo ""
                        echo "=== FIN ==="
                        exit 0
                        ;;
                    [Bb])
                        # Camino hacia final feliz o triste
                        mostrar_titulo
                        echo "Enzo: 'Amara... no puedo hacer eso. No seria justo para Camila.'"
                        echo "Tu: 'Pero y si estamos destinados a estar juntos?'"
                        echo "Enzo: 'Los sentimientos no funcionan asi. No puedo encenderlos'"
                        echo "Enzo: 'y apagarlos cuando es conveniente.'"
                        echo ""
                        echo "Te alejas sintiendote rechazada, igual que el se sintio"
                        echo "el año anterior."
                        pausar
                        
                        # Decision final para el desenlace
                        mostrar_titulo
                        echo "Pasan varios meses. Enzo termino con Camila por otras razones."
                        echo "Un dia, el se acerca a ti..."
                        echo ""
                        echo "Enzo: 'Amara, he estado pensando mucho en nuestra amistad'"
                        echo "Enzo: 'y en todo lo que ha pasado entre nosotros...'"
                        echo ""
                        echo "¿Como reaccionas?"
                        echo ""
                        echo "X) Escuchar con el corazon abierto"
                        echo "Y) Mantener distancia para protegerte"
                        
                        while true; do
                            read -p "Elige (X o Y): " final_choice
                            case $final_choice in
                                [Xx])
                                    # FINAL FELIZ
                                    mostrar_titulo
                                    echo "=== FINAL FELIZ: SEGUNDO AMOR ==="
                                    echo ""
                                    echo " ♡  ♡  ♡  ♡  ♡ "
                                    echo ""
                                    echo "Enzo: 'Me di cuenta de que lo que sentia por ti nunca"
                                    echo "Enzo: 'desaparecio completamente. Solo estaba escondido.'"
                                    echo "Enzo: 'Ahora entiendo que ambos necesitabamos crecer.'"
                                    echo ""
                                    echo "Tu: 'Yo tambien he crecido. Ahora valoro lo que significa"
                                    echo "Tu: 'realmente querer a alguien.'"
                                    echo ""
                                    echo "Se miran a los ojos y ambos saben que esta vez es diferente."
                                    echo "Han madurado, han aprendido sobre el amor y la paciencia."
                                    echo ""
                                    echo "Deciden comenzar de nuevo, despacio, construyendo algo"
                                    echo "solido basado en comprension mutua y respeto."
                                    echo ""
                                    echo "Sus amigos los apoyan, felices de verlos juntos."
                                    echo "Sofia: 'Al final, el amor verdadero encuentra su camino.'"
                                    echo ""
                                    echo "A veces el amor necesita tiempo para florecer en ambos"
                                    echo "corazones al mismo tiempo."
                                    echo ""
                                    echo "=== FIN FELIZ ==="
                                    exit 0
                                    ;;
                                [Yy])
                                    # FINAL TRISTE
                                    mostrar_titulo
                                    echo "=== FINAL TRISTE: OPORTUNIDADES PERDIDAS ==="
                                    echo ""
                                    echo " ✗  ✗  ✗  ✗  ✗ "
                                    echo ""
                                    echo "Tu: 'Enzo, creo que ya es muy tarde para nosotros.'"
                                    echo "Tu: 'Hemos lastimado demasiado nuestros corazones.'"
                                    echo ""
                                    echo "Enzo: 'Pero podriamos intentar...'"
                                    echo "Tu: 'No. Algunas oportunidades no regresan.'"
                                    echo ""
                                    echo "Te alejas, dejando a Enzo con el corazon roto otra vez."
                                    echo ""
                                    echo "Los años pasan y ambos siguen caminos separados."
                                    echo "Siempre se preguntan 'que habria pasado si...'"
                                    echo ""
                                    echo "En las reuniones del colegio, se saludan con cortesia"
                                    echo "pero con una tristeza profunda en los ojos."
                                    echo ""
                                    echo "A veces el orgullo y el miedo son mas fuertes"
                                    echo "que el amor, y las oportunidades se pierden para siempre."
                                    echo ""
                                    echo "=== FIN TRISTE ==="
                                    exit 0
                                    ;;
                                *)
                                    echo "Elige X o Y."
                                    ;;
                            esac
                        done
                        ;;
                    *)
                        echo "Elige A o B."
                        ;;
                esac
            done
            ;;
        2)
            # Ruta: Pedir consejo a los amigos de Enzo
            mostrar_titulo
            echo "Decides hablar con los amigos de Enzo para entender mejor la situacion."
            echo ""
            echo "Te acercas a Adrian en el recreo."
            echo "Tu: 'Adrian, puedo preguntarte algo sobre Enzo?'"
            echo "Adrian: 'Claro, ¿que pasa Amara?'"
            echo ""
            echo "Tu: 'Se que esto es raro, pero... ¿Enzo sigue sintiendo algo por mi?'"
            echo "Adrian: 'Wow... esa es una pregunta dificil.'"
            pausar
            
            mostrar_titulo
            echo "Adrian: 'Mira, Enzo estuvo muy dolido el año pasado.'"
            echo "Adrian: 'Le tomo meses superar el rechazo.'"
            echo "Adrian: 'Pero si te soy honesto... a veces menciona tu nombre'"
            echo "Adrian: 'cuando no se da cuenta.'"
            echo ""
            echo "Mateo se acerca: '¿De que hablan?'"
            echo "Adrian: 'Amara quiere saber sobre los sentimientos de Enzo.'"
            echo "Mateo: 'Oh... esto se puso interesante.'"
            pausar
            
            mostrar_titulo
            echo "Antuan llega tambien: '¿Que esta pasando aqui?'"
            echo "Adrian: 'Reunion de emergencia sobre Enzo y Amara.'"
            echo ""
            echo "Los tres amigos te miran seriamente."
            echo "Mateo: 'Amara, Enzo es nuestro hermano. No queremos verlo herido otra vez.'"
            echo "Antuan: 'Pero tampoco queremos que pierda una segunda oportunidad si realmente has cambiado.'"
            echo ""
            echo "Adrian: 'Te vamos a ayudar, pero tienes que demostrar que esta vez es en serio.'"
            pausar
            
            # Los amigos ayudan
            mostrar_titulo
            echo "=== EL PLAN DE LOS AMIGOS ==="
            echo ""
            echo "Adrian: 'Vamos a organizar una reunion grupal.'"
            echo "Mateo: 'Si, como una salida casual donde todos vayamos.'"
            echo "Antuan: 'Asi podran hablar sin presion, pero con nosotros ahi para apoyar.'"
            echo ""
            echo "Una semana despues, los amigos organizan una salida al parque."
            echo "Van Adrian, Mateo, Antuan, Enzo, tu y tus amigas."
            echo ""
            echo "Durante la tarde, Adrian crea la oportunidad perfecta..."
            echo "Adrian: 'Oigan, vamos a comprar helados. Enzo y Amara, cuiden nuestras cosas.'"
            echo ""
            echo "Todos se van, dejandolos solos..."
            pausar
            
            # Momento crucial
            mostrar_titulo
            echo "Enzo: 'Creo que esto fue planeado...'"
            echo "Tu: 'Si, creo que si. Tus amigos son muy obvios.'"
            echo ""
            echo "Ambos rien nerviosamente."
            echo ""
            echo "Tu: 'Enzo, queria hablar contigo sobre...'"
            echo "Enzo: 'Sobre el año pasado?'"
            echo "Tu: 'Si. Creo que cometi un error.'"
            echo ""
            echo "Enzo te mira directamente a los ojos."
            echo "Enzo: 'Amara, necesito saber... ¿esto es real? ¿O solo te sientes sola?'"
            echo ""
            echo "¿Como respondes con total honestidad?"
            echo ""
            echo "1) 'Es real, Enzo. He cambiado y tu me importas de verdad.'"
            echo "2) 'No estoy segura de mis sentimientos, pero quiero intentarlo.'"
            echo "3) 'Tengo miedo de lastimarte otra vez, pero no puedo ignorar lo que siento.'"
            
            while true; do
                read -p "Elige tu respuesta mas honesta (1, 2 o 3): " honesta
                case $honesta in
                    1)
                        mostrar_titulo
                        echo "Enzo estudia tu rostro por largo tiempo."
                        echo "Enzo: 'Quiero creerte, Amara. Realmente quiero.'"
                        echo "Enzo: 'Pero tengo miedo. El año pasado casi me destruyo.'"
                        echo ""
                        echo "Tu: 'Lo entiendo. No te pido que confies inmediatamente.'"
                        echo "Tu: 'Solo dame la oportunidad de demostrarte que he cambiado.'"
                        echo ""
                        echo "En ese momento regresan todos con los helados, sonriendo"
                        echo "al ver que ustedes estan hablando tranquilamente."
                        pausar
                        
                        # Desarrollo lento de la relacion
                        mostrar_titulo
                        echo "=== MESES DESPUES ==="
                        echo ""
                        echo "Lentamente, Enzo comienza a abrirse otra vez."
                        echo "Empiezan a pasar mas tiempo juntos, con sus amigos como apoyo."
                        echo ""
                        echo "Un dia, Sofia te dice: 'Se nota que Enzo te esta dando otra oportunidad.'"
                        echo "Iskra: 'Y tu estas siendo diferente tambien. Mas madura.'"
                        echo "Aylin: 'El amor de segunda oportunidad puede ser el mas fuerte.'"
                        echo ""
                        echo "Una tarde, Enzo te lleva al mismo lugar donde te declaro"
                        echo "su amor el año anterior."
                        pausar
                        
                        # MOMENTO DEFINITIVO
                        mostrar_titulo
                        echo "Enzo: 'Amara, este lugar tiene muchos recuerdos para nosotros.'"
                        echo "Enzo: 'Aqui te dije que me gustabas, y tu me rechazaste.'"
                        echo "Enzo: 'Pero ahora... ahora siento que ambos somos diferentes.'"
                        echo ""
                        echo "Tu: 'Somos diferentes. Hemos crecido.'"
                        echo ""
                        echo "Enzo: 'Quiero preguntarte algo, y necesito total honestidad.'"
                        echo "Enzo: '¿Estas segura de que esto es lo que quieres?'"
                        echo "Enzo: '¿No solo una fantasia o curiosidad?'"
                        echo ""
                        echo "Tu corazon late fuerte. Esta es tu oportunidad final."
                        echo ""
                        echo "¿Que le dices?"
                        echo ""
                        echo "A) 'Estoy completamente segura. Te amo, Enzo.'"
                        echo "B) 'Tengo miedo, pero se que quiero intentar estar contigo.'"
                        
                        while true; do
                            read -p "Elige tu respuesta final (A o B): " respuesta_final
                            case $respuesta_final in
                                [Aa])
                                    # FINAL FELIZ DEFINITIVO
                                    mostrar_titulo
                                    echo "=== FINAL FELIZ: AMOR VERDADERO ==="
                                    echo ""
                                    echo " ♡ ♡ FELICES PARA SIEMPRE ♡ ♡ "
                                    echo ""
                                    echo "Enzo sonrie con lagrimas en los ojos."
                                    echo "Enzo: 'Yo tambien te amo, Amara. Nunca deje de hacerlo.'"
                                    echo ""
                                    echo "Se abrazan bajo el mismo arbol donde todo comenzo."
                                    echo ""
                                    echo "Sus amigos, que estaban escondidos observando,"
                                    echo "salen gritando de felicidad:"
                                    echo "Adrian: '¡Al fin! ¡Sabiamos que terminarian juntos!'"
                                    echo "Sofia: '¡El amor siempre encuentra su camino!'"
                                    echo ""
                                    echo "Desde ese dia, Enzo y Amara construyen una relacion"
                                    echo "basada en la comprension, el respeto mutuo y el amor verdadero."
                                    echo ""
                                    echo "A veces las mejores historias de amor necesitan"
                                    echo "tiempo para madurar en ambos corazones."
                                    echo ""
                                    echo "=== FIN PERFECTO ==="
                                    exit 0
                                    ;;
                                [Bb])
                                    # Final agridulce pero esperanzador
                                    mostrar_titulo
                                    echo "=== FINAL: NUEVO COMIENZO ==="
                                    echo ""
                                    echo "Enzo toma tu mano suavemente."
                                    echo "Enzo: 'El miedo es normal, Amara. Yo tambien tengo miedo.'"
                                    echo "Enzo: 'Pero creo que vale la pena intentarlo, juntos.'"
                                    echo ""
                                    echo "Tu: 'Entonces... ¿comenzamos de nuevo? ¿Despacio?'"
                                    echo "Enzo: 'Si. Esta vez vamos a construir algo solido.'"
                                    echo ""
                                    echo "Se dan la mano como simbolo de un nuevo comienzo."
                                    echo ""
                                    echo "No es el final perfecto de cuento de hadas,"
                                    echo "pero es real, honesto y lleno de posibilidades."
                                    echo ""
                                    echo "Sus amigos los apoyan en esta nueva etapa,"
                                    echo "sabiendo que el amor verdadero vale la pena el riesgo."
                                    echo ""
                                    echo "=== FIN ESPERANZADOR ==="
                                    exit 0
                                    ;;
                                *)
                                    echo "Elige A o B."
                                    ;;
                            esac
                        done
                        ;;
                    2)
                        mostrar_titulo
                        echo "Enzo fruce el ceño."
                        echo "Enzo: 'No puedo pasar por esto otra vez si no estas segura.'"
                        echo "Enzo: 'La ultima vez casi me destruyo emocionalmente.'"
                        echo ""
                        echo "Tu: 'Entiendo tu miedo...'"
                        echo "Enzo: 'No es solo miedo, Amara. Es autoproteccion.'"
                        echo ""
                        echo "Se levanta y se aleja lentamente."
                        echo "Enzo: 'Cuando estes segura de lo que quieres, hablamos.'"
                        pausar
                        
                        # Final triste
                        mostrar_titulo
                        echo "=== FINAL TRISTE: LA INSEGURIDAD GANA ==="
                        echo ""
                        echo " ✗ ✗ ✗ ✗ ✗ "
                        echo ""
                        echo "Los dias pasan y tu inseguridad crece."
                        echo "No te atreves a buscar a Enzo otra vez."
                        echo ""
                        echo "El, interpretando tu silencio como confirmacion"
                        echo "de que no estabas segura, decide seguir adelante."
                        echo ""
                        echo "Ambos se graduan sin haber resuelto sus sentimientos."
                        echo ""
                        echo "Años despues, en reuniones del colegio, se saludan"
                        echo "cortesmente pero con una profunda tristeza."
                        echo ""
                        echo "La inseguridad y el miedo pueden ser mas destructivos"
                        echo "que el rechazo mismo."
                        echo ""
                        echo "=== FIN TRISTE ==="
                        exit 0
                        ;;
                    3)
                        mostrar_titulo
                        echo "Enzo aprecia tu honestidad brutal."
                        echo "Enzo: 'Gracias por ser honesta sobre tus miedos.'"
                        echo "Enzo: 'Yo tambien tengo miedo de lastimarte... o de salir lastimado.'"
                        echo ""
                        echo "Tu: 'Entonces que hacemos?'"
                        echo "Enzo: 'Tal vez... podemos intentar siendo honestos sobre nuestros miedos.'"
                        echo "Enzo: 'Si ambos reconocemos que esto es aterrador, podemos cuidarnos mutuamente.'"
                        pausar
                        
                        # Desarrollo de relacion basada en honestidad
                        mostrar_titulo
                        echo "Deciden intentar una relacion basada en comunicacion total."
                        echo "Cada miedo, cada duda, la hablan abiertamente."
                        echo ""
                        echo "No es perfecto, tienen discusiones y momentos dificiles."
                        echo "Pero siempre regresan a la honestidad."
                        echo ""
                        echo "Seis meses despues..."
                        echo ""
                        echo "Enzo: 'Sabes que? Ya no tengo tanto miedo.'"
                        echo "Tu: 'Yo tampoco. Creo que la honestidad nos esta sanando.'"
                        pausar
                        
                        # Final realista y maduro
                        mostrar_titulo
                        echo "=== FINAL: AMOR MADURO ==="
                        echo ""
                        echo " ♡ ~ AMOR REAL ~ ♡ "
                        echo ""
                        echo "Su relacion no es perfecta, pero es real."
                        echo "Construida sobre honestidad, comunicacion y crecimiento mutuo."
                        echo ""
                        echo "Sus amigos admiran como manejan los conflictos"
                        echo "con madurez y respeto."
                        echo ""
                        echo "Adrian: 'Ustedes nos enseñaron que el amor verdadero"
                        echo "Adrian: 'no es perfecto, pero es honesto.'"
                        echo ""
                        echo "No tienen un final de cuento de hadas,"
                        echo "pero tienen algo mejor: un amor real que crece cada dia."
                        echo ""
                        echo "=== FIN MADURO ==="
                        exit 0
                        ;;
                    *)
                        echo "Opcion invalida. Elige 1, 2 o 3."
                        ;;
                esac
            done
            ;;
        3)
            # Ruta: No hacer nada - Final por defecto triste
            mostrar_titulo
            echo "Decides guardar tus sentimientos y no hacer nada."
            echo ""
            echo "Ves a Enzo feliz con Camila y decides no interferir."
            echo "Tus amigas te apoyan en tu decision de mantenerte al margen."
            echo ""
            echo "Sofia: 'Tal vez sea lo mejor, Amara.'"
            echo "Iskra: 'No quieres ser la que destruya su felicidad.'"
            echo "Aylin: 'Pero tambien tienes derecho a ser feliz.'"
            pausar
            
            mostrar_titulo
            echo "Los meses pasan y tus sentimientos se hacen mas fuertes."
            echo "Cada dia es mas dificil ver a Enzo con otra persona."
            echo ""
            echo "Un dia, Enzo se acerca a ti solo."
            echo "Enzo: 'Amara, puedo preguntarte algo?'"
            echo "Tu: 'Claro.'"
            echo "Enzo: 'Ultimamente siento que estas distante conmigo.'"
            echo "Enzo: '¿Hice algo malo? Eramos buenos amigos.'"
            pausar
            
            mostrar_titulo
            echo "Tu corazon se acelera. No sabes que decir."
            echo ""
            echo "¿Como respondes?"
            echo ""
            echo "1) 'No, no hiciste nada malo. Solo estoy ocupada con los estudios.'"
            echo "2) 'Es complicado, Enzo. Prefiero no hablar de eso.'"
            echo "3) 'Tienes razon. Te he estado evitando y no es justo para ti.'"
            
            while true; do
                read -p "Elige tu respuesta (1, 2 o 3): " evitacion
                case $evitacion in
                    1)
                        mostrar_titulo
                        echo "Enzo: 'Esta bien, entiendo que los estudios son importantes.'"
                        echo "Enzo: 'Pero extraño hablar contigo como antes.'"
                        echo ""
                        echo "Se aleja y tu te sientes terrible por mentirle."
                        echo ""
                        echo "Las semanas pasan y la distancia entre ustedes crece."
                        echo "Enzo para de intentar acercarse y tu sufres en silencio."
                        pausar
                        
                        # Final triste por cobardía
                        mostrar_titulo
                        echo "=== FINAL TRISTE: EL SILENCIO DUELE ==="
                        echo ""
                        echo " ✗ ✗ ✗ ✗ ✗ "
                        echo ""
                        echo "Te graduas sin haber hablado nunca de tus sentimientos."
                        echo "Enzo se gradua creyendo que perdio tu amistad sin razon."
                        echo ""
                        echo "Años despues te enteras que el y Camila terminaron"
                        echo "poco despues de la graduacion."
                        echo ""
                        echo "Te preguntas constantemente 'que habria pasado si'"
                        echo "hubiera sido valiente y le hubiera dicho la verdad."
                        echo ""
                        echo "El miedo y las mentiras pueden robarnos"
                        echo "las oportunidades mas importantes de la vida."
                        echo ""
                        echo "=== FIN TRISTE ==="
                        exit 0
                        ;;
                    2)
                        mostrar_titulo
                        echo "Enzo: 'Amara, somos amigos. Puedes confiar en mi.'"
                        echo "Tu: 'Realmente prefiero no hablar de esto.'"
                        echo ""
                        echo "Enzo se ve herido por tu rechazo a abrirte con el."
                        echo "Enzo: 'Esta bien. Respeto tu privacidad.'"
                        echo ""
                        echo "Pero puedes ver en sus ojos que esta dolido."
                        echo "La distancia entre ustedes se hace mas grande."
                        pausar
                        
                        # Oportunidad perdida
                        mostrar_titulo
                        echo "=== TRES MESES DESPUES ==="
                        echo ""
                        echo "Escuchas a Mateo hablando con Adrian:"
                        echo "Mateo: 'Enzo ha estado muy triste ultimamente.'"
                        echo "Adrian: 'Si, dice que siente que perdio la amistad de Amara'"
                        echo "Adrian: 'y no sabe por que.'"
                        echo ""
                        echo "Tu corazon se rompe al escuchar esto."
                        echo ""
                        echo "Esa misma tarde, ves a Enzo sentado solo en el patio."
                        echo "Se ve genuinamente triste."
                        echo ""
                        echo "¿Que decides hacer?"
                        echo ""
                        echo "A) Acercarte y finalmente ser honesta"
                        echo "B) Mantener la distancia para no complicar las cosas"
                        
                        while true; do
                            read -p "Elige (A o B): " decision_final_silencio
                            case $decision_final_silencio in
                                [Aa])
                                    # Oportunidad de redencion
                                    mostrar_titulo
                                    echo "Te acercas a Enzo con el corazon latiendo fuerte."
                                    echo ""
                                    echo "Tu: 'Enzo, necesito pedirte perdon.'"
                                    echo "Enzo: 'Amara... ¿por que?'"
                                    echo "Tu: 'Por haberte evitado. No fue justo contigo.'"
                                    echo ""
                                    echo "Te sientas a su lado."
                                    echo ""
                                    echo "Tu: 'La razon por la que te he estado evitando es que...'"
                                    echo "Tu: 'me di cuenta de que me gustas. Y se que estas con Camila.'"
                                    pausar
                                    
                                    mostrar_titulo
                                    echo "Enzo se queda en silencio por un momento."
                                    echo "Enzo: 'Wow... no esperaba eso.'"
                                    echo "Enzo: 'Amara, agradezco tu honestidad.'"
                                    echo ""
                                    echo "Enzo: 'Pero debo decirte algo... Camila y yo terminamos'"
                                    echo "Enzo: 'hace dos semanas.'"
                                    echo ""
                                    echo "Tu: '¿En serio?'"
                                    echo "Enzo: 'Si. Nos dimos cuenta de que eramos mejor como amigos.'"
                                    pausar
                                    
                                    mostrar_titulo
                                    echo "Enzo: 'Y sobre lo que sientes por mi...'"
                                    echo "Enzo: 'Necesito tiempo para procesarlo.'"
                                    echo "Enzo: 'El año pasado me lastimaste mucho, pero...'"
                                    echo "Enzo: 'tambien extrañaba muchisimo tu amistad.'"
                                    echo ""
                                    echo "Tu: 'No espero nada, Enzo. Solo queria ser honesta.'"
                                    echo "Enzo: 'Dejame pensarlo, ¿si? Pero sigamos siendo amigos.'"
                                    pausar
                                    
                                    # Desarrollo lento hacia reconciliacion
                                    mostrar_titulo
                                    echo "=== DOS MESES DESPUES ==="
                                    echo ""
                                    echo "La amistad entre ustedes se ha restablecido."
                                    echo "Enzo ha sido mas cariñoso y atento contigo."
                                    echo ""
                                    echo "Un dia, despues de clases, el te busca."
                                    echo ""
                                    echo "Enzo: 'Amara, he estado pensando mucho sobre nosotros.'"
                                    echo "Enzo: 'Y creo que... creo que quiero intentar algo contigo.'"
                                    echo "Enzo: 'Pero esta vez tiene que ser diferente.'"
                                    echo ""
                                    echo "Tu: '¿A que te refieres?'"
                                    echo "Enzo: 'Comunicacion total. Nada de evitarnos o esconder sentimientos.'"
                                    pausar
                                    
                                    # FINAL FELIZ GANADO
                                    mostrar_titulo
                                    echo "=== FINAL FELIZ: LA HONESTIDAD GANA ==="
                                    echo ""
                                    echo " ♡ ♡ ♡ AMOR VERDADERO ♡ ♡ ♡ "
                                    echo ""
                                    echo "Tu: 'Acepto esa condicion completamente.'"
                                    echo ""
                                    echo "Enzo sonrie y toma tu mano."
                                    echo "Enzo: 'Entonces... ¿quieres ser mi novia?'"
                                    echo "Tu: 'Si, con todo mi corazon.'"
                                    echo ""
                                    echo "Sus amigos, que habian estado preocupados por ambos,"
                                    echo "celebran al verlos juntos y felices."
                                    echo ""
                                    echo "Sofia: '¡Al final la honestidad los unio!'"
                                    echo "Adrian: '¡Era obvio que estaban destinados a estar juntos!'"
                                    echo ""
                                    echo "Su relacion, construida sobre la base de errores pasados"
                                    echo "y honestidad presente, se vuelve mas fuerte cada dia."
                                    echo ""
                                    echo "A veces hay que perderse para encontrar"
                                    echo "el camino correcto al amor."
                                    echo ""
                                    echo "=== FIN PERFECTO ==="
                                    exit 0
                                    ;;
                                [Bb])
                                    # Final definitivamente triste
                                    mostrar_titulo
                                    echo "=== FINAL TRISTE: OPORTUNIDAD PERDIDA PARA SIEMPRE ==="
                                    echo ""
                                    echo " ✗ ✗ ✗ ✗ ✗ "
                                    echo ""
                                    echo "Decides no acercarte a Enzo."
                                    echo "Mantienes la distancia hasta la graduacion."
                                    echo ""
                                    echo "Años despues te enteras por redes sociales"
                                    echo "que Enzo se caso con alguien que conocio en la universidad."
                                    echo ""
                                    echo "En su foto de boda, se ve genuinamente feliz."
                                    echo ""
                                    echo "Tu sigues soltera, preguntandote siempre"
                                    echo "'que habria pasado si hubiera sido valiente'."
                                    echo ""
                                    echo "El miedo puede protegernos del dolor,"
                                    echo "pero tambien puede robarnos la felicidad."
                                    echo ""
                                    echo "=== FIN MAS TRISTE ==="
                                    exit 0
                                    ;;
                                *)
                                    echo "Elige A o B."
                                    ;;
                            esac
                        done
                        ;;
                    3)
                        mostrar_titulo
                        echo "Enzo: 'Te agradezco la honestidad. ¿Por que me evitabas?'"
                        echo "Tu: 'Porque... porque me di cuenta de que me gustas.'"
                        echo "Tu: 'Y se que estas con Camila, asi que pense que era mejor'"
                        echo "Tu: 'mantener distancia.'"
                        echo ""
                        echo "Enzo se queda completamente callado."
                        echo "Sus ojos muestran una mezcla de sorpresa y dolor."
                        pausar
                        
                        mostrar_titulo
                        echo "Enzo: 'Amara... esto es muy ironico.'"
                        echo "Tu: '¿Por que?'"
                        echo "Enzo: 'Porque Camila y yo terminamos ayer.'"
                        echo "Enzo: 'Nos dimos cuenta de que no eramos compatibles.'"
                        echo ""
                        echo "Tu: 'No sabia...'"
                        echo "Enzo: 'Y ahora me dices que sientes algo por mi,'"
                        echo "Enzo: 'justo cuando estoy emocionalmente agotado.'"
                        pausar
                        
                        mostrar_titulo
                        echo "Enzo: 'No se que pensar, Amara. El año pasado me rechazaste.'"
                        echo "Enzo: 'Aprendi a seguir adelante, tuve una relacion,'"
                        echo "Enzo: 'y ahora que estoy vulnerable, apareces tu.'"
                        echo ""
                        echo "Tu: 'Lo siento, Enzo. No planeé que pasara asi.'"
                        echo "Enzo: 'Lo se. Pero necesito tiempo para procesar todo esto.'"
                        echo ""
                        echo "Se aleja, dejandote con muchas emociones confusas."
                        pausar
                        
                        # Decision final crucial
                        mostrar_titulo
                        echo "=== UNA SEMANA DESPUES ==="
                        echo ""
                        echo "No has hablado con Enzo desde esa conversacion."
                        echo "Tus amigas te aconsejan que le des espacio."
                        echo ""
                        echo "Pero hoy, Enzo se acerca a ti al final de clases."
                        echo ""
                        echo "Enzo: 'Amara, he estado pensando toda la semana.'"
                        echo "Enzo: 'Sobre nosotros, sobre el pasado, sobre el presente.'"
                        echo ""
                        echo "¿Como respondes?"
                        echo ""
                        echo "1) 'Yo tambien he estado pensando mucho.'"
                        echo "2) 'Espero que hayas llegado a alguna conclusion.'"
                        echo "3) 'Se que es complicado. No hay prisa.'"
                        
                        while true; do
                            read -p "Elige tu respuesta (1, 2 o 3): " respuesta_crucial
                            case $respuesta_crucial in
                                1)
                                    # Camino hacia el final feliz
                                    mostrar_titulo
                                    echo "Enzo: 'Me alegra saber que tambien has reflexionado.'"
                                    echo "Enzo: 'Llegue a varias conclusiones.'"
                                    echo ""
                                    echo "Tu: 'Cuentame.'"
                                    echo "Enzo: 'Primero: nunca deje de sentir algo por ti.'"
                                    echo "Enzo: 'Segundo: estaba con Camila tratando de olvidarte.'"
                                    echo "Enzo: 'Tercero: no fue justo para ella ni para mi.'"
                                    pausar
                                    
                                    mostrar_titulo
                                    echo "Tu: 'Enzo...'"
                                    echo "Enzo: 'Dejame terminar. Cuarto: tengo miedo de que'"
                                    echo "Enzo: 'vuelvas a lastimarme si las cosas se complican.'"
                                    echo ""
                                    echo "Tu: 'Es un miedo valido. Yo tambien tengo miedo.'"
                                    echo "Enzo: 'Pero quinto, y mas importante: creo que'"
                                    echo "Enzo: 'ambos hemos madurado lo suficiente para intentarlo.'"
                                    pausar
                                    
                                    # FINAL FELIZ DEFINITIVO
                                    mostrar_titulo
                                    echo "=== FINAL FELIZ: SEGUNDA OPORTUNIDAD MERECIDA ==="
                                    echo ""
                                    echo " ♡ ♡ ♡ AMOR MADURO ♡ ♡ ♡ "
                                    echo ""
                                    echo "Tu: '¿Estas diciendo que quieres intentar algo conmigo?'"
                                    echo "Enzo: 'Estoy diciendo que quiero intentar algo REAL contigo.'"
                                    echo "Enzo: 'No una fantasia adolescente, sino algo construido'"
                                    echo "Enzo: 'sobre quien realmente somos ahora.'"
                                    echo ""
                                    echo "Tu: 'Yo quiero eso tambien.'"
                                    echo ""
                                    echo "Se abrazan, y ambos sienten que esta vez es diferente."
                                    echo "Mas maduro, mas real, mas honesto."
                                    echo ""
                                    echo "Sus amigos los apoyan, felices de verlos"
                                    echo "finalmente juntos de la manera correcta."
                                    echo ""
                                    echo "Adrian: '¡Por fin! Ahora si estan listos el uno para el otro.'"
                                    echo "Sofia: '¡El amor verdadero siempre encuentra su momento!'"
                                    echo ""
                                    echo "Su relacion se convierte en el ejemplo para sus amigos"
                                    echo "de como el amor puede crecer y madurar con el tiempo."
                                    echo ""
                                    echo "=== FIN PERFECTO ==="
                                    exit 0
                                    ;;
                                2)
                                    # Final neutral/agridulce
                                    mostrar_titulo
                                    echo "Enzo: 'Si, llegue a una conclusion.'"
                                    echo "Enzo: 'Creo que ambos necesitamos mas tiempo.'"
                                    echo "Enzo: 'Yo para recuperarme de mi ruptura,'"
                                    echo "Enzo: 'y tu para estar segura de lo que realmente quieres.'"
                                    echo ""
                                    echo "Tu: 'Entiendo...'"
                                    echo "Enzo: 'No es un no definitivo, Amara. Es un no por ahora.'"
                                    pausar
                                    
                                    mostrar_titulo
                                    echo "=== FINAL AGRIDULCE: ESPERANZA FUTURA ==="
                                    echo ""
                                    echo " ~ ~ QUIZAS EN EL FUTURO ~ ~ "
                                    echo ""
                                    echo "Respetas su decision y se mantienen como amigos."
                                    echo ""
                                    echo "Durante los ultimos meses de colegio,"
                                    echo "su amistad se fortalece lentamente."
                                    echo ""
                                    echo "En la graduacion, Enzo te dice:"
                                    echo "Enzo: 'Quizas en la universidad, cuando ambos estemos"
                                    echo "Enzo: 'en un mejor lugar emocional, podamos intentarlo.'"
                                    echo ""
                                    echo "Tu: 'Esperare ese momento, si es que llega.'"
                                    echo ""
                                    echo "No es el final que esperabas,"
                                    echo "pero hay esperanza en el horizonte."
                                    echo ""
                                    echo "=== FIN ESPERANZADOR ==="
                                    exit 0
                                    ;;
                                3)
                                    # Final muy maduro
                                    mostrar_titulo
                                    echo "Enzo sonrie con ternura."
                                    echo "Enzo: 'Gracias por ser tan comprensiva.'"
                                    echo "Enzo: 'Eso me demuestra que realmente has madurado.'"
                                    echo ""
                                    echo "Enzo: 'Y sabes que? Esa madurez me da esperanza'"
                                    echo "Enzo: 'de que podriamos funcionar como pareja.'"
                                    echo ""
                                    echo "Tu: '¿Que propones entonces?'"
                                    echo "Enzo: 'Que empecemos despacio. Como amigos que se conocen'"
                                    echo "Enzo: 'de nuevo, pero con la posibilidad de algo mas.'"
                                    pausar
                                    
                                    mostrar_titulo
                                    echo "=== FINAL MADURO: CONSTRUCCION LENTA ==="
                                    echo ""
                                    echo " ♡ ~ AMOR QUE CRECE ~ ♡ "
                                    echo ""
                                    echo "Deciden tomar las cosas con calma."
                                    echo "Pasan tiempo juntos, conversan profundamente,"
                                    echo "y lentamente redescubren su conexion."
                                    echo ""
                                    echo "Tres meses despues, su amistad se ha convertido"
                                    echo "naturalmente en algo mas profundo."
                                    echo ""
                                    echo "Una tarde, caminando juntos, Enzo dice:"
                                    echo "Enzo: 'Creo que estoy listo para ser tu novio oficialmente.'"
                                    echo "Tu: 'Y yo estoy lista para ser tu novia.'"
                                    echo ""
                                    echo "Su relacion, construida sobre paciencia y comprension,"
                                    echo "se convierte en la mas solida de su grupo de amigos."
                                    echo ""
                                    echo "El amor que crece lentamente"
                                    echo "suele ser el que mas perdura."
                                    echo ""
                                    echo "=== FIN HERMOSO ==="
                                    exit 0
                                    ;;
                                *)
                                    echo "Opcion invalida. Elige 1, 2 o 3."
                                    ;;
                            esac
                        done
                        ;;
                    *)
                        echo "Opcion invalida. Elige 1, 2 o 3."
                        ;;
                esac
            done
            ;;
        *)
            echo "Opcion invalida. Elige 1, 2 o 3."
            ;;
    esac
done

echo ""
echo "Gracias por jugar Corazon Morado!"
echo "Hecho por SoyMaycol <3"