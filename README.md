#

## Ajout d'un requirements

```bash
ansible-galaxy collection install community.general

ou

ansible-galaxy collection install -r requirements.yml
```

## Structure type

Légère :

```bash
ansible
├── inventory
│   ├── hosts
│   └── group_vars
│       └── my_group.yml
├── roles
│   └── mysql
├── ansible.cfg
├── README.md
├── playbook1.yml
└── playbook2.yml
```

Medium :

```bash
ansible
├── inventories
│   ├── production
│   │   ├── hosts
│   │   └── group_vars
│   │       └── my_group.yml
│   └── development
│       ├── hosts
│       └── group_vars
│           └── my_group.yml
├── playbooks
│   ├── playbook1
│   │   ├── group_vars
│   │   │   └── my_group.yml
│   │   ├── roles
│   │   │   └── mysql
│   │   ├── README.md
│   │   └── site.yml
│   ...
├── README.md
└── ansible.cfg
```
