# Installed on: 07-06-2020 (dd-mm-yy)
# choco install fzf -y
# choco install powershell-core -y
# choco install poshgit -y
# choco install oh-my-posh -y

# Using Cascadia Code for my Terminals and I use Fira Code for my code editor. ¯\_(ツ)_/¯
# https://github.com/ryanoasis/nerd-fonts
# https://github.com/microsoft/cascadia-code/releases

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Neovim
function vi { nvim-qt --no-ext-tabline -- $args }

# Make Your PowerShell 7 Truly Powerful
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# Let PSFzf overrides default key binding at startup. Paste the below codes.
# Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module PSFzf

# Complete the typed commands based on the CLI history.
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# The “G” Alias
Set-Alias g git

# The “K” Alias
Set-Alias k kubectl

# The “Select-KubeContext” (a.k.a. kubectx)
function global:Select-KubeContext {
  [CmdletBinding()]
  [Alias('kubectx')]
  param (
    [parameter(Mandatory=$False,Position=0,ValueFromRemainingArguments=$True)]
    [Object[]] $Arguments
  )
  begin {
    if ($Arguments.Length -gt 0) {
      $ctx = & kubectl config get-contexts -o=name | fzf -q @Arguments
    } else {
      $ctx = & kubectl config get-contexts -o=name | fzf
    }
  }
  process {
    if ($ctx -ne '') {
      & kubectl config use-context $ctx
    }
  }
}

# The “Select-KubeNamespace” (a.k.a. kubens)
function global:Select-KubeNamespace {
  [CmdletBinding()]
  [Alias('kubens')]
  param (
    [parameter(Mandatory=$False,Position=0,ValueFromRemainingArguments=$True)]
    [Object[]] $Arguments
  )
  begin {
    if ($Arguments.Length -gt 0) {
      $ns = & kubectl get namespace -o=name | fzf -q @Arguments
    } else {
      $ns = & kubectl get namespace -o=name | fzf
    }
  }
  process {
    if ($ns -ne '') {
      $ns = $ns -replace '^namespace/'
      & kubectl config set-context --current --namespace=$ns
    }
  }
}

