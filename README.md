# Azure AI RAG Infrastructure (Terraform)

## Overview

This project provisions a foundational Azure environment for a Retrieval-Augmented Generation (RAG) application using Terraform.

The infrastructure includes:

- Azure Resource Group
- Azure Storage Account + Private Blob Container
- Azure Key Vault
- Azure Log Analytics Workspace
- Azure Application Insights
- Azure AI Search (Basic SKU)
- Randomized naming for global uniqueness

This project demonstrates Infrastructure as Code (IaC) best practices using Terraform with AzureRM provider.

---

## Architecture

High-Level Components:

- Blob Storage → Document storage for RAG ingestion
- AI Search → Indexing and retrieval
- Key Vault → Secure secret storage
- Log Analytics + App Insights → Monitoring & telemetry
- Resource Group → Logical isolation



---

## Prerequisites

- Terraform >= 1.6
- Azure CLI
- Azure subscription
- Logged in using `az login`

---

## Deployment Instructions

### 1. Initialize Terraform

### 2. Validate Configuration

### 3. Preview Deployment

### 4. Deploy Infrastructure


Type `yes` when prompted.

### 5. Destroy Infrastructure (Cleanup)


---

## Design Decisions

### Naming Strategy
A `random_string` suffix is used to ensure global uniqueness for storage and search resources.

### Security Controls
- Blob container access is set to **private**
- TLS 1.2 enforced on storage
- Key Vault used for secret storage
- Public network access minimized where possible
- Function App uses **System Assigned Managed Identity**
- Key Vault access granted via **least privilege** (Get/List only)
- No secrets stored in code or pipeline variables
- **AI Search audit logs and metrics are streamed to Log Analytics** to support monitoring, investigation, and compliance in environments handling PII.

### Observability
- Log Analytics workspace deployed
- Application Insights linked to workspace
- Telemetry ready for future Function/Web apps

### Terraform Concepts Demonstrated
- Provider configuration
- Variables and tfvars
- Outputs
- Resource dependencies
- Randomized naming
- Local state management
- Infrastructure lifecycle (plan/apply/destroy)

---

# Deployment Evidence

The following screenshots demonstrate successful Terraform deployment and secure Azure configuration.

---

## 1. Resource Group Overview

<!-- 
PLACE SCREENSHOT HERE:
Azure Portal → Resource Groups → ragdemo-dev-rg
Show all deployed resources inside the resource group.
File name: screenshots/01-resource-group-overview.png
-->

![Alt text](https://i.imgur.com/A01sXT7.png)

---

## 2. Blob Container (Private Access)

![Alt Text](https://i.imgur.com/F78dNCA.png)

---

## 3. Azure Key Vault Overview

![Alt Text](https://i.imgur.com/ySscDGZ.png)

![Alt Text](https://i.imgur.com/yAuBIk6.png)

---

## 4. Azure AI Search Service

![Alt Text](https://i.imgur.com/tM6nVLz.png)

---

## 5. Terraform Plan Output



![Alt Text](https://i.imgur.com/RUNdBk2.png)

---

## 6. Terraform Apply Success

![Alt Text](https://i.imgur.com/vYbwC75.png)

---
## 7. Function App Managed Identity

![Alt Text](https://i.imgur.com/3CLycmU.png)

---

## 8. Key Vault Access Policies

![Alt Text](https://i.imgur.com/H1aiUUs.png)

## 9. AI Search Diagnostic Settings (Audit + Metrics)

<!-- 
PLACE SCREENSHOT HERE:
Azure Portal → AI Search → Diagnostic settings
Show the "search-diagnostics" setting sending logs/metrics to Log Analytics
File name: screenshots/09-search-diagnostics.png
-->
![Alt Text](https://i.imgur.com/7W9zQOR.png)

## Future Enhancements (Phase 2)

Planned enhancements include:

- Azure Function App for document ingestion
- Azure Web App for API/UI layer
- Managed Identity integration
- Azure OpenAI deployment
- Private endpoints for secure networking
- Remote backend state in Azure Storage
- CI/CD pipeline using YAML (GitHub Actions or Azure DevOps)
- Modular Terraform structure for production readiness

---







