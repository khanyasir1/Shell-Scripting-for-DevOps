

# 👥 **GitHub Collaborator Checker**

## 📌 **Project Overview**

**GitHub Collaborator Checker** is a lightweight **Bash script** that securely connects to the **GitHub API** and lists **all users who have read (pull) access** to a specified GitHub repository.

This tool helps **developers, DevOps engineers, and administrators**:

* ✅ Quickly audit who has access to their code
* ✅ Maintain proper permissions and security hygiene
* ✅ Automate collaborator checks in CI/CD or cron jobs

---

## ⚙️ **How It Works — Step-by-Step**

**What it does:**

* Authenticates to GitHub using your **username** and **Personal Access Token (PAT)**
* Calls the **GitHub REST API** to get the list of collaborators
* Filters the list to show only users with **read access (pull permission)**
* Prints the list in a clean, readable format

**How to use it:**
1️⃣ **Configure your GitHub credentials:**

```bash
export username="your_github_username"
export token="your_personal_access_token"
```

2️⃣ **Run the script, passing repository owner and name:**

```bash
bash collaborator_checker.sh <repo_owner> <repo_name>
```

**Example:**

```bash
bash collaborator_checker.sh octocat Hello-World
```

3️⃣ **See the list of users with read access!**

---

## 🏷️ **Features**

* 🔑 Checks any GitHub repo for **read (pull) permission collaborators**
* 🔐 Uses secure GitHub Personal Access Token (PAT)
* ⚡ Lightweight Bash script — no heavy dependencies
* 🧩 Uses `jq` for easy JSON parsing
* 🤝 Easy to plug into cron jobs or CI pipelines

---

## ✅ **Requirements**

* **GitHub Personal Access Token (PAT)** with `repo` scope
  👉 [How to create one](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
* **jq** installed:

  ```bash
  sudo apt-get install jq
  ```

---

## 🗂️ **Sample Output**



![ GitHub Collaborator Checker Output](/project-02-%20GitHub%20Collaborator%20Checker/%20GitHub%20Collaborator%20Checker%20-%20output.png)

---

## 🧩 **Script**

Here’s the complete script for quick reference:

```bash
#!/bin/bash

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
    collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Main script
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access
```

---



---

## ✨ **Contributions**

Feel free to fork, improve, or submit pull requests to add more features!

