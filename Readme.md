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