FROM java:8-alpine

#定义工作目录
ENV WORK_PATH /
#设置环境，默认为：prod
ENV SPRING_PROFILES_ACTIVE dev
#设置redis环境变量
ENV SPRING_REDIS_HOST localhost
#设置时区
ENV TZ=Asia/Shanghai

#指定工作目录，如果不存在，则自动创建
WORKDIR $WORK_PATH

#拷贝jar并修改名称为bi
COPY *.jar $WORK_PATH/file.jar

#设置端口
CMD ["--server.port=8080"]

#暴露端口
EXPOSE 8080

#设置环境变量
ENV JVM_OPTS=""

#执行jar
#CMD java ${JVM_OPTS} -jar $WORK_PATH/file.jar --spring.profiles.active=dev
ENTRYPOINT java ${JVM_OPTS} -jar $WORK_PATH/file.jar --spring.profiles.active=${SPRING_PROFILES_ACTIVE} --spring.redis.host=${SPRING_REDIS_HOST}