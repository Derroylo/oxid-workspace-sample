#!/usr/bin/env bash

# Infos for GitpodTool
#
# gptBranch: oxid
# gptBranchDescription: Commands for Oxid
# gptCommand: install_demo
# gptDescription: install oxid

composer create-project --no-dev oxid-esales/oxideshop-project demo dev-b-6.5-ce

mv demo/* .
rm -rf demo/