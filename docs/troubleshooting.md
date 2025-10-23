# Troubleshooting

- If Docker build fails, inspect logs in the pipeline build step.
- If trivy scan fails, open the full scan report or relax severity rules temporarily.
- For deployment issues, run deployment/scripts/health-check.sh and kubectl describe pod
