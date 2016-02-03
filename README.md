# NFePHP - Documentação da API

Aqui devem ser montadas as documentações basicas e estabelecidas as estruturas do projeto 
NFePHP e suas partes "sped"

Para essa documentação será utilizado o padrão Markdown usando o pacote Bookdown2Mkdocs

```
composer global require phly/bookdown2mkdocs
```

Esse pacote converte um conjunto de paginas .md e sua definição em um arquivo .json em uma estrutura legivel e convertiver diretamente pelo padrão mkdocs.yml para então permitir a atualização automática em um repositório do "Read The Docs".


O Raphael Canguçu irá apontar o DNS do dominio nfephp.org para o endereço do "Read the Docs" após essa pimeira subida de páginas da documentação.

Esse repositório deverá possuir um "webhook" direto ao "Read The Docs" para que os arquivos sejam lidos e disponibilizados.

 > O "Read The Docs" utiliza programas em python para renderizar as paginas e aceita apenas "markdown" ou "reStructuredText" e para esses formatos os programas "MkDown" e "Sphinx" respectivamente.
