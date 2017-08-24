Notas personales Curso Mastering GitHub de Codeschool.
==========

Link del Curso: [Mastering GitHub](https://www.codeschool.com/courses/mastering-github)

Workflow GitHub interesante: [Project Guidelines](https://github.com/wearehive/project-guidelines#git-workflow)

Nombre inicial del repositorio: https://github.com/cristinafsanz/dojo_rules

GitHub es más que un almacén de ficheros, sirve para compartir, discutir o hacer revisiones de código.

## Configuración

Tiene distintos niveles de configuración:

* local: para un repositorio
* global: para tu usuario
* system: para todos los usuarios

Ej. trabajas con la cuenta para tu empresa pero contribuyes a un proyecto Open Source o tienes una cuenta dedicada a aprender.

* Comprobar el local

     ```
     git config --local user.name

     git config --local user.email
     ```

* Ver configuraciones globales

    ```
     git config --global —list
     ```

     o

     cat .gitconfig

* Ver configuraciones locales dentro del repositorio

    ```
     git config --local —list
     ```

     o

     cat .gitconfig (dentro del repositorio)

* Configurar push default (simple por defecto en Git 2.0)

     ```
     git config --global push.default simple
     ```

* Configurar pull default

    ```
     git pull --rebase
     ```

Es como git fetch y git rebase

* Para hacerlo siempre

    ```
    git config --global pull.rebase true
    ```

* Configurar alias

    ```
     git status -s //lo mínimo, menos verboso

     git s:

     git config —global alias.s “status -s"

     git lg:

     git log //muchas líneas

     git config —global alias.lg "log --oneline --decorate --all --graph"
     ```

* Compartir las configuraciones

     * Tener una página wiki
     * Poner dot files en un repositorio


## Crear un repo

Se puede clonar en local, luego hacer commit y push de los cambios. Y si el repo lo crea otro y eres colaborador, también.
Si no eres colaborador puedes hacer un fork: haces una copia de tu repositorio y puedes hacer commit y push a tu fork.

* Hago un fork de https://github.com/deadlyvipers/dojo_rules y lo clono

    ```
    git config --local user.name cristinafsanz

    git config --local user.email <mi-email>

    git clone https://github.com/cristinafsanz/dojo_rules.git
    ```

* Se puede añadir y hacer commit con un único comando

    ```
    git commit -am "Lo que sea"
    ```

## Pull request

Una vez que lo haces si subes otro commit se refleja en la pull request (es igual que si hicieras una rama a la rama master de deadlyvipers).


## Actualizar tu fork

Pull para actualizar el update en el laptop y push para actualizar el fork remoto.  

* Añadir remoto para upstream

    ```
    git remote add upstream <path-to-repo>
    ```

Ej. git remote add upstream https://github.com/deadlyvipers/dojo_rules.git

* Fetch cambios

    ```
    git fetch upstream
    ```

* Merge a master

    ```
    git merge upstream/master master
    ```

Fetch y merge es igual a: git pull upstream master

* Push al remoto

    ```
    git push origin master
    ```


## Workflow de repositorio único

Todos trabajan con el mismo repositorio haciendo clone y es fácil mantenerse actualizado.

* Utilizar estrategia de ramas por funcionalidad y es fácil colaborar

    ```
     git fetch //para tener todas las ramas

     git branch -a //para listar las ramas

     git checkout f2 // para tener la rama de otro

     git checkout -b feature_branch //crear nueva rama
     ```

* Después se puede hacer merge a master

* Añadir nueva funcionalidad

    ```
     git checkout -b kill_list
     ```

     Añadir un fichero, add, commit

     ```
     git push -u origin kill_list //añade rama remota con ese nombre y dice la rama por defecto para subir para esa rama
     ```

## Review de una pull request

```
git fetch //te bajas todas las ramas de GitHub

git branch -a //ver todas las ramas, también las remotas

git checkout //bajar una copia local de una rama remota
```

## Interactive rebases para simplificar la historia

```
git checkout -b feature_branch
```

* Antes de hacer el pull request

    ```
    git rebase -i
    ```

* Buenas prácticas:

     * Pero nunca coger todos los commit y hacer squash para dejarlo en 1, no hacer squash de la rama entera.
     * Sólo hacer squash de commits que no sean necesarios.


## Rebase para crear una historia lineal

* Si el equipo está a gusto con eso

    ```
    git checkout feature_branch
    git rebase master
    ```

## Fast forward o merge recursivos

* fast forward: menos commits porque no tienes el commit del merge

    ```
     git checkout feature_branch

     git merge master
     ```

* Más recomendable el merge recursivo: más claro

    ```
     git checkout feature_branch

     git merge —no-ff feature_branch //no se haga el fast forward
     ```

     * Así tienes un commit si quieres eliminar este feature_branch de la historia (1 solo commit que revertir).

     * Queda más claro qué se hizo en una rama.

* Ejemplo

    ```
    git rebase -i HEAD~5 //los últimos 5 commits
    ```

* Cambiar el primero con r y los demás con f para quitarlos

* Puedes cambiar el mensaje del que te quedas

* Al mirar git log ves que solo queda 1

    ```
    git push -f
    ```

En el pull request solo hay 1 commit.

## Mergear un rama

* Rama deadly_skills a master
* Hay que estar en la rama master para hacer el merge

    ```
    git checkout master

    git merge deadly_skills

    git push origin master
    ```

Ya se cerró el pull request que estaba abierto.


## Tags

* Hacerlo siempre que se vaya a hacer push a producción.

* Tags son documentación. Usarlo para mantener un listado de releases a producción. Usar semantic versioning.

Tipos:

* git tag: solo un tag (lightweight)

* git tag -s: usa public key (signed)

* git tag -a: (annotated) añade info, cuando y por qué

    ```
    git tag -a v1.3.2 -m "Tag message"

    git push —tags
    ```

Ejemplo:

* Te posicionas en un commit en particular

    ```
    git log

    git checkout cabc2ec

    git tag -a v.1.1.0 //sin poner el -m te sale el vi para poner mejor el mensaje
         v.1.1.0 - with action plan

    git push —tags
    ```


## Release tags vs Release branches

* Release tags apunta a un commit

* Ramas release pueden actualizarse con nuevos commits (ej. hotfix)

* Razones:

     * Manual QA

     * Releases largas (mantener versiones)

     * Hot fixes on demand

          ```
          git checkout v.1.1

          git checkout -b rb1.1

          //haces cambios

          git commit -m "Hotfix"

          git tag v1.1.1 -m "Hotfix"

          git checkout master

          git merge rb1.1 -m "Merge Hotfix"

          git push -d origin rb1.1

          git branch -d rb1.1
          ```

## Releases

 * Para compartir binarios descargable con notas adicionales con cada uno de los tags.

      * Así no hace falta que te clones el repositorio.

 * Una forma:

      * A partir de un tag, añadir binaries sin añadirlos al repo.

      * Notas de release más entendibles.

 * También si se añade una release se crea automáticamente un tag.

 * Cuando estás en la pestaña releases, puedes editarlo y añadir notas y luego publicar la release.

      * Draft a new release.

      * Target: puedes buscar en el select el commit que quieres seleccionar.

      * Título: v1.0.0 y la descripción.


## Issues

* Tener track de los bugs

* Manejar features

* Por defecto está habilitado.

* Para los públicos cualquiera puede acceder.

* Se puede cerrar si pones “fixes", “closes" o “resolves"

    ```
    git commit -m "Fixes #1"
    ```


## Wiki

* Empezar con un README.md para explicarlo.

* Cuando el proyecto crece es mejor empezar a usar una wiki.

* En settings/options. Si sólo quieres que lo hagan colaboradores habilitar el checkbox de sólo colaboradores.


## GitHub Pages

* Alojar una página web estática simple relacionada con el proyecto o la organización.

* Casos de uso:

     * Para añadir documentación más elaborada a un proyecto.

     * Alojar un sitio para una organización o un usuario.

* Crear tu página de usuario

     * Crear un repo username.github.io //convención

     * Usar el autogenerador de página //en Settings

     * Escribir contenido con un formulario con título y descripción

     * Elegir tema: como punto inicial luego puedes añadir html/css

     * Publicar

     * Te lleva a la página inicial con los ficheros creados y te dice la url para acceder (tienes que darle unos minutos para que se active)

* Crear una página de proyecto

     * Como página de usuario pero para un repositorio.

* Configurar dominio customizado

     * Crear fichero CNAME en la raíz del repositorio

     * En la misma rama del contenido de la página

     * Configurar CNAME con el DNS host

          * Proveedor DNS: el profe usa namecheap.com

               * Buscar el nombre de dominio

               * Ir a host records

               * Añadir un nuevo CNAME para el subdominio que elija, ej. pages:

                    * Subdomain settings: pages

                    * IP ADDRESS / URL: deadlyvipers.github.io

                    * Record type: CNAME (alias)

              * Con esto se va a redirigir a pages.deadlyvipers.com porque tenía deadlyvipers.com como dominio (en unos 15 minutos se puede acceder)


## Configurar nuevo repositorio

* Se puede cambiar nombre

* Cambiar la rama por defecto: al cerrar una issue con un commit no se cierra hasta que no se mergea en la rama por defecto.

* Elegir si solo quieres que los colaboradores pueden añadir elementos.

* Recomendable empezar con el README.

* Se puede ver actividad con Insight - Pulse.


## Autenticación / autorización

* Conectar con GitHub

* HTTPS sobre SSH usando un credential helper para no tener que poner contraseñas
* Se puede tener un 2 factor authentication por si te quitan la contraseña que no se pueda acceder

* Access Tokens

    * Para logins con 2FA

    * Para accesos script/API

        * Edit profile - Applications - Generate New Token

* Acceso automatizado a GitHub

     * SSH agent forwarding: no automatización disponible.

     * OAuth access tokens: mismos permisos que el usuario.

     * Deploy key: acceso limitado a un repo.

     * Machine user: crea una cuenta GitHub y maneja los permisos.

* Mirar en Edit Profile - Security

     * Las últimas conexiones


## Automatizar GitHub

* Integrating Existing services: https://github.com/github/github-services/tree/master/docs

* Settings - Webhooks & Services

* Ejemplos:

    * Jira: resuelves issues con mensajes de commit.

    * CircleCI: ejecuta tests de forma automática cuando haces push.

* Crear Webhooks personalizados

    * Para integrar nuestras propias aplicaciones

* Ejemplo: Actividad de pull request

    * Ellos proveen de una url para mi usuario: http://codeschool-mastering-github.herokuapp.com/


## API GitHub

* Ver posibilidades con comandos curl

    ```
    curl https://api.github.com: lista de comandos

    curl https://api.github.com/emojis: lista de emojis

    curl https://api.github.com/users/cristinafsanz: información pública de usuario

    curl https://api.github.com/users/cristinafsanz/repos: repositorios de usuario

    curl -i https://api.github.com/users/cristinafsanz //con la respuesta
    ```

* Para hacer más cosas:

     * Crear un personal access token (desde la página web lo más fácil) y utilizarlo

     ```
     curl -i H’Authorization: token __
     ```

* Se puede crear un nuevo repositorio, crear una nueva issue...


## GitHub por línea de comandos

* Sin usar el navegador

* Hub es un wrapper de línea de comandos.

* Instalar Hub

    * Mac:

    ```
    brew update

    brew install hub
    ```

    * Linux/Windows

    ```
    git clone https://github.com/github/hub.git

    cd hub

    rake install prefix=/usr/local
    ```

* Se pueden usar los comandos

    ```
     hub clone

     hub fork
     ```

* Alias de hub como git

    ```
    alias git=hub

    git clone

    git fork
    ```

* Crear un repo usando hub

    ```
    git init new_repo

    cd new_repo

    vi README.md

    git add .

    git commit

    git create

    git push -u origin master

    git browse
    ```

* Pull request usando hub

    ```
    git checkout -b new_branch

    vi new_code.rb

    git add .

    git commit

    git push - u origin new_branch

    git pull-request
    ```

* Clone usando hub

    ```
    git clone repo_name //nuestro repo

    git clone username/repo_name //repo de otros
    ```

* Fork
    ```
    git clone deadlyvipers/dojo_rules

    cd dojo_rules

    git fork
    ```

* Para pull-request hay que especificar repo/rama para que no vaya a la original

    ```
    git checkout -b new_branch

    vi new_code.rb

    git add .

    git commit

    git pull-request -b cristinafsanz:master -h cristinafsanz:new_branch

    git browse dojo_rules
    ```

## Git Hooks

* [Screencrast Codeschool](https://www.codeschool.com/screencasts/git-hooks)

* Scripts customizados que se ejecutan con comandos git.

* Hay Git Hooks de cliente y de servidor, aquí se hablará de los de cliente.

* Están en .git/hooks y no se comitean o clonan pero si es importante para otros se puede poner en otro lugar para subirlo a GitHub.

* Git Hooks disponibles

    * Flujo commit

        * pre-commit

        * commit-msg

        * post-commit

    * Flujo email

        * applypath-msg

        * pre-applypatch

        * post-applypatch

    * Otros

        * pre-rebase

        * post-checkout

        * post-merge

* Activar Git Hooks disponibles

    ```
    cd .git/hooks
    cp pre-commit.sample pre-commit
    vim pre-commit
    ```

    * Para probarlo poner un fichero con carácter no ASCII (cømmit.txt): Al ejecutar el git commit te avisa que vas a añadir un nombre de fichero non-ascii.

* Crear un nuevo hooks

    ```
    cd .git/hooks
    cp post-commit.sample post-commit
    vim post-commit
    ```

    * Ej. hacer push una vez que hagas commit

    ```
    git push origin master
    ```




