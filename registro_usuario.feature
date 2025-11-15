# US: US-23 - Registro de Cuenta y Acceso Inicial
Feature: Registro de Cuenta y Acceso Inicial
  Como turista, quiero registrarme fácilmente en la aplicación al ingresar por primera vez, 
  para crear mi cuenta y empezar a usar las funciones sin complicaciones.

  Scenario: Registro exitoso con datos válidos
    Given que el usuario potencial abre la aplicación por primera vez
    When completa el formulario de registro con un email único, nombre y contraseña segura
    And selecciona el idioma a aprender (Quechua)
    And presiona el botón "Registrarme"
    Then la aplicación crea la cuenta exitosamente en el backend
    And redirige al usuario a la pantalla de bienvenida
    And se le muestra el tutorial interactivo inicial de la aplicación

  Scenario: Intento de registro con email ya existente
    Given que estoy en el formulario de registro
    And que el email "usuario@ayllutalk.com" ya se encuentra registrado en el sistema
    When intento registrarme usando el email "usuario@ayllutalk.com"
    And proporciono una contraseña válida
    And presiono el botón "Registrarme"
    Then la aplicación debe permanecer en la pantalla de registro
    And se muestra un mensaje de error: "Este correo ya está registrado. Intente Iniciar Sesión."

  Scenario: Validación de campos obligatorios en el registro
    Given que el usuario está en el formulario de registro
    When deja el campo "Contraseña" vacío
    And presiona el botón "Registrarme"
    Then el sistema muestra una advertencia de validación junto al campo vacío
    And no se permite el avance a la siguiente pantalla