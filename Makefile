.PHONY: debug
debug:
	rye run ansible-playbook \
		-v \
		-i inventory/debug.yml \
		playbooks/debug.yml

.PHONY: lint
lint:
	rye run ansible-lint -vvv

.PHONY: clean-install
clean-install:
	rm -rf .venv
	rye sync
