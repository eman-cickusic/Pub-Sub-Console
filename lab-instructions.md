# Original Lab Instructions

## Working with Pub/Sub Console

### Overview
Pub/Sub is a messaging service for exchanging event data among applications and services. A producer of data publishes messages to a Pub/Sub topic. A consumer creates a subscription to that topic. Subscribers either pull messages from a subscription or are configured as webhooks for push subscriptions. Every subscriber must acknowledge each message within a configurable window of time.

### What you'll learn
- Set up a topic to hold data
- Subscribe to a topic to access the data
- Publish and then consume messages with a pull subscriber

### Setup and requirements

#### Before you click the Start Lab button
Read these instructions. Labs are timed and you cannot pause them. The timer, which starts when you click Start Lab, shows how long Google Cloud resources are made available to you.

This hands-on lab lets you do the lab activities in a real cloud environment, not in a simulation or demo environment. It does so by giving you new, temporary credentials you use to sign in and access Google Cloud for the duration of the lab.

To complete this lab, you need:
- Access to a standard internet browser (Chrome browser recommended)
- Time to complete the lab—remember, once you start, you cannot pause a lab

**Note**: Use an Incognito (recommended) or private browser window to run this lab. This prevents conflicts between your personal account and the student account, which may cause extra charges incurred to your personal account.

**Note**: Use only the student account for this lab. If you use a different Google Cloud account, you may incur charges to that account.

#### How to start your lab and sign in to the Google Cloud console

1. Click the Start Lab button. If you need to pay for the lab, a dialog opens for you to select your payment method. On the left is the Lab Details pane with the following:
   - The Open Google Cloud console button
   - Time remaining
   - The temporary credentials that you must use for this lab
   - Other information, if needed, to step through this lab

2. Click Open Google Cloud console (or right-click and select Open Link in Incognito Window if you are running the Chrome browser).

3. Copy the Username and paste it into the Sign in dialog:
   ```
   student-01-b9f9df24aa60@qwiklabs.net
   ```

4. Copy the Password and paste it into the Welcome dialog:
   ```
   WsdkXtM9bWcX
   ```

5. Click through the subsequent pages:
   - Accept the terms and conditions
   - Do not add recovery options or two-factor authentication (because this is a temporary account)
   - Do not sign up for free trials

### Activate Cloud Shell

Cloud Shell is a virtual machine that is loaded with development tools. It offers a persistent 5GB home directory and runs on the Google Cloud. Cloud Shell provides command-line access to your Google Cloud resources.

1. Click Activate Cloud Shell at the top of the Google Cloud console
2. Click through the Cloud Shell information windows
3. Authorize Cloud Shell to use your credentials

When connected, the project is set to your Project_ID: `qwiklabs-gcp-01-d57b3eb92669`

Optional verification commands:
```bash
gcloud auth list
gcloud config list project
```

## Lab Tasks

### Task 1. Setting up Pub/Sub

To use Pub/Sub, you create a topic to hold data and a subscription to access data published to the topic.

1. From the Navigation menu click View All Products → Analytics section → Pub/Sub → Topics
2. Click Create topic
3. Configure the topic:
   - **Topic ID**: `MyTopic`
   - Leave other fields at default values
   - Click Create

**Assessment**: Topic successfully created
- Topic count: 1
- Topic name: `projects/qwiklabs-gcp-01-d57b3eb92669/topics/MyTopic`

### Task 2. Add a subscription

Create a subscription to access the topic:

1. Click Topics in the left panel to return to the Topics page
2. For the topic you just made, click the three dot icon → Create subscription
3. Configure the subscription:
   - **Name**: `MySub`
   - **Delivery Type**: Pull
   - Leave all other options at default values
4. Click Create

**Assessment**: Subscription successfully created

### Task 3. Test your understanding

**Question 1**: A publisher application creates and sends messages to a ____. Subscriber applications create a ____ to a topic to receive messages from it.
- **Answer**: topic, subscription

**Question 2**: Cloud Pub/Sub is an asynchronous messaging service designed to be highly reliable and scalable.
- **Answer**: True

### Task 4. Publish a message to the topic

1. Navigate back to pub/sub → Topics → MyTopic
2. In the Topics details page, click Messages tab
3. Click Publish Message
4. Enter `Hello World` in the Message field
5. Click Publish

### Task 5. View the message

Use the subscription (MySub) to pull the message (Hello World) from the topic (MyTopic):

```bash
gcloud pubsub subscriptions pull --auto-ack MySub
```

The message appears in the DATA field of the command output.

## Lab Completion

Successfully completed:
- ✅ Created a Pub/Sub topic
- ✅ Published to the topic  
- ✅ Created a subscription
- ✅ Used the subscription to pull data from the topic

**Final Result**: The message "Hello World" was successfully published to the topic and retrieved using the subscription, demonstrating the complete Pub/Sub messaging flow.