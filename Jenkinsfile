pipeline{
//En que agente este va a estar corriendo
  agent any
//Que herramienta vamos a estar instalando al principio
  tools{
    gradle "Gradle"
  }

  stages{
    stage{"Tareas de limpieza"}
    steps{
      //Agarra el repo en el que esta el código que necesitamos correr
      git 'https://github.com/AlbertPonte/ProyectsAlbert.git'
      //Ejecutar la tarea clean de gradle
      sh 'gradle clean'
    }
  }
stage("Imprimo cosas"){
  steps{
    echo "Soy un stage aparte"
  }
}
}
