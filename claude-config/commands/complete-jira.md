# Complete Jira Task

Complete a Jira TASK ticket based on PRD and US context.

## Arguments
- $ARGUMENTS (required): Notion PRD link, Jira US ticket URL, Jira TASK ticket URL (space-separated)

## Instructions

1. Fetch and analyze context:
   - Notion PRD: desired outcome, specs, business logic, edge cases
   - Jira US: requirements, scope, acceptance criteria
   - Jira TASK: specific implementation scope

2. Check existing codebase for:
   - Reusable components/patterns
   - Related features/endpoints
   - Existing tests to follow

3. For `ent-admin-fe` (frontend): 
    - check for reusable components, existing patterns, related features
    - check `ent-admin-fe/src/shared/design/typography.ts` for existing fonts
    - check `ent-admin-fe/src/shared/design/defaultTheme.ts` for existing colors
    - `ent-admin-be`: check for existing endpoints, services, models that can be leveraged


4. Implement the task:
   - Follow existing code patterns
   - Add tests if applicable
   - Update types/interfaces as needed

## Output
- Implemented code changes
