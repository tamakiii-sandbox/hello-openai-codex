.PHONY: help setup teardown

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependency \
	dependency/openai \
	dependency/openai/codex

teardown:
	rm -rf dependency

dependency:
	mkdir -p dependency

dependency/openai:
	mkdir -p dependency/openai

dependency/openai/codex:
	git clone org-14957082@github.com:openai/codex.git
