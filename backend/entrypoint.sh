#!/bin/bash
set -euo pipefail

# Simple entrypoint to ensure permissions and start apache
chown -R www-data:www-data /var/www/html || true
apache2-foreground
