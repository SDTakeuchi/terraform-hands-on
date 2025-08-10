## NOTES

.terraform配下は自動生成されたファイルが入ってる

### TerraformerでGoogle CloudのProjectのResourceをまるごとImport
```bash
export GOOGLE_CLOUD_PROJECT="takeuchi-olta-sandbox"
```

```bash
terraformer import google --resources="<resource_type>" --projects="<project_id>" --regions="<region>"
```
- resources: A comma-separated list of resource types (e.g., networks, subnetworks, instances, gcs). Use * to import all supported resources.
- projects: Your Google Cloud project ID.
- regions: The GCP region where your resources are located.

e.g.) `terraformer import google --resources="*" --projects="takeuchi-olta-sandbox" --regions="asia-northeast1"`