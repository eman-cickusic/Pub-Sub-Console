# Google Cloud Pub/Sub Console Lab

This repository documents a hands-on lab experience working with Google Cloud Pub/Sub messaging service. The lab demonstrates creating topics, subscriptions, publishing messages, and consuming them using the Google Cloud Console and Cloud Shell.

## Overview

Google Cloud Pub/Sub is a messaging service for exchanging event data among applications and services. This lab covers the fundamental concepts:

- **Producer**: Publishes messages to a Pub/Sub topic
- **Topic**: Holds published data
- **Subscription**: Provides access to topic data
- **Subscriber**: Pulls messages from subscriptions or receives push notifications

## What This Lab Covers

- ✅ Setting up a Pub/Sub topic
- ✅ Creating subscriptions to access topic data
- ✅ Publishing messages to topics
- ✅ Consuming messages using pull subscribers
- ✅ Using Google Cloud Console and Cloud Shell

## Prerequisites

Before starting this lab, you need:

- Access to Google Cloud Platform (temporary lab credentials provided)
- Standard internet browser (Chrome recommended)
- Basic understanding of cloud messaging concepts

## Lab Environment Setup

### Initial Setup
1. **Start the Lab**: Click "Start Lab" button in the lab interface
2. **Access Google Cloud Console**: Use the provided temporary credentials
3. **Activate Cloud Shell**: Built-in terminal with pre-installed tools

### Lab Credentials Used
```
Username: student-01-b9f9df24aa60@qwiklabs.net
Project ID: qwiklabs-gcp-01-d57b3eb92669
```

> **Note**: These were temporary lab credentials. Use your own GCP project for real implementations.

## Step-by-Step Implementation

### Task 1: Setting up Pub/Sub

1. **Navigate to Pub/Sub**
   - Go to Navigation menu → View All Products → Analytics → Pub/Sub → Topics

2. **Create Topic**
   ```
   Topic ID: MyTopic
   Settings: Default values
   ```

3. **Verification**
   - Topic successfully created: `projects/qwiklabs-gcp-01-d57b3eb92669/topics/MyTopic`

### Task 2: Add a Subscription

1. **Create Subscription**
   - Navigate to the created topic
   - Click three-dot menu → Create subscription
   
2. **Subscription Configuration**
   ```
   Subscription Name: MySub
   Delivery Type: Pull
   Other settings: Default values
   ```

### Task 3: Publish a Message

1. **Navigate to Topic Messages**
   - Go to MyTopic → Messages tab
   - Click "Publish Message"

2. **Message Content**
   ```
   Message: Hello World
   ```

### Task 4: Consume the Message

Using Cloud Shell, pull the message from the subscription:

```bash
gcloud pubsub subscriptions pull --auto-ack MySub
```

**Expected Output:**
```
┌─────────────┬─────────────────┬────────────┐
│    DATA     │    MESSAGE_ID   │ ATTRIBUTES │
├─────────────┼─────────────────┼────────────┤
│ Hello World │ [message_id]    │            │
└─────────────┴─────────────────┴────────────┘
```

## Commands Reference

### Essential gcloud Commands

```bash
# List active account
gcloud auth list

# List project ID
gcloud config list project

# Pull messages from subscription
gcloud pubsub subscriptions pull --auto-ack [SUBSCRIPTION_NAME]

# Create topic (alternative to console)
gcloud pubsub topics create [TOPIC_NAME]

# Create subscription (alternative to console)
gcloud pubsub subscriptions create [SUBSCRIPTION_NAME] --topic=[TOPIC_NAME]

# Publish message (alternative to console)
gcloud pubsub topics publish [TOPIC_NAME] --message="[MESSAGE_TEXT]"
```

## Key Concepts Learned

### Pub/Sub Architecture
- **Asynchronous messaging**: Decouples producers from consumers
- **Scalability**: Handles high-throughput message processing
- **Reliability**: Guarantees message delivery with acknowledgments

### Message Flow
1. Producer publishes message to topic
2. Pub/Sub stores message
3. Subscriber pulls message from subscription
4. Subscriber acknowledges message receipt
5. Pub/Sub removes acknowledged message

### Delivery Types
- **Pull**: Subscribers request messages from the service
- **Push**: Service delivers messages to subscriber endpoints

## Lab Assessment Results

✅ **Task 1**: Topic creation completed  
✅ **Task 2**: Subscription creation completed  
✅ **Task 3**: Message publishing completed  
✅ **Task 4**: Message consumption completed  

## Real-World Applications

This Pub/Sub pattern is commonly used for:

- **Event-driven architectures**: Microservices communication
- **Real-time analytics**: Streaming data processing  
- **Notification systems**: User alerts and updates
- **Batch processing**: Queueing tasks for background processing
- **IoT data ingestion**: Collecting sensor data at scale

## Next Steps

To build upon this lab:

1. **Explore push subscriptions**: Configure webhook endpoints
2. **Message ordering**: Work with ordered message delivery
3. **Dead letter topics**: Handle message processing failures
4. **Integration**: Connect with other GCP services (Cloud Functions, Dataflow)
5. **Monitoring**: Set up Cloud Monitoring for Pub/Sub metrics

## Additional Resources

- [Google Cloud Pub/Sub Documentation](https://cloud.google.com/pubsub/docs)
- [Pub/Sub Client Libraries](https://cloud.google.com/pubsub/docs/reference/libraries)
- [Best Practices for Pub/Sub](https://cloud.google.com/pubsub/docs/publisher)
- [Pub/Sub Pricing](https://cloud.google.com/pubsub/pricing)

## Repository Structure

```
.
├── README.md              # This comprehensive guide
├── commands.sh           # Shell commands used in the lab
├── lab-instructions.md   # Original lab instructions
```

---

**Lab Completed**: Successfully demonstrated core Pub/Sub functionality including topic creation, subscription management, message publishing, and consumption using Google Cloud Console and Cloud Shell.
