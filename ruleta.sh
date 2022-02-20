clear

CARGADOR=$(shuf -i 1-6 -n 1)

BALA=$(shuf -i 1-6 -n 1)

puntuaje=0

if [ $CARGADOR -eq $BALA ]

then

    play -q bala.mp3

    cd

  # rm -rf storage#

echo "PERDISTE"

fi

if [ $CARGADOR -ne $BALA ]

then

        final=$(($puntuaje + 1))

        play -q cargador.mp3

fi

echo " puntuaje: $final"

echo " por poco otra?"

read si no

if [ $si == si ]

then

  echo " okey... aqui vamos de nuevo"

        bash ruleta

fi





      

