# PRD Tasks Generator

Generate implementation TASK tickets from a User Story ticket.

## Arguments
- $ARGUMENTS (required): Jira US ticket URL, Notion PRD link, optional Figma link (space-separated)

## Instructions

1. Fetch and analyze:
   - Jira US ticket: ENT number, requirements, scope
   - Notion PRD: extract desired outcome, detailed specs, business logic, edge cases
   - Figma (if provided): extract UI/UX requirements, components, states, font color(in the form of), font size(for example {paragraphSmall}, {paragraphStrongMedium}, check)

2. Check existing codebase:
   - `ent-admin-fe`: check for reusable components, existing patterns, related features
    - check `ent-admin-fe/src/shared/design/typography.ts` for fonts
    - check `ent-admin-fe/src/shared/design/defaultTheme.ts` for colors
   - `ent-admin-be`: check for existing endpoints, services, models that can be leveraged

3. Break down into TASK tickets:
   - If there is exist tasks for each US then skip.
   - Map requirements to FE/BE tasks
   - BE tasks before FE (APIs needed first)
   - Reference existing code where applicable

4. Task naming format: `[AC][FE/BE] Short description`
   - AC = Admin Console
   - FE = frontend, BE = backend
   - Short Description: short and concise sacrifice grammar, always start with VERB like "Add", "Implement", "Enable", "Handle", "Fix", "Support", "Open", "Update"

## Output
Single chronological list, ordered by implementation sequence:

```
[AC][BE] ___
[AC][BE] ___
[AC][FE] ___
[AC][FE] ___
```

And output an detailed implementation plan using plan mode