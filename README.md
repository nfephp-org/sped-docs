# NFePHP - Documentação da API
NFePHP é uma API para gerenciamento das comunicações entre o emitente de documentos fiscais eletrônicos do projeto SPED e os serviços dos SEFAZ estaduais e Receita Federal.
Inteiramente construído em PHP para rodar sob qualquer sistema operacional.

** Acompanhe o nosso forum e não deixe de se cadastrar no [grupo de discussão do NFePHP](https://groups.google.com/forum/#!forum/nfephp)! muitas de suas duvidas podem ser resolvida lá.**

## Condicionantes
Para usar essa API é necessário conhecimento em programação PHP, bem como conhecer os padrões atuais da linguagem e ter bases de legislação fiscal. É extremanente recomendável que seja estudado o conteúdo dos seguintes sites.

### Documentação Oficial do Projeto Sped 
* [Documentação do Funcionamento do sistema NFe](http://www.nfe.fazenda.gov.br/portal/principal.aspx)
* [Documentação do Funcionamento do sistema CTe](http://www.cte.fazenda.gov.br/)
* [Documentação do Funcionamento do sistema MDFe](https://mdfe-portal.sefaz.rs.gov.br/)
* [Documentação do Funcionamento do sistema CLe](http://cle.sefaz.am.gov.br/portal/)
* [Documentação do Funcionamento do sistema GNRE](http://www.gnre.pe.gov.br/gnre/portal/GNRE_Principal.jsp)
* [Documentação do Funcionamento do sistema eFinanceira](http://sped.rfb.gov.br/projeto/show/1179)
* [Documentação do Funcionamento do sistema eSocial](http://sped.rfb.gov.br/projeto/show/1048)

### Uso da linguagem de programação PHP
* [Composer Documentação Construção do composer.json](http://composer.json.jolicode.com/)
* [IMPORTANTE PHP do Jeito Certo](http://br.phptherightway.com/)
* [Coding Style Guide PSR-2](http://www.php-fig.org/psr/psr-2/pt-br/)
* [Autoload PSR-4](http://www.php-fig.org/psr/psr-4/)
> NOTA: A NFSe Nota Fiscal de Serviços Eletrônica, não tem padrão único, e a API tem somente alguns exemplos de montagem de um sistema para esse fim, mas nenhuma API realmente funcional para esse tipo de documentos fiscais.

## Objetivo

A API permite que um programa emissor se comunique com a SEFAZ. A API não foi criada para ela própria emitir dos documentos relativos ao projeto Sped, tendo em vista a enorme quantidade de informações necessárias e as características e especificidades de cada emitente.
Portanto é a sua aplicação quem deve definir que dados devem ser colocados no XML do documento fiscal eletrÔnico e não a API. Em principio a API não fará ou terá nenhum tipo de filtro ou validador interno, apenas aquele baseado nos schemas fornecidos pela SEFAZ.

