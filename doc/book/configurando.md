# Configurando a API

A configuração da API é feita através de um arquivo ou até de um array no formato JSON.

Esse array-JSON contêm os dados necessários para que a API saiba onde estão os arquivos importantes, como os certificados digitais e outras informações relevantes.

Abaixo vamos descrever o conteúdo desse array-JSON, mas antes alguns esclarecimentos.

1. Porque usar o formato JSON e não um array do PHP ?
> Apenas por facilidade de passar os parametros por vários meios, até mesmo por GET ou POST e também pode ser bem legível por humanos.

2. Porque tem tantos dados sobre CTe ou MDFe, se eu só vou usar NFe ?
> O mesmo arquivo de configuração poderá ser usado em todos os pacotes que fazem parte do SPED, seja NFe, CTe, MDFe, CLe, e até NFSe.

A seguir temos um exemplo preenchido desse array-JSON

```json
{
    "atualizacao":"2016-02-02 08:01:21",
    "tpAmb":2,
    "pathXmlUrlFileNFe":"nfe_ws3_mod55.xml",
    "pathXmlUrlFileCTe":"cte_ws1.xml",
    "pathXmlUrlFileMDFe":"mdfe_ws1.xml",
    "pathXmlUrlFileCLe":"cle_ws1.xml",
    "pathXmlUrlFileNFSe":"",
    "pathNFeFiles":"\/MyApp\/nfe",
    "pathCTeFiles":"\/MyApp\/cte",
    "pathMDFeFiles":"\/MyApp\/mdfe",
    "pathCLeFiles":"\/MyApp\/cle",
    "pathNFSeFiles":"\/MyApp\/nfse",
    "pathCertsFiles":"\/MyApp\/certs\/",
    "siteUrl":"http:\/\/myapp.local",
    "schemesNFe":"PL_008h2",
    "schemesCTe":"PL_CTE_104",
    "schemesMDFe":"MDFe_100",
    "schemesCLe":"CLe_100",
    "schemesNFSe":"",
    "razaosocial":"Fulano de tal Ltda",
    "siglaUF":"AM",
    "cnpj":"547678524000133",
    "tokenIBPT":"AAAAAAA",
    "tokenNFCe":"GPB0JBWLUR6HWFTVEAS6RJ69GPCROFPBBB8G",
    "tokenNFCeId":"000002",
    "certPfxName":"myapp_2016.pfx",
    "certPassword":"JIO&$@2990_zx",
    "certPhrase":"tajomstvo",
    "aDocFormat":{
        "format":"P",
        "paper":"A4",
        "southpaw":"1",
        "pathLogoFile":"\/MyApp\/publico\/images\/logo.jpg",
        "logoPosition":"L",
        "font":"Times",
        "printer":"hpteste"},
    "aMailConf":{
        "mailAuth":"1",
        "mailFrom":"roberto@myapp.local",
        "mailSmtp":"smtp.myapp.local",
        "mailUser":"roberto@myapp.local",
        "mailPass":"heslo$",
        "mailProtocol":"ssl",
        "mailPort":"587",
        "mailFromMail":null,
        "mailFromName":null,
        "mailReplayToMail":null,
        "mailReplayToName":null,
        "mailImapHost":null,
        "mailImapPort":null,
        "mailImapSecurity":null,
        "mailImapNocerts":null,
        "mailImapBox":null},
    "aProxyConf":{
        "proxyIp":"",
        "proxyPort":"",
        "proxyUser":"",
        "proxyPass":""}
    }
```
Esclarecendo alguns detalhes desses campos do arquivo de configuração:

Onde encontramos "\/" indica que temos que apontar o path completo, isso pode ser diferente em ambiente Windows, então teste e fique atento. Esses paths apontam para uma pasta na raiz do servidor Linux denominada "MyApp" essa é, no caso, a pasta raiz da aplicação mapeada no VirtualHost do Apache ou do Nginx, mas poderiam ser em qualquer local do servidor. É importante salientar que essas pastas devem ter PERMISSÃO DE ESCRITA pelo usuário do servidor Web (Apache ou do Nginx). Ou seja, as pasta onde estão os certificados e as pastas onde serão mantidos os XML serão acessadas e escritas pelo servidor Web. **É importante que a pasta onde são mantidos esses documentos não fiquem ao alcance externo, então não deixe nada disso em pastas PUBLICAS**.


Explicando as variáveis:

- **"atualizacao"** - apenas contê a data e hora da ultima alteração desses dados.
 
- **"tpAmb"** - tipo de ambiente, sendo 2 homologação e 1 produção. CUIDADO com isso pois se estiver em produção seus dados e qualquer operação com a SEFAZ será considerada REAL com implicações FISCAIS.
 
- **pathXmlUrlFile???"** - aqui são colocados os nomes dos arquivos usados  para acessar as listas de endereçoes dos webservices de cada um dos componentes do SPED, estes arquivos xml são distribuidos junto com a API e estão na pasta "vendor/nfephp-org/sped-nfe/config" ou equivalente, não indique o path completo nesses casos apenas o nome do arquivo.
 
- **Os damais casos, acredito que sejam auto explicativos.**

## Instanciando com a configuração

```php
$config = '<path para o arquivo config.json ou uma string Json>';
$tools = new NFePHP\Tools($config);
```
Para instanciar as classes de comunicação basta passar esse arquivo json ou uma string que contenha esses dados em formato Json. Por exemplo que seu sistema tem várias empresas é só colocar essa configuração em um campo da base de dados e usar qunado necessário, ou denominar os arquivos e paths da forma que você quiser.

