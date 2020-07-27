# Ensure single tags are used.
# This is necessary for opaneapi-generator
# which doesn't work well with multiple tags
haproxy_spec="./build/haproxy_spec.yaml"
found="false"
countTags=0
lineNo=0

while IFS= read -r line
do
  lineNo=$((lineNo+1))
  # skip root tags
  if [ "$line" = "tags:" ]; then
    continue
  fi
  
  trimLine="${line#"${line%%[![:space:]]*}"}"
  
  if [ "$found" = "true" ] && [ "${trimLine:0:1}" = "-" ]; then
    countTags=$((countTags+1))
  else
    found="false"
    countTags=0
  fi

  if [ "$countTags" -gt 1 ]; then
    echo "Multiple tags are not supported. Additional tag: $line at line: $lineNo"
    exit 1
  fi
    
  # handle only tags from path
  if [ "$trimLine" = "tags:" ]; then
    found="true"
  fi
done < "$haproxy_spec"