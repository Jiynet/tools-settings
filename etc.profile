# JDK 8
export JAVA_HOME=/opt/jdk8
# JDK 17
# export JAVA_HOME=/opt/jdk17
# JDK 21
# export JAVA_HOME=/opt/jdk21

export PATH=${PATH}:${JAVA_HOME}/bin

# maven
export MAVEN_HOME=/opt/apache/apache-maven-3.9.9
export PATH=$PATH:$MAVEN_HOME/bin

# golang
export GOROOT=/opt/go
export PATH=$PATH:$GOROOT/bin

# scala
export SCALA_HOME=/opt/scala
export PATH=${PATH}:${SCALA_HOME}/bin

# spark
export SPARK_HOME=/opt/spark-2.4.5-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin

# fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx