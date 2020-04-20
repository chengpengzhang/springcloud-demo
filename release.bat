set noneedcheck=1
call mvn release:clean release:prepare release:perform -Darguments="-DskipTests -Dmaven.javadoc.skip=true" -Dmaven.javadoc.skip=true -DcheckModificationExcludeList="**\*.bat" -Dnoneedcheck="1" -DscmCommentPrefix="build(release-plugin): "
pause