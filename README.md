# BP Office Hours Skill

一个帮助创始人打磨 BP / Pitch Deck 的 Claude Skill。

通过 office-hours 风格的问答流程，读现有材料、按 18 个 BP Part 审计覆盖、提出 sharp 的追问，最后产出三件交付物：内容稿、Pitch Deck Slide Spec、给创始人的工作建议。

## 这个 Skill 适合什么场景

- 帮创始人分析、改进、重写 BP / Pitch Deck / 融资 memo / startup storyline
- 扮演 FA 或早期 VC 的视角追问创始人
- 找出融资材料里薄弱、缺失或会被投资人质疑的地方
- 生成 storyline、Pitch Deck 内容稿、投资 memo 风格的稿子

## 安装

把整个仓库内容（或者克隆这个 repo）放到 Claude Skills 目录下：

```bash
# macOS / Linux 用户级 skill
git clone <this-repo> ~/.claude/skills/bp-office-hours

# 或者放到项目级
git clone <this-repo> .claude/skills/bp-office-hours
```

具体安装路径以你的 Claude 客户端（Claude Code / Claude Desktop 等）的 Skill 加载规则为准。

## 触发方式

任何下面这类请求，Claude 都会自动加载这个 Skill：

- "帮我分析一下这份 BP"
- "扮演 FA 给我追问 BP"
- "帮我把这份融资 memo 打磨得更 sharp"
- "我想跑一遍 BP Office Hours"

## 文件结构

```
bp-office-hours/
├── SKILL.md                       # 入口（Claude 默认加载）
├── references/                    # 按需加载的规范文档
│   ├── 01-question-bank.md       # 18 Part 题库（固定问题 + 追问 + 候选挑战）
│   ├── 02-follow-up-rules.md     # 追问触发逻辑、两轮上限、Pass 处理、跨 Part 追踪
│   ├── 03-session-workflow.md    # 会话操作流程
│   ├── 04-content-draft-spec.md  # 内容稿规范
│   └── 05-slide-spec.md          # Slide Spec 规范（最终 PPT 交付物）
└── examples/                      # 金标准样例
    ├── wanaka-content-draft-golden.md
    └── wanaka-slide-spec-golden.md
```

## 核心设计原则

- **PPT 不渲染。** Slide Spec 是最终交付物，不是中间产物。结构化文本可以直接交给设计师、Gamma、PowerPoint 模板或下游脚本去渲染。这样换来稳定性。
- **每道固定问题都要问。** 18 Part 题库里的每一道固定问题都必须问到——只有材料明确覆盖才能跳。不是问一道就跳整个 Part。
- **追问按触发逻辑认真做。** 六条原则（追具体 / 追机制 / 追诚实 / 追适配 / 追壁垒 / 追对比）扫一遍，任一命中就追问。同一条触发最多追两轮，避免无限追下去。
- **跨 Part 信息追踪。** 创始人答 A Part 时常带出 B Part 的内容——写进 Fact Bank 不重复问。
- **不暴露内部状态。** Part 编号、P0/P1、Fact Bank、source_material 等术语绝不出现在用户回合里。

## 测试标记模式

正式使用时，问题前没有任何元标记。

如果用户说"开测试标记"，Skill 会在每个问题前加一行 `测试标记：Part 编号 / 问题类型 / 触发原因`，方便 review 提问逻辑。说"关测试标记"即可关闭。

## License

MIT
