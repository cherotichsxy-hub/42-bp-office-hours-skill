<div align="right">

English · [中文](README.md)

</div>

# BP Office Hours Skill

A Claude Skill that runs an office-hours session for early-stage founders. Through structured questioning, it helps you think through and articulate your project, then produces a fundraising-ready content draft, a Pitch Deck outline, and targeted suggestions.

## When to use

- Analyze, improve, or rewrite a BP / pitch deck / fundraising memo
- Have an AI play FA or early-stage VC and push you on your story
- Surface weak, missing, or VC-questionable parts of your fundraising materials
- Generate a storyline or pitch deck content outline

## See a complete output example

[examples/showcase-bytedance-2015/](examples/showcase-bytedance-2015/) — a full output from running the Skill on a public BP (ByteDance 2015 Series C). Includes the content draft, Slide Spec, founder suggestions, and a rendered `.pptx`.

> ⚠️ The Q&A in this example is mocked — for format reference only, **not real founder responses or analysis of the actual business**.

## Install

### Claude Code

```bash
git clone https://github.com/cherotichsxy-hub/bp-office-hours-skill ~/.claude/skills/bp-office-hours
```

If you want to upload PDF / PPTX / DOCX files in Claude Code, run the dependency installer once:

```bash
cd ~/.claude/skills/bp-office-hours
./install.sh
```

### Claude.ai (web) or Claude Desktop

Clone the repo into Claude's skills directory (path depends on your client). PDF / PPT / DOC uploads work natively — **no install.sh needed**.

### Cursor

Clone the repo into your project at `.cursor/rules/bp-office-hours/`. Cursor will auto-load `SKILL.md` as a project rule.

```bash
git clone https://github.com/cherotichsxy-hub/bp-office-hours-skill .cursor/rules/bp-office-hours
```

### Other coding agents / AI platforms

This Skill is essentially a structured prompt plus reference docs. It adapts to almost any platform:

- **Custom GPT / Claude Project**: Paste `SKILL.md` into system prompt / instructions. Attach `references/` and `examples/` as knowledge files.
- **Aider / Continue / Kimi Code / others**: Paste `SKILL.md` as system prompt or conversation opener.
- **Any AI that supports custom instructions**: Same idea.

## Trigger phrases

Any of these will load the Skill:

- "Help me analyze this BP"
- "Act as a VC and challenge my pitch"
- "Run BP office hours on this"

## Language

The Skill outputs in Chinese by default (the question bank and style are calibrated for Chinese VC culture). When your input is English, it automatically switches to English while preserving the structure.

## File structure

```
bp-office-hours-skill/
├── SKILL.md            # Main entry (auto-loaded by Claude)
├── install.sh          # Optional Claude Code dependency installer
├── references/         # Question bank, follow-up rules, workflow, content & slide specs
└── examples/           # Fictional sample + ByteDance 2015 public BP output
```

## License

MIT
