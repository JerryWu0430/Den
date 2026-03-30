Generate a PR description for the current changes using this format that I can copy and paste, so don't render the markdown when outputted:

### :pushpin: References

-   **Project/platform:** Admin Console
-   **Issue:** [Extract Jira ticket from branch name or ask user, e.g., ENT-4647]
-   **Related pull-requests:** N/A

### :tophat: What is the goal?
[3-4 short concise bullet points based on the changes]

### :page_facing_up: How is it being implemented?
[3-4 short concise bullet points, use `code` formatting for component names]

---

Instructions:
1. Run `git diff` to see staged/unstaged changes
2. Check the branch name for the Jira ticket number
3. Generate the description based on actual code changes
