# US: US-20 (Progreso) y US-46 (Perfil)
Feature: Monitoreo de Progreso y Gestión de Perfil
  Para motivarme y saber qué debo mejorar,
  Como un usuario de la aplicación Yachay,
  Quiero ver mi progreso detallado y poder actualizar mi información.

  Scenario: Visualización del progreso general
    Given que he completado al menos 3 juegos y 2 lecciones
    When navego a la sección "Mi Progreso"
    Then la aplicación muestra un gráfico de avance que refleja mi dominio del Quechua
    And puedo ver mi puntaje total (Puntos Ayllu) acumulado
    And se detalla mi nivel actual (ej. "Principiante Alto")

  Scenario: Edición exitosa del nombre de usuario
    Given que estoy en la pantalla "Configuración de Perfil"
    And mi nombre actual es "Paolo C."
    When modifico mi nombre a "Paolo Ayllu"
    And presiono el botón "Guardar Cambios"
    Then el sistema actualiza el nombre en la base de datos
    And el cambio se refleja inmediatamente en la pantalla de perfil

  Scenario: Indicador de racha (Streak)
    Given que he iniciado sesión y completado una lección en los últimos 7 días
    When entro a la aplicación el día 8
    Then el indicador de racha (streak) muestra "8 días"
    And recibo una bonificación de Puntos Ayllu por mantener la racha