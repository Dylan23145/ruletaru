score = 1
juego () 
  {


clear
CARGADOR=$(shuf -i 1-6 -n 1)

BALA=$(shuf -i 1-6 -n 1)



if [ $CARGADOR -eq $BALA ]

then
clear
  
    play -q bala.mp3
    echo " puntuaje: $score"
    
    score=0 

echo "PERDISTE"

fi

if [ $CARGADOR -ne $BALA ]

then
  
     score=$(( $score + 1))
 
      play -q cargador.mp3

fi

echo " puntuaje: $score"

echo "Te atreves a otra? (si/no)"

read si

if [ $si == si ]

then
  juego
  echo " okey... aqui vamos de nuevo"
fi
  }
juego
