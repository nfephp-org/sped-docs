# Iniciando
Para começar a usar a API, o programador deve ter uma boa base em programação PHP e conhecer as práticas e ferramentas mais atuais. E deve ter em mente que esse pacote receberá **MUITAS** modificações ao longo to tempo. Ou seja, sempre que novas alterações ocorrerem nas regras da SEFAZ, haverão alterações nesses pacotes. Além disso existe um grande esforço pessoal em identificar e remover os **BUGS** do código, e portanto fique sempre ligado na versão atual dos pacotes e mantenha atualizado.

## Repositório
Todos os códigos são mantidos em repositórios separados no [GitHub](https://github.com/nfephp-org), bem como essa documentação.

## Versionamento
Para fins de transparência e discernimento sobre nosso ciclo de lançamentos, e procurando manter compatibilidade com versões anteriores, o número de versão de cada pacote da API NFePHP, será mantida, tanto quanto possível, respeitando o padrão abaixo.

Cada repositório terá duas branches:

* `<master>` - essa branch contêm as versão de desenvolvimento atual
* `<develop>`- essa branch contêm a versão seguinte de desenvolvimento

A cada correção ou alteração são ciradas novas TAGs que são numeradas com o seguinte formato:

`<major>.<minor>.<patch>`

Com as seguintes orientações:

* Quebra de compatibilidade com versões anteriores, **avança o `<major>`**.
* Adição de novas funcionalidades sem quebrar compatibilidade com versões anteriores, **avança o `<minor>`**.
* Correção de bugs e outras alterações menores, **avança `<patch>`**.

Para mais informações, por favor visite <http://semver.org/>.

## Requisitos
A API tem vários pré-requisitos principalmente com referência ao ambiente PHP, isso se refere aos modulos do PHP que não são compilados diretamente em seu nucleo, mas em pacotes separados que podem ser instalados a qualquer tempo.
Cada distribuição do PHP compila e fornece esses modulos de forma mais ou menos automática, e caso não tenham sido instalados será necessário instala-los manualmente e ativá-los no php.ini ou por linha de comando.

**Módulos Requeridos do PHP**

- php-mcrypt
- php-curl
- php-gd
- php-dom
- php-xml
- php-xmlreader
- php-soap
- php-openssl
- php-zip
- php-zlib
- php-fileinfo
- php-iconv
- php-mbstring

> A versão atual da API está sendo refatorada para uso do PHP 7 e portanto podem ocorrer problemas caso seja instalado em um ambiente com PHP cuja versão seja menor. Mas a mínima versão aceitável para uso, seria PHP 5.6, porém sem garantias que funcione e permaneça funcionando nesse ambiente *obsoleto*.

> Existe o cuidado durante o desenvolvimento, de não incluir classes ou funções especificas a um sistema operacional, portanto em tese, a **API NFePHP** deve funcionar sem problemas seja em ambiente Windows, Apple OSx ou Linux. Pessoalmente, eu desenvolvo e aplico os testes sempre em ambiente Linux, mais especificamente usando versões do Debian e Ubuntu.

## Instalação
A instalação dos pacotes deve ser feita com o uso do [Composer](https://getcomposer.org/), para quem não conhece, o Composer é um gerenciador de pacotes do PHP que ajuda enormemente a terefa de distribuir, instalar e localizar as classes, nesse caso usando os recursos do [PSR-0](http://www.php-fig.org/psr/psr-0/pt-br/) e do [PSR-4](http://www.php-fig.org/psr/psr-4/) e do autoload. Todos os pacotes disponíves para instalação pelo Composer você encontra no [Packagist](https://packagist.org/).
Para fazer a instalação via composer vá para a raiz do seu aplicativo e execute o comando do composer. Ou complemente o seu próprio "composer.json"

No primeiro caso:

#### Para instalar o pacote de NFe
```bash
composer require sped-nfe
```
#### Para instalar o pacote de CTe
```bash
composer require sped-cte
```
#### Para instalar o pacote de MDFe
```bash
composer require sped-mdfe
```

E assim por diante, veja mais detalhes na documentação.

Já se tiver o seu próprio composer.json, inclua o pacote desejado como dependência da sua aplicação.
```json
"require": {
        "nfephp-org/sped-nfe": "^4.1.0",

```
**IMPORTANTE: sempre deixe a versão da API no seu composer.json marcada com o "circunflexo" assim sempre que houver uma atualização do pacote o composer será capaz de usa-la, por exemplo se estiver na versão 4.1.2 e você der o comando de atualização dos pacotes essa nova versão do pacote será baixada e instalada automaticamente.**


> É possivel sim usar as classes sem o composer, porém é um enorme disperdício de tempo e irá criar dificuldades para atualizar as classes, e isso não é _recomendado_.

> _**Mas eu só queria usar as classes agora vou ter que estudar e saber usar o composer, autoload e PSR**_ ?

> É, e não é só isso não, para poder usar a API adequadamente terá que estudar muito mais do que isso. E se não conhece o **Composer** e o **autoload**, sugiro **FORTEMENTE** que aprenda antes de tentar usar.
