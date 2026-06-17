# Slide Spec 规范

**这份文档定义最终 Pitch Deck 交付物的格式。**

Skill 不渲染 PPTX、HTML 或任何视觉文件。Slide Spec 本身**就是**最终交付物——它是一份结构化、可被人或下游工具稳定理解的文本，每页包含投资人需要看到的核心判断、必含事实、视觉形式建议和素材清单。

**样例：** `examples/skillet-example-slide-spec.md`（虚构案例，仅供格式参照）。

## 为什么不渲染 PPT

LLM 用文字规则生成视觉文件的稳定性很低。把视觉判断（颜色、字号、间距、平衡感、留白、对齐）外包给一个由 prompt 描述的"设计系统"，结果会随着每次会话不同而漂移。

Spec 作为最终交付物有三个好处：

1. **稳定**：相同输入 → 相同输出。可以反复 review、版本控制、AB 比较。
2. **可移交**：创始人可以直接拿去找设计师、Gamma、Beautiful.AI、PowerPoint 模板，或自己手画。
3. **可演化**：未来如果接入确定性的渲染脚本（python-pptx + 12 页固定模板），Spec 就是输入。

## 对下游 Renderer 的硬约束（文字保真）

Spec 一旦生成，如果交给任何下游 renderer（pptxgenjs、python-pptx、Gamma、设计师手画、frontend-slides 等）渲染成实际 PPT，下面这条规则**必须**被执行——这是 Skill 的底线，写在每一份生成的 Spec 文件最前面也要再提醒一次。

**底线规则：所有出现在 PPT 上的文字，必须严格来自 Spec。不允许 renderer 自己编写新文字。**

具体来说：

- **必须逐字搬运的字段**：`page_title`、`core_sentence`、`must_include` 列出的所有事实。允许的只有去除标点、压缩空格、调整换行符这种最轻的格式清理。**不允许**改写、概括、扩写、补充例子、加形容词。
- **必须从 Spec 中查证的字段**：`evidence`、`must_not_invent`、`asset_placeholders`、`improvement_notes`。这些是写给 reviewer 看的，不进 PPT 视觉本体，但 renderer 在做判断时必须读。
- **允许自由发挥的部分**：
  - 视觉形态（在 `visual_form` 的指引下，具体怎么画那张飞轮 / 矩阵 / 时间线）
  - 配色、字号、字体、留白、对齐这些纯视觉决策
  - 结构化图表的具体形状（漏斗的层数 ratio、矩阵的 cell padding、流程节点之间的箭头样式）
  - 抽象/概念插画（封面意象、终局愿景图等纯氛围插画）

也就是说：**图怎么画自由，话只能照搬。**

**Renderer 绝对不能做的事**：

- 给页面加 Spec 里没有的解释段、引用句、用户 quote、bullet point。
- 在标题或主句里加"AI 创新"、"颠覆"、"赋能"、"行业领先"这类 Spec 没写的形容词。
- 把 `must_not_invent` 列出的事实（融资金额、用户数、市场规模数字、客户名、留存率等）以任何形式渲染到页面上——即使是占位数字也不行（占位用 `asset_placeholders` 字段的方式处理）。
- 把英文 page_title 翻成中文或反之，除非 Spec 明确给了双语版本。
- "凑字数"——觉得某页太空就自己加文字内容。空就空着，或用 `asset_placeholders` 占位框处理。

**为什么这条规则是底线**

Spec 已经经过整个 Office Hours 流程的审计——每条 must_include 都能追溯到 Fact Bank、每个 must_not_invent 都在防止常见的编造风险。如果 renderer 自由发挥文字，前面所有的"不编造"工作都被推翻了。视觉自由没问题，文字必须保真。

**如果信息不够**

如果 Spec 某页的 must_include 信息不足以填满一个看起来 polished 的页面，**正确做法是让页面看起来稀疏一点，或者用 asset_placeholders 占位框**。不要让 renderer 用"通用模板填充"的方式补话。

## 整体结构

Spec 由 12 个 slide 组成。顺序固定：

1. 项目摘要
2. 用户、痛点与现有替代
3. 产品方案与核心流程
4. AI 与关键技术杠杆
5. 为什么现在
6. 市场规模与切入口
7. 竞争格局与替代方案
8. 核心壁垒与可投理由
9. 验证、数据与 GTM
10. 团队与 Founder-Market Fit
11. 商业模式、融资与里程碑
12. 愿景与终局

每个 slide 用同一套字段。

## 每页字段定义

每页的 markdown 模板：

```markdown
## Slide N. <页面标题>

**page_title**: <投影到 PPT 上的中文标题，≤ 12 字，要有结论感>

**core_sentence**: <投资人需要 10 秒内记住的一句话。≤ 30 字。这句话是 locked 的，下游不要重写>

**must_include**:
- <事实 1：必须出现在页面上的事实、数字、对比项或流程节点>
- <事实 2>
- ...

**evidence**:
- <对应 must_include 项的来源：原材料引用 / 用户问答 / 综合判断>
- ...

**must_not_invent**:
- <这一页绝对不能编造的事实类型。例如"具体客户名"、"留存数字"、"用户头像"等>
- ...

**visual_form**: <从候选视觉形式中选一个，例如"2x2 矩阵"、"5 步流程"、"飞轮"、"KPI dashboard + GTM path"。给出**一个**主选，不要给候选清单>

**layout_intent**: <1-2 句描述视觉重心、分组方式、层级关系。例如"左侧一句话定位，右侧三栏卡片，最大视觉重量放在 core_sentence">

**asset_placeholders**:
- <如果这一页需要素材但用户还没提供，列在这里。例如"产品首页截图"、"团队合影"、"竞品 logo"。不要把这些占位写进 must_include>
- ...

**improvement_notes**: <如果这一页缺数据 / 截图 / 用户引用，写在这里。这个字段会被汇总到「给创始人的工作建议」，不会进入投资人版 PPT>
```

## 字段使用规则

### page_title（locked）

中文 ≤ 12 字，要有结论感。"用户每周浪费 5 小时" 优于 "用户的时间管理问题"。下游渲染时不要改这个标题。

### core_sentence（locked）

这一页投资人必须记住的一句话。≤ 30 字。

- 必须是**判断句**，不是描述。
- 必须可独立成立——拿出页面单看也能读懂。
- 下游渲染时**不允许重写**。允许的只有去除标点、压缩冗余字符这种最轻的清理。

### must_include

页面必须承载的事实、数字、对比项、流程节点。

- 每条必须能在 Fact Bank 中找到对应事实。
- 不要写"放产品截图"这种素材描述（那是 `asset_placeholders` 的事）。
- 不要写"AI 的核心价值"这种空话，要写"AI 负责降低创作门槛，人负责审美和社交表达"这种带判断的事实。
- 表格类页面把行/列直接写出来，不要让下游猜。

### evidence

每条 must_include 项对应的来源。来源类型有三种：

- `source_material`：来自用户原始材料（引用一句话或一段话）。
- `user_answer`：来自问答（注明在哪个 Part）。
- `synthesis`：基于上述两类做的综合判断（标明合成自哪些事实）。

evidence 是给下游和 reviewer 看的，让他们知道 must_include 的可信度。

### must_not_invent

这一页**绝对不能编造**的事实类型。例如：

- Market 页：`must_not_invent: 具体市场规模数字、TAM/SAM/SOM 数额`。
- Traction 页：`must_not_invent: 用户数、收入、留存率、付费转化率`。
- Team 页：`must_not_invent: 团队成员具体履历公司名、shipped 产品名、未提及的 advisor`。
- Competition 页：`must_not_invent: 竞品名、竞品具体能力对比、竞品融资数据`。

如果当前 Fact Bank 不支持，宁可让 must_include 留空也不要编。空字段会进入 `improvement_notes` 提醒 Founder 补充。

### visual_form

从下面候选里选**一个**主选。不要列候选清单，让下游必须知道用哪个。

候选视觉形式：

- `三栏摘要`
- `用户旅程图`
- `gap map`
- `对比矩阵`（含表格类）
- `3-5 步流程图`
- `产品体验地图`
- `架构分层图`
- `AI 价值链路图`
- `催化剂汇合图`
- `时间线`
- `wedge funnel`
- `bottom-up 算式表`
- `2x2 矩阵`
- `飞轮`
- `壁垒分层`
- `数据闭环`
- `KPI dashboard`
- `KPI ladder`
- `GTM path`
- `Milestone 时间线`
- `团队能力矩阵`
- `Founder-Market Fit bridge`
- `商业模式卡片`
- `资金用途到里程碑映射`
- `Transformation timeline`
- `愿景概念图`

选不出来时，根据信息关系判断：
- 一对一的并列关系 → 对比矩阵或表格。
- 因果或循环 → 飞轮 / 数据闭环。
- 时间顺序 → 时间线 / milestone。
- 层级 → 架构分层 / 漏斗。
- 多对一的汇合 → 催化剂汇合图。
- 用户行为序列 → 流程图。

### layout_intent

1-2 句描述视觉重心和分组方式。例如：

> 左侧大字号放 core_sentence，右侧用一张产品流程示意图。三个关键词卡片在左下角，字号小，作为辅助信息。

不要描述具体颜色、字体、间距。视觉细节交给下游。

### asset_placeholders

这一页需要但用户**还没提供**的素材。例如：

- "产品首页截图"
- "团队合影"
- "竞品 logo（Roblox / Rosebud / Minecraft）"
- "用户访谈引用句（带姓名职位）"

每条要具体——"放产品截图"太泛，"放普通用户从想法到生成 mini 游戏的 5 步流程截图"更可用。

