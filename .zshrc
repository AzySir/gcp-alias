```
########################
#  GCP Commaands
########################
alias g="gcloud $*"
alias gc="gcloud config $*"
alias gcs="gcloud config set $*"
alias gcp="gcloud config set project $*"
alias gcpl="gcloud projects list"
alias gprolist="gcloud projects list"
alias gprounset="gcloud config unset project"
alias gca="gcloud auth $*"
alias gci="gcloud auth impersonate_service_account $*"
alias gtoken='export GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth application-default print-access-token)'
alias gl="glist"
alias gimp="gcloud config set auth/impersonate_service_account $*"
alias gimpunset="gcloud config unset auth/impersonate_service_account"
alias gsal="gcloud iam service-accounts list"
alias gimpl="gsal"
alias gwhoami="gcloud config get-value account"
alias gb="gcloud billing $*"
alias gbal="gcloud billing accounts list"
alias gpro="gcloud config get-value project"

function glogin() {
  gcloud auth login
  gcloud auth application-default login
}



function glist() {
  local sep="--------------------------------------------"

  echo "$sep"
  echo "| General"
  echo "$sep"
  { echo "g|gcloud …|Base shortcut for any gcloud command"
    echo "gl|glist|Print this alias reference table"
  } | column -t -s '|'

  echo ""
  echo "$sep"
  echo "| Project"
  echo "$sep"
  { echo "gc|gcloud config …|Any gcloud config subcommand"
    echo "gcs|gcloud config set …|Set a gcloud config property"
    echo "gcp|gcloud config set project …|Switch the active project"
    echo "gpro|gcloud config get-value project|Get Current Project"
    echo "gprolist|gcloud projects list|List all accessible projects"
    echo "gprounset|gcloud config unset project|Unset Selected Project"
  } | column -t -s '|'

  echo ""
  echo "$sep"
  echo "| Auth"
  echo "$sep"
  { echo "gca|gcloud auth …|Any gcloud auth subcommand"
    echo "gloginapp|gcloud auth login && gcloud auth application-default login|Authenticate CLI and ADC"
    echo "glogincli|gcloud auth login && gcloud auth application-default login|Authenticate CLI and ADC (duplicate of gloginapp)"
    echo "glogin|gloginapp && glogincli|Run full auth sequence"
    echo "gtoken|export GOOGLE_OAUTH_ACCESS_TOKEN=\$(gcloud auth application-default print-access-token)|Set ADC token as env var"
  } | column -t -s '|'

  echo ""
  echo "$sep"
  echo "| Service Accounts"
  echo "$sep"
  { echo "gsal|gcloud iam service-accounts list|List service accounts in the active project"
    echo "gimpl|gsal|Alias for gsal"
    echo "gci|gcloud auth impersonate_service_account …|One-off command run as a service account"
    echo "gimp|gcloud config set auth/impersonate_service_account …|Persistently set service account impersonation"
    echo "gimpunset|gcloud config unset auth/impersonate_service_account|Stop impersonating — revert to own identity"
  } | column -t -s '|'

  echo ""
  echo "$sep"
  echo "| Billing"
  echo "$sep"
  { echo "gb|gcloud billing …|Any gcloud billing subcommand"
    echo "gbal|gcloud billing accounts list|List all billing accounts"
  } | column -t -s '|'
}
```
