# Agent Guidelines

## Purpose
This repository is managed with a small, readable Ansible setup for a few servers.
Keep changes simple, explicit, and easy to review.

## Platform Baseline
- Target OS is openSUSE MicroOS.
- Use transactional updates for system-level package and config changes (`transactional-update ...`), not direct mutable package workflows.
- When multiple transactional changes are needed in one play, chain later calls with `transactional-update --continue ...` so changes land in the same pending snapshot.
- Run service management tasks that depend on transactional packages only after the transactional reboot task.

## Working Style
- Prefer clarity over cleverness.
- Avoid abstractions unless they materially reduce duplication.
- Keep tasks idempotent and predictable.
- Use `transactional-update` on openSUSE MicroOS for package changes.
- Use `ansible_facts[...]` when referencing facts.
- Run Ansible via `just` targets from `ansible/Justfile` by default.
- Use direct `ansible`/`ansible-playbook` commands only when no suitable `just` target exists or when explicitly requested.

## Ansible Conventions
- Inventory lives in `ansible/inventory/hosts.ini`.
- Common vars are in `ansible/group_vars/all.yml`.
- Entry playbook is `ansible/playbooks/site.yml`.
- Compose files go under `ansible/files/`.
- Use `community.docker.docker_compose_v2` for Compose.

## Safety
- Don’t use destructive git commands.
- Don’t modify unrelated files.
- If a change requires a reboot, make it explicit in the playbook.
