# US: US-03 - Juegos educativos de vocabulario
Feature: Juegos Educativos de Vocabulario y Gramática
  Para que los turistas puedan practicar y evaluar su conocimiento de vocabulario Quechua,
  Como un usuario de la aplicación Yachay,
  Quiero acceder a juegos educativos interactivos.

  Scenario: Partida de juego completada con éxito
    Given que el usuario selecciona el juego "Vocabulario: Frutas"
    And la ronda actual consta de 10 preguntas
    When responde correctamente el 100% de las 10 preguntas
    Then la aplicación muestra una pantalla de resultados con el mensaje "¡Nivel Completado!"
    And el puntaje total (Puntos Ayllu) se registra y suma a su perfil de progreso

  Scenario: Falla al seleccionar respuesta incorrecta
    Given que el usuario está en una ronda del juego de vocabulario
    When elige una opción equivocada
    Then la aplicación muestra un mensaje de feedback "Incorrecto, revisa el concepto."
    And el sistema no finaliza la ronda, permitiendo corrección o reintento

  Scenario: Ajuste de la dificultad
    Given que el usuario selecciona el nivel de dificultad "Difícil"
    When inicia una partida del juego de gramática
    Then las preguntas mostradas son del set de alta dificultad
    And el tiempo de respuesta es reducido en un 20%