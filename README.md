# Managing Workspace Variables in GitHub with TFC/TFE
This repo is demonstrating an example of how you can leverage modules within sub-directories to manage variables across multiple enviornments in TFC/TFE. The workspace manager directory uses the TFE provider to create 6 workspaces. The workspaces created are:

* cat-app-dev
* cat-app-staging
* cat-app-prod
* dog-app-dev
* dog-app-staging
* dog-app-prod

Each workspace is then set up to use the specific enviornment sub-folder in their respective app (e.g. `dog-app/dev`) as a working directory and also trigger runs when the application directory (e.g. `dog-app/`) is updates. The enviornment sub-folder is only designed to store variables and call the higher directory as a module.

## Overall Directory Structure

```
.
├── README.md
├── cat-app
│   ├── 0-dev
│   │   └── main.tf
│   ├── 1-staging
│   │   └── main.tf
│   ├── 2-prod
│   │   └── main.tf
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── dog-app
│   ├── 0-dev
│   │   └── main.tf
│   ├── 1-staging
│   │   └── main.tf
│   ├── 2-prod
│   │   └── main.tf
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── modules
└── workspace-manager
```