#!/bin/bash

# Inicializar un repositorio de Git
git init

# Agregar todos los archivos al índice y realizar un commit inicial
git add .
git commit -m "Initial commit"

# Verificar la versión de la CLI de GitHub
gh --version

# Iniciar sesión en GitHub
gh auth login

# Crear un nuevo repositorio en GitHub
gh repo create nombre_del_repositorio --public

# Añadir el repositorio remoto
git remote add origin https://github.com/username/nombre_del_repositorio

# Empujar los cambios al repositorio remoto
git push -u origin master

# Abrir el repositorio en el navegador
xdg-open https://github.com/username/nombre_del_repositorio
