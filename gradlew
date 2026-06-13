#!/usr/bin/env sh
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'
APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`
APP_HOME=`dirname "$0"`
APP_HOME=`cd "$APP_HOME" && pwd`
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

JAVA_OPTS=""
MAX_FD="maximum"
warn () { echo "$*"; } >&2
die () { echo; echo "$*"; echo; exit 1; } >&2

OS="`uname`"
cygwin=false
msys=false
darwin=false
nonstop=false
case "$OS" in
  CYGWIN*) cygwin=true;;
  Darwin*) darwin=true;;
  MSYS*|MINGW*) msys=true;;
  NONSTOP*) nonstop=true;;
esac

if [ -n "$JAVA_HOME" ]; then
  JAVACMD="$JAVA_HOME/bin/java"
else
  JAVACMD="java"
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS \
  -classpath "$CLASSPATH" \
  org.gradle.wrapper.GradleWrapperMain "$@"
