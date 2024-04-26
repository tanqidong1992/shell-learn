#!/bin/bash

cat << EOF
line 1
  line 2
    line3 
EOF

cat <<-EOF
line 1
line 2
  line3 with tab start $(date)
EOF

cat <<EOF
Some Special Characters: \$ \\ \`
EOF

: <<'DISABLED'
echo "This line will not show up in the console.
echo "Neither will this line.
DISABLED

echo "This line will be printed to the console"

cat <<< "This is a string"

WELCOME_MESSAGE="Welcome to dashboard"
cat <<< $WELCOME_MESSAGE