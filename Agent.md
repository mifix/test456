# Agent Guidelines

## Purpose
This repository is managed with a small, readable Ansible setup for a few servers.
Keep changes simple, explicit, and easy to review.

## Working Style
- Prefer clarity over cleverness.
- Avoid abstractions unless they materially reduce duplication.
- Keep tasks idempotent and predictable.
- Use `transactional-update` on openSUSE MicroOS for package changes.
- Use `ansible_facts[...]` when referencing facts.

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
