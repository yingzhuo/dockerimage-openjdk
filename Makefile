login:
	@docker login

build-v8:
	@docker buildx create --use
	@docker buildx build --push --platform linux/amd64,linux/arm64 \
		-t yingzhuo/openjdk:8-alpine \
		-t registry.cn-shanghai.aliyuncs.com/yingzhuo/openjdk:8-alpine \
		$(CURDIR)/8/

build-v17:
	@docker buildx create --use
	@docker buildx build --push --platform linux/amd64,linux/arm64 \
		-t yingzhuo/openjdk:17-alpine \
		-t yingzhuo/openjdk:latest \
		-t registry.cn-shanghai.aliyuncs.com/yingzhuo/openjdk:17-alpine \
		-t registry.cn-shanghai.aliyuncs.com/yingzhuo/latest \
		$(CURDIR)/17/

build-all: build-v8 build-v17

github:
	@git add .
	@git commit -m "$(shell /bin/date "+%F %T")"
	@git push

.PHONY: login build-v8 build-v17 build-all github