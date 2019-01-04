# Sample Spring Boot Fabric8 Hello World Targeting Harbor/PKS

## Setup

1. Update pom.xml properties setting your harbor URL and project

```xml
<docker.image.prefix>harbor.bissau.toolsmith.winterfell.live/testproject</docker.image.prefix>
<docker.push.registry>harbor.bissau.toolsmith.winterfell.live</docker.push.registry>
```

1. Update your settings.xml putting your credentials to push to harbor server.  Must match id with registry reference in properties above

```xml
<servers>
  ...
  <server>
    <id>harbor.bissau.toolsmith.winterfell.live</id>
    <username>username</username>
    <password>password</password>
  </server>
</servers>
```

1. Update ingresroute.xml with the fully qualified domain name to your contour ingress  url

## Usage

### Deploy

`mvn fabric8:deploy` will package the app, create docker image, push to harbor, generate the k8s resources and apply them to pks

### Undeploy

`mvn fabric8:undeploy` will delete the resources on pks

> must have previously built or else the resources won't be in target directory to use for deletion.  Also, do not use clean goal as that will delete the resources in target.

### Ingress Route

`kubectl apply -f ./ingressroute.xml` will apply the ingress route.  As of now, we can not gerate this resource using fabric8.