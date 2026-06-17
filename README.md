<div align="right">

[English](README.en.md) · 中文

</div>

# BP Office Hours Skill

像跑一场早期项目的 office hours——通过结构化提问，陪创始人把项目想清楚、讲清楚，然后产出适合融资沟通的内容稿、Pitch Deck 大纲，以及给创始人的针对性建议。

## 适合的场景

- 分析、改进、重写 BP / Pitch Deck / 融资 memo
- 让 AI 扮演 FA 或早期 VC 来追问创始人
- 找出融资材料里薄弱、缺失或会被投资人质疑的地方
- 生成 storyline、Pitch Deck 内容稿

## 看一个完整输出示例

[examples/showcase-bytedance-2015/](examples/showcase-bytedance-2015/) — 基于公开 BP（字节跳动 2015 年 C 轮）跑完一次流程的输出示例，含内容稿、Slide Spec、给创始人的工作建议，以及渲染好的 `.pptx`。

> ⚠️ 该示例的 Q&A 部分是 mock 的，仅供格式参考，**不代表任何真实回答或对真实业务的分析**。

## 安装

### Claude Code

```bash
git clone https://github.com/cherotichsxy-hub/bp-office-hours-skill ~/.claude/skills/bp-office-hours
```

如果你要在 Claude Code 里上传 PDF / PPTX / DOCX 这类文件，跑一次依赖安装：

```bash
cd ~/.claude/skills/bp-office-hours
./install.sh
```

### Claude.ai 网页 / Claude Desktop

把仓库克隆到 Claude 的 skills 目录（路径以你的客户端为准）。PDF / PPT / DOC 上传原生支持，**不需要 install.sh**。

### Cursor

把仓库克隆到你项目下的 `.cursor/rules/bp-office-hours/`，Cursor 会自动把 `SKILL.md` 作为项目规则加载。

```bash
git clone https://github.com/cherotichsxy-hub/bp-office-hours-skill .cursor/rules/bp-office-hours
```

### 其他 coding agent / AI 平台

Skill 本质是一份结构化提示词 + 参考文档，可以适配几乎任何平台：

- **Custom GPT / Claude Project**：把 `SKILL.md` 内容粘进 system prompt / instructions，把 `references/` 和 `examples/` 作为 knowledge files 附上。
- **Aider / Continue / Kimi Code / 其他**：把 `SKILL.md` 作为 system prompt 或对话开头粘进去。
- **任何支持自定义 instructions 的 AI**：同上。

## 触发方式

任何下面这类请求都会自动加载这个 Skill：

- "帮我分析一下这份 BP"
- "扮演 FA 给我追问 BP"
- "我想跑一遍 BP Office Hours"

## 语言

默认中文输出。如果你的材料或对话开始就是英文，Skill 会自动切换到英文运行整个流程。

## 文件结构

```
bp-office-hours-skill/
├── SKILL.md            # 主入口（Claude 默认加载）
├── install.sh          # Claude Code 依赖一键安装（可选）
├── references/         # 题库、追问规则、流程、内容稿规范、Slide Spec 规范
└── examples/           # 虚构案例样例 + 字节跳动 2015 公开 BP 输出示例
```

## License

MIT
