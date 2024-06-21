# Definir el nombre del entorno virtual
VENV_NAME = venv

# Definir los archivos de requisitos
REQUIREMENTS_DEV = requirements-dev.txt
REQUIREMENTS_PROD = requirements.txt

# Comandos para instalar dependencias de desarrollo y producción
install-dev:
	pip install -r $(REQUIREMENTS_DEV)

install:
	pip install -r $(REQUIREMENTS_PROD)

# Comando para crear un entorno virtual
venv:
	python -m venv $(VENV_NAME)

# Comando para activar el entorno virtual en Unix/macOS
activate-unix:
	source $(VENV_NAME)/bin/activate

# Comando para activar el entorno virtual en Windows
activate-windows:
	$(VENV_NAME)\Scripts\activate

# Comando para limpiar el entorno (eliminar el entorno virtual)
clean:
	rm -rf $(VENV_NAME)

# Objetivo por defecto que muestra ayuda
help:
	@echo "Usa make <objetivo> donde <objetivo> es uno de los siguientes:"
	@echo "  install-dev       - Instalar dependencias de desarrollo"
	@echo "  install           - Instalar dependencias de producción"
	@echo "  venv              - Crear un entorno virtual"
	@echo "  activate-unix     - Activar el entorno virtual en Unix/macOS"
	@echo "  activate-windows  - Activar el entorno virtual en Windows"
	@echo "  clean             - Eliminar el entorno virtual"

.PHONY: install-dev install venv activate-unix activate-windows clean help
