from kubernetes import client, config
from kubernetes.client.models import V1Container, V1Pod, V1PodSpec


config.load_kube_config()

api_version = client.CoreV1Api()

pod_client = client.V1Pod()
pod_client.metadata = client.V1ObjectMeta(name='nginx-pod')

container = V1Container(
    name='nginxtest',
    image='nginx:latest',
)

pod_spec = client.V1PodSpec(containers=[container])
pod_client.spec = pod_spec

api_version.create_namespaced_pod(namespace="default",body=pod_client)