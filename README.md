# LE HONG ANH - UDACITY ASSIGNMENT3
Using Kubernetes to deploy a python application with AWS.

## Getting Started

### Run
In the `deployment/` directory:

1. Run the application
```bash
kubectl apply -f configmap.yaml
kubectl apply -f coworking.yaml
```
2. Check the pod working properly
```bash
kubectl get pods
```
### Stand Out Suggestions
1. Specify reasonable Memory and CPU allocation in the Kubernetes deployment configuration
There's no one-size-fits-all answer for reasonable Memory and CPU allocation in a Kubernetes deployment configuration. It depends heavily on the application you're deploying and its resource requirements.
2. In your README, specify what AWS instance type would be best used for the application? Why?
t3.small instance type could be a suitable option. It provides a good balance of CPU and memory resources at a reasonable cost. 
3. In your README, provide your thoughts on how we can save on costs?
Auto Scaling: Utilize AWS Auto Scaling to automatically adjust the number of instances based on demand. This ensures that you have enough resources to handle traffic spikes while avoiding unnecessary costs during periods of low demand.
