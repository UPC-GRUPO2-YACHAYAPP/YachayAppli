# US: US-43 - Narraciones orales interactivas
Feature: Narraciones Orales Interactivas
  Para aprender sobre la cultura y el idioma en contexto,
  Como un usuario de la aplicación Yachay,
  Quiero acceder a narraciones orales con contenido cultural en Quechua.

  Scenario: Reproducción de narración con subtítulos
    Given que selecciono la narración "El mito de Manco Cápac"
    When inicio la reproducción del video
    Then el audio se reproduce en Quechua
    And los subtítulos se muestran sincronizados en mi idioma preferido
    And los controles de pausa y avance están disponibles y funcionan correctamente

  Scenario: Evaluación de comprensión tras la narración
    Given que he visto el 100% de la narración oral
    When hago clic en el botón "Finalizar y Evaluar"
    Then aparece un breve cuestionario de 5 preguntas sobre el contenido cultural
    And al enviar las respuestas, mi puntaje se registra en el módulo de "Cultura" del progreso