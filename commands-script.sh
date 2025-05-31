#!/bin/bash

# Google Cloud Pub/Sub Lab Commands
# This script contains all the commands used during the lab

echo "=== Google Cloud Pub/Sub Lab Commands ==="
echo "Lab Project ID: qwiklabs-gcp-01-d57b3eb92669"
echo "Lab Username: student-01-b9f9df24aa60@qwiklabs.net"
echo ""

# Authentication and Project Setup
echo "1. Verify Authentication"
echo "gcloud auth list"
echo ""

echo "2. Check Project Configuration"
echo "gcloud config list project"
echo ""

# Topic Management (Alternative to Console)
echo "3. Create Topic (Console Alternative)"
echo "gcloud pubsub topics create MyTopic"
echo ""

echo "4. List Topics"
echo "gcloud pubsub topics list"
echo ""

# Subscription Management (Alternative to Console)
echo "5. Create Subscription (Console Alternative)"
echo "gcloud pubsub subscriptions create MySub --topic=MyTopic"
echo ""

echo "6. List Subscriptions"
echo "gcloud pubsub subscriptions list"
echo ""

# Message Publishing (Alternative to Console)
echo "7. Publish Message (Console Alternative)"
echo 'gcloud pubsub topics publish MyTopic --message="Hello World"'
echo ""

# Message Consumption - Main Lab Command
echo "8. Pull Message from Subscription (MAIN LAB COMMAND)"
echo "gcloud pubsub subscriptions pull --auto-ack MySub"
echo ""

# Additional Useful Commands
echo "=== Additional Useful Commands ==="

echo "9. Pull Multiple Messages"
echo "gcloud pubsub subscriptions pull MySub --limit=5 --auto-ack"
echo ""

echo "10. Pull Messages Without Auto-Acknowledgment"
echo "gcloud pubsub subscriptions pull MySub --limit=1"
echo ""

echo "11. Acknowledge Specific Message"
echo "gcloud pubsub subscriptions ack MySub [ACK_ID_FROM_PREVIOUS_COMMAND]"
echo ""

echo "12. Get Topic Details"
echo "gcloud pubsub topics describe MyTopic"
echo ""

echo "13. Get Subscription Details"
echo "gcloud pubsub subscriptions describe MySub"
echo ""

echo "14. Delete Subscription"
echo "gcloud pubsub subscriptions delete MySub"
echo ""

echo "15. Delete Topic"
echo "gcloud pubsub topics delete MyTopic"
echo ""

# Cleanup Commands
echo "=== Cleanup Commands (Run after lab completion) ==="
echo "gcloud pubsub subscriptions delete MySub"
echo "gcloud pubsub topics delete MyTopic"