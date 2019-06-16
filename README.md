# ![HAProxy](assets/images/haproxy-weblogo-210x49.png "HAProxy")

## HAProxy Data Plane API Specification

This is the [OpenAPI 2.0 (fka Swagger)](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md) specification for the [HAProxy Data Plane API project](https://github.com/haproxytech/dataplaneapi)

## Contributing 

When contributing change files located it paths/ and models/ directories and the haproxy-spec.yaml, and then build the resulting one-file spec using the build binary in build directory:

```
./build -file ../haproxy-spec.yaml > haproxy_spec.yaml
```

For commit messages and general style please follow the haproxy project's [CONTRIBUTING guide](https://github.com/haproxy/haproxy/blob/master/CONTRIBUTING) and use that where applicable.
