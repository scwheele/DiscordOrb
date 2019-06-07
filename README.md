# DiscordOrb

Easily integrate custom [Discord](https://discord.gg/ "Discord") notifications into your [CircleCI](https://circleci.com/ "CircleCI") projects. Create custom alert messages for any job or recieve status updates.

Learn more about [Orbs](https://circleci.com/docs/2.0/using-orbs/ "Using Orbs").

## Usage
Example config:

```yaml
version: 2.1

orbs:
  discord: sandbox/discord@x.y.z

jobs:
  build:
    docker:
      - image: <docker image>
    steps:
      - discord/<command>
```

`discord@0.0.4` from the `sandbox` namespace is imported into the config.yml as `discord` and then can be referenced as such in any job or workflow.

## Commands

### Notify
Notify a Discord channel with a custom message at any point in a job with this custom step.

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `color` | `string` | 23039 |  Decimal color value for notification attachment color. |
| `message` | `string` | Custom Message | Enter custom message |
| `url` | `string` | https://circleci.com/workflow-run/${CIRCLE_WORKFLOW_ID} | The URL to link back to |
| `webhook` | `string` | ${DISCORD_WEBHOOK} | Enter your webhook value OR use the CircleCI UI to add your token under the 'DISCORD_WEBHOOK' env var |
| `include_project_field` | `boolean` | true | Include the project name field in the message |
| `include_job_number_field` | `boolean` | true | Include the job number field in the message |

Example:
```yaml
  test_notify:
    docker:
      - image: circleci/node
    steps:
      - discord/notify:
          message: "Build unable to process"

```

### Status
Send a status alert at the end of a job based on success or failure. This must be the last step in a job.

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `failure_color` | `string` | 14177041 |  Decimal color value for notification attachment color. |
| `success_color` | `string` | 655104 |  Decimal color value for notification attachment color. |
| `success_message` | `string` | A $CIRCLE_JOB job has succeded! | Enter custom message for success |
| `failure_message` | `string` | A $CIRCLE_JOB job has failed! | Enter custom message for failure |
| `url` | `string` | https://circleci.com/workflow-run/${CIRCLE_WORKFLOW_ID} | The URL to link back to |
| `webhook` | `string` | ${DISCORD_WEBHOOK} | Enter your webhook value OR use the CircleCI UI to add your token under the 'DISCORD_WEBHOOK' env var |
| `include_project_field` | `boolean` | true | Include the project name field in the message |
| `include_job_number_field` | `boolean` | true | Include the job number field in the message |
| `fail_only` | `boolean` | false | If `true`, notifications for successful jobs will not be sent |
| `only_for_branches` | `string` | "" | If set, a comma seperated list of branches for which to send notifications |

Example:
```yaml
  test_status:
    docker:
      - image: circleci/node
    steps:
      - discord/status

```
### Approval

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `color` | `string` | 23039 |  Decimal color value for notification attachment color. |
| `message` | `string` | Build Awaiting Approval | Enter custom message |
| `url` | `string` | https://circleci.com/workflow-run/${CIRCLE_WORKFLOW_ID} | The URL to link back to |
| `webhook` | `string` | ${DISCORD_WEBHOOK} | Enter your webhook value OR use the CircleCI UI to add your token under the 'DISCORD_WEBHOOK' env var |

Example:
```yaml
  test_approval:
    docker:
      - image: circleci/node
    steps:
      - discord/approval

```