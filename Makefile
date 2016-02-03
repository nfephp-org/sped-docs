# sped-docs
#
# O propósito deste script é gerar o arquivo mkdocs.yml a aprtir do arquivo fonte doc/book/bookdown.json.
#
# Variaveis configuraveis:
# - BOOKDOWN2MKDOCS - especifica o caminho para o executável "bookdown2mkdocs";
#          a opção defaults aponta para ./vendor/bin/bookdown2mkdocs
#
# Opções disponíveis:
# - mkdocs   - regenera o arquivo mkdocs.yml
# - all      - sinomimo para mkdocs
#
# bootstrap
# readthedocs
# amelia
# ceruleam
# cosmo
# cyborg
# flatly
# journal
# readable
# simplex
# slate
# spacelab
# united
# yeti


BOOKDOWN2MKDOCS?=$(CURDIR)/vendor/bin/bookdown2mkdocs.php

.PHONY : all mkdocs bookdown2mkdocs

all : mkdocs

mkdocs : 
	@echo "Gerando mkdocs.yml a partir do bookdown.json..."
	-$(BOOKDOWN2MKDOCS) convert --site-name=NFePHP --repo-url=https://github.com/nfephp-org/sped-docs --copyright-url=http://www.nfephp.org/ --copyright-author="NFePHP" --mkdocs='{"theme": "readthedocs"}'
	@echo "[FEITO]"
