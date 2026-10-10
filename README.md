# Hello-CICD — CI/CD & DevSecOps assignments

**Student:** Prabhav Semwal · **Enrollment:** 24BCS10358

This repository contains the Flask dashboard, tests, Docker image definition and Kubernetes manifests shared by two assignments.

| Assignment | Submission README |
| --- | --- |
| Session 16: CI/CD & GitHub Actions | [Session 16](session16/README.md) |
| Session 17: Complete CI/CD & DevSecOps | [Session 17](session17/README.md) |

The [complete workflow](.github/workflows/devsecops.yml) builds and tests the application, runs security gates, builds and scans its container, publishes a passing image to GHCR and verifies deployment in a temporary Kubernetes cluster. The original introductory workflows are preserved.

## Run the application

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements-dev.txt
python -m pytest -v
gunicorn --bind 127.0.0.1:5001 app.app:app
```

Open http://localhost:5001. The `/api/pipeline/run` dashboard endpoint simulates stages for the UI; the actual pipeline executes in GitHub Actions.

## Recorded evidence

Eight application tests passed locally. Session 16 also includes evidence from the existing successful introductory Actions run. Screenshots are labelled renders of genuine saved output, with source transcripts linked beside them.

<!-- hosted-evidence:start -->
The complete DevSecOps workflow has not yet executed for this revision. Its successful pipeline and deployment screenshots must be added after the workflow runs.
<!-- hosted-evidence:end -->

## Collect pipeline screenshots

1. Push this repository and open [GitHub Actions](https://github.com/Yeashu/Hello-CICD/actions).
2. Open **CI/CD and DevSecOps** and inspect the CI and DevSecOps jobs. Resolve any failed security gate before submission.
3. Download the **hello-cicd-submission-evidence** artifact from that run. It contains the two session READMEs, PNG screenshots, command transcripts, reports and this index.
4. Copy its `session16/`, `session17/` and `README.md` over these repository paths, then commit and push the evidence.

The workflow creates a temporary cluster on its hosted runner. It does not require local Minikube, AWS credentials or a separately configured registry password.
