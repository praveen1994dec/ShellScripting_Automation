#SEND AN EMAIL TO TEAM AFTER THE VERSION IS INCREMENTED
cat > html <<'EOF'
<html>
<body>
<p><strong>MODULE_VERSION - {{module_version}}</strong></p>
<table border="1" cellspacing="0" cellpadding="2.5" valign="top"
width="100%" align="justify"
style="width: 100%; max-width: 1200px; background-color: #ffffff">
<tr>
<th>Key</th>
</tr>
EOF
Paste jiraid.txt  | while read; do
  cat >> jira.html <<EOF
<tr>
<td>$read</td>
</tr>
EOF
done

