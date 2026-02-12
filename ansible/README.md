# Ansible-Projekt

Kleine, gut lesbare Ansible-Struktur zur Verwaltung weniger Server.

## Struktur
- `ansible/ansible.cfg`: Projektkonfiguration
- `ansible/inventory/hosts.ini`: Inventory
- `ansible/group_vars/all.yml`: Gemeinsame Variablen
- `ansible/playbooks/site.yml`: Haupt-Playbook
- `ansible/collections/requirements.yml`: Collections
- `ansible/Justfile`: Kurzbefehle

## Erste Ausfuhrung
Von `ansible/` aus:

```bash
just install-collections
just site
```

## Hinweise
- Die Hosts liegen in der Gruppe `servers`.
- Standard-SSH-User ist `mac`.
- `become` fragt nach dem sudo-Passwort, wenn erforderlich.