这些占位**不要**变成 must_include 项，避免下游误以为已有素材。

### improvement_notes

这一页 Spec 写完后，仍然存在的事实缺口、数据缺口、对比缺口。

例如 Market 页：

> 缺少 bottom-up 推导。需要 Founder 补：目标年龄段人数、Roblox / Minecraft 用户重合度、其中愿意创作的人群比例、ARPU 假设。

这些 notes 会被 `03-session-workflow.md` 第 7 步汇总进"给创始人的工作建议"，**不**进入投资人版 PPT。

## 12 页的默认 visual_form 建议

以下是当某个项目没有特别需要时的默认选择。允许根据项目特点替换，但替换时 `layout_intent` 要说明为什么这页选这个视觉形式。

| Slide | 默认 visual_form |
| --- | --- |
| 1. 项目摘要 | 三栏摘要 |
| 2. 用户、痛点与现有替代 | 对比矩阵（表格） |
| 3. 产品方案与核心流程 | 3-5 步流程图 |
| 4. AI 与关键技术杠杆 | 架构分层图 |
| 5. 为什么现在 | 催化剂汇合图 |
| 6. 市场规模与切入口 | wedge funnel |
| 7. 竞争格局与替代方案 | 2x2 矩阵 |
| 8. 核心壁垒与可投理由 | 飞轮 |
| 9. 验证、数据与 GTM | KPI dashboard + GTM path（左右分栏） |
| 10. 团队与 Founder-Market Fit | 团队能力矩阵 |
| 11. 商业模式、融资与里程碑 | 商业模式卡片 + Milestone 时间线（左右分栏） |
| 12. 愿景与终局 | Transformation timeline |

## 不可编造类型（按页面分）

每个 page 的 `must_not_invent` 应至少覆盖下表（不限于此）：

| Slide | 不可编造 |
| --- | --- |
| 1. 项目摘要 | 具体融资轮次、投资人名、用户数 |
| 2. 用户、痛点与现有替代 | 用户姓名 / 职业 / 引用、未访谈过的痛点量化 |
| 3. 产品方案与核心流程 | 未实现的功能、未真实存在的截图 |
| 4. AI 与关键技术杠杆 | 模型参数、训练数据规模、技术指标 |
| 5. 为什么现在 | 时间线上的具体年份事件（除非材料给过） |
| 6. 市场规模与切入口 | TAM/SAM/SOM 数额、用户数、ARPU |
| 7. 竞争格局与替代方案 | 竞品融资、收入、用户数、具体能力对比 |
| 8. 核心壁垒与可投理由 | 数据闭环的具体规模、网络效应的具体证据 |
| 9. 验证、数据与 GTM | 留存数字、付费转化率、用户数、收入 |
| 10. 团队与 Founder-Market Fit | 团队成员未提过的履历、advisor 名单 |
| 11. 商业模式、融资与里程碑 | 融资金额、用途分配、runway、ARR 假设 |
| 12. 愿景与终局 | 具体 DAU / 收入预测、生态参与者名单 |

## 不允许出现在 Spec 里的东西

Spec 是给下游（设计师、渲染工具、reviewer）看的，不是给投资人看的。但下面几类**绝对不能**进 Spec，即使作为"内部说明"：

- "punchline"、"takeaway"、"hook"、"slide takeaway" 等内部词。
- "这一页用于说明 X"、"这一页的目的是让投资人理解 Y" 等元说明。
- "Fact Bank 中没有相关事实"、"source_material 显示" 等过程语言。
- 任何形如 "[占位]"、"[此处补充]"、"[TODO]" 的硬占位符——用 `asset_placeholders` 字段承接。

## 输出长度

每页 Spec 中，所有字段加起来不要超过 30-50 行 markdown。简洁是 Spec 的核心价值。

如果某页信息太多写不下，**不要**塞进 Spec——把溢出部分挪到 `improvement_notes` 或在内容稿里详细展开。Spec 是论断，不是细节。

## Checklist

生成 Slide Spec 之前最后检查：

- [ ] 12 个 slide 全部存在，顺序正确。
- [ ] 每页 `page_title` ≤ 12 字，是判断。
- [ ] 每页 `core_sentence` ≤ 30 字，是判断句。
- [ ] 每页 `must_include` 至少 3 条，每条都能在 Fact Bank 中追溯。
- [ ] 每页 `must_not_invent` 至少 1 条，且和这一页的常见编造风险匹配。
- [ ] 每页 `visual_form` 是单选，不是候选清单。
- [ ] 没有任何编造的客户名、数字、留存率、市场规模、融资金额。
- [ ] 没有任何 takeaway / punchline / "这一页用于" 等内部语言。
- [ ] 缺素材的页面有 `asset_placeholders`，不是把占位塞进 must_include。
- [ ] `improvement_notes` 在每页存在的话，都已被汇总到「给创始人的工作建议」。
