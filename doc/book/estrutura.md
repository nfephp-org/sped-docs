# Estrutura

A partir da versão 4.1 a API NFePHP foi dividida em vários pacotes menores com o objetivo de facilitar a sua manutenção e permitir aos interessados contribuir para aqueles conjuntos que mais lhe interessem.
Outra vantagem dessa estrutura é que o desenvolvedor da aplicação irá instalar apenas aqueles pacotes que efetivamente irá utilizar em sua aplicação. Selecionando via composer apenas aquilo que lhe interesse.

Essa nova estrutura é composta de:

## sped-nfe

O sped-nfe contêm as classes principais e arquivos especificos para a operação com NFe e seu composer.json faz referência ou estabelece dependências de outros pacotes da API.

## sped-cte

O sped-cte contêm as classes principais e arquivos especificos para a operação com CTe e seu composer.json faz referência ou estabelece dependências de outros pacotes da API.

## sped-mdfe

O sped-mdfe contêm as classes principais e arquivos especificos para a operação com MDFe e seu composer.json faz referência ou estabelece dependências de outros pacotes da API.

## sped-cle

O sped-cle contêm as classes principais e arquivos especificos para a operação com CLe e seu composer.json faz referência ou estabelece dependências de outros pacotes da API.

## sped-nfse

O sped-nfse contêm as classes principais e arquivos especificos para a operação com NFSe e seu composer.json faz referência ou estabelece dependências de outros pacotes da API.

## sped-gnre

O sped-gnree contêm as classes principais e arquivos especificos para a operação com GNRE, usando o serviço GNRE de Pernambuco, que serve todas as unidades da federação, exceto SP, RJ e ES, e seu composer.json faz referência ou estabelece dependências de outros pacotes da API.

## sped-common

O pacote sped-common contêm as classes basicas para as operações de todos os pacotes principais. Como SOAP, PKCS12, Files, Strings, etc.
Este pacote não tem função por sí só é apenas uma dependencia dos pacotes principais, mas é onde estão inclusas todas as classes que acessam os serviços e os certificados digitais.

## sped-efd

O pacote sped-efd contêm as classes principais para a geração dos arquivos SPED Fiscal, que compõe uma das obrigações fiscais assessórias da grande maioria das empresas. Sua finalidade é auxiliar na montagem dos arquivos de  texto que devem ser encaminhados à Receita e ao SEFAZ periódicamente. E alḿe de auxiliar na montagem desse arquivo deve também permitir a pré-validação dos dados, como forma de acelerar o processo de validação e correção. O arquivo do SPED Fiscal em si, somente é enviado a Receita usando  o programa transmissor (TED) fornecido pela Receita Federal.

> NOTA: Não existe webservice para essa operação

## sped-console

O pacote sped-console, como o próprio nome diz, fornece uma função para linha de comando que permite a geração de classes "modelo" para cada um dos XML que compõe esses documentos eletrônicos (NFe, CTe, MDFe, etc.).
Dessa forma facilitando a criação dessas classes a partir dos seus schemas (XSD). Assim a cada novo pacote de schemas liberados pela SEFAZ, basta um unico comando no console para que as classes "modelo" sejam recicriadas já contemplando todas as alterações inclusas.

## sped-da

O sped-da contêm as classes principais para a geração e impressão dos documentos auxiliares utilizados pelos pacotes principais.
Esse pacote é apenas sugerido como uma dependência e poderá ou não ser instalado na sua aplicação, pois não é dependência de nenhum pacote principal.

## sped-serializer

O sped-serializer provê uma forma simples para passa os dados do XML de um dos documentos eletrônicos do SPED para sua classe construtora "modelo" criada pelo sped-console, e vice-versa.

## posprint

O projeto posprint provê o acesso as impressoras térmicas, seja via USB, Serial, IPP, Ethernet, Web, etc.
Além de possuir as classes para a criação dos documentos RAW na linguagem especifica de cada marca de impressora POS (Point Of Sales).
