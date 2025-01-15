# GitLab Runner with Docker Compose

This guide provides instructions on how to set up and run a GitLab Runner using Docker Compose. Follow these steps to get your GitLab Runner up and running seamlessly.

## Steps

### 1. Clone the Repository
First, you need to clone the repository that contains the Docker Compose configuration for the GitLab Runner. Open your terminal and run:

```bash
git clone https://github.com/ajohnsc/gitlab-runner-docker-compose.git
cd gitlab-runner-docker-compose
```

### 2. Get a Runner Authentication Token from GitLab
Next, you need an authentication token from GitLab to register your runner. Follow these steps:

1. Go to your GitLab instance and navigate to the project or group where you want to add the Runner.
2. Click on **Settings** > **CI / CD**.
3. Expand the **Runners** section.
4. Look for the **New project runner** button and fillout the next form.
5. Copy the Authentication Token.

Keep this token safe as you'll need it in the next step.

### 3. Fill Out the Environment File
Within the cloned repository, there should be an example environment file, typically named `.env.example`. You need to create a `.env` file based on this example and fill in the necessary details.

```bash
cp .env.example .env
```

Open the `.env` file in your favorite text editor and fill in the following details:

```env
# Name of our Gitlab Runner Container
CONTAINER_NAME=""
# Gitlab Runner Auhtentication Token
TOKEN="you-registration-token"
```

Replace `your-registration-token` with the token you obtained from GitLab in the previous step.

### 4. (optional) Change Dockerfile
You can add packages to be available inside the gitlab-runner instance here.

The current gitlab-runner is based on Ubuntu 20.04 LTS.

### 5. Run Docker Compose
To start your new GitLab Runner, run the following command:

```bash
docker-compose up -d
```

This command will initiate the Docker containers in detached mode, running your GitLab Runner in the background.

### 6. Verify Your Runner
After starting the runner, go back to your GitLab project or group settings under **CI / CD** > **Runners**. Under the **Available specific runners** section, you should see your newly registered runner listed.

Congratulations! Your GitLab Runner is now set up and ready to handle jobs for your projects.

## Troubleshooting
If you encounter any issues, consider the following tips:

- Ensure Docker and Docker Compose are installed and running correctly on your machine.
- Double-check your `.env` file for any typos or incorrect values.
- Review the Docker Compose logs using `docker-compose logs` to identify any issues.

## Conclusion
By following these simple steps, you can set up a GitLab Runner with Docker Compose quickly. This setup helps you streamline your CI/CD processes, making it easier to run and manage your build jobs.

For additional information and more advanced configurations, refer to the [GitLab Runner documentation](https://docs.gitlab.com/runner/).
