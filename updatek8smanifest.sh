#!/bin/bash

REPO_URL="https://${GITHUB_TOKEN}@github.com/harsha-ops/ROBOT-APP-CICD.git"

git clone "$REPO_URL" /tmp/repo

cd /tmp/repo

sed -i "s|image:.*|image: $2|g" k8smanifest/$1-deploy.yml

# Configure Git author details
git config --global user.email "jenkins@example.com"
git config --global user.name "Jenkins CI"

git add .

git commit -m "Update kubernetes Manifest"

git push "$REPO_URL"

rm -rf /tmp/repo