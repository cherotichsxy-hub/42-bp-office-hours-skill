<div align="right">

English · [中文](README.md)

</div>

# BP Office Hours Skill

A Claude Skill that runs an office-hours session for early-stage founders. Through structured questioning, it helps you think through and articulate your project, then produces a fundraising-ready content draft, a Pitch Deck outline, and targeted suggestions.

*(We built this Skill hoping to help founders tell their story better — distilled from years of conversations with founders and investors. It's still early and far from polished, so please bear with us if you run into rough edges. Feedback is very welcome. )*

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
git clone https://github.com/cherotichsxy-hub/42-bp-office-hours-skill ~/.claude/skills/bp-office-hours
```

If you want to upload PDF / PPTX / DOCX files in Claude Code, run the dependency installer once:

```bash
cd ~/.claude/skills/bp-office-hours
./install.sh
```

### Claude.ai (web) or Claude Desktop

Clone the repo into Claude's skills directory (path depends on your client). PDF / PPT / DOC uploads work natively — **no install.sh needed**.


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
