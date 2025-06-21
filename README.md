## Nginx Access Log Analyzer Shell Script

This shell script analyzes an Nginx access log file and provides insightful statistics about your web traffic.

### 📄 **Sample Nginx Access Log Fields**

Each line in the access log typically contains:

- **IP Address**
- **Date and Time**
- **Request Method and Path**
- **Response Status Code**
- **Response Size**
- **Referrer**
- **User Agent**

---

### 🔍 **Script Functionality**

The script processes the log file and displays:

1. **Top 5 IP addresses** with the most requests
2. **Top 5 most requested paths**
3. **Top 5 response status codes**
4. **Top 5 user agents**

---

### 🚀 **How It Works**

- **Reads** the log file line by line
- **Extracts** relevant fields using tools like `awk`, `uniq`, or `sort`
- **Sorts and counts** occurrences
- **Displays** the top 5 results for each category in a user-friendly format

---

### 💡 **Sample Output**

```
Top 5 IP addresses with the most requests:
192.168.1.10 - 120 requests
203.0.113.5 - 98 requests
...

Top 5 most requested paths:
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests
...

Top 5 response status codes:
200 - 300 times
404 - 25 times
...

