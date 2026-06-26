# GCP Aliases

A collection of `zsh` aliases and functions for common `gcloud` operations. Source the `.zshrc` file to load them into your shell.

## Installation

Add to your `~/.zshrc`:

```zsh
source /path/to/gcp-alias/.zshrc
```

Then reload your shell:

```zsh
source ~/.zshrc
```

Run `gl` at any time to print the full alias reference table.

---

## Reference

### General

| Alias | Command | Description |
|-------|---------|-------------|
| `g` | `gcloud …` | Base shortcut for any gcloud command |
| `gl` | `glist` | Print the alias reference table |

---

### Project

| Alias | Command | Description |
|-------|---------|-------------|
| `gc` | `gcloud config …` | Any gcloud config subcommand |
| `gcs` | `gcloud config set …` | Set a gcloud config property |
| `gcp` | `gcloud config set project …` | Switch the active project |
| `gpro` | `gcloud config get-value project` | Get the current project |
| `gprolist` / `gcpl` | `gcloud projects list` | List all accessible projects |
| `gprounset` | `gcloud config unset project` | Unset the selected project |

---

### Auth

| Alias / Function | Command | Description |
|------------------|---------|-------------|
| `gca` | `gcloud auth …` | Any gcloud auth subcommand |
| `glogin` | `gcloud auth login && gcloud auth application-default login` | Authenticate CLI and ADC |
| `gwhoami` | `gcloud config get-value account` | Print the active account |
| `gtoken` | `export GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth application-default print-access-token)` | Set ADC token as an env var |

---

### Service Accounts

| Alias | Command | Description |
|-------|---------|-------------|
| `gsal` / `gimpl` | `gcloud iam service-accounts list` | List service accounts in the active project |
| `gci` | `gcloud auth impersonate_service_account …` | One-off command run as a service account |
| `gimp` | `gcloud config set auth/impersonate_service_account …` | Persistently set service account impersonation |
| `gimpunset` | `gcloud config unset auth/impersonate_service_account` | Stop impersonating — revert to your own identity |

---

### Billing

| Alias | Command | Description |
|-------|---------|-------------|
| `gb` | `gcloud billing …` | Any gcloud billing subcommand |
| `gbal` | `gcloud billing accounts list` | List all billing accounts |
