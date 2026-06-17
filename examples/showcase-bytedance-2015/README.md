# 案例展示：字节跳动 2015 年 C 轮 BP

这是 BP Office Hours Skill 在一份公开 BP 上跑一次完整流程的输出示例。目的是让你直观看到三件交付物（内容稿、Slide Spec、给创始人的工作建议）以及最终渲染出来的 .pptx 长什么样。

## ⚠️ 仅供格式参考

- 本案例基于已经公开流传的字节跳动 2015 年 3 月 C 轮 BP（31 页）。
- 由于 Skill 流程需要 Q&A 环节，而我们无法回到 2015 年访谈张一鸣，所以问答部分是 Skill 内部 **mock** 出来的——基于张一鸣公开讲话风格 + 2015 时点信息的合理推断。
- **所有 mock answer 不代表张一鸣或字节跳动 2015 年的真实回答**。输出里的判断、亮点、建议都是为了演示 Skill 的输出形态，不要把它当作对真实字节跳动业务的分析。
- 想看 Skill 在你自己项目上的真实运行效果，安装后跑一次就行。

## 这个文件夹里有什么

- [`output.md`](output.md) — 三件交付物的完整文本（内容稿 + Slide Spec + 给创始人的工作建议）。
- [`pitch-deck.pptx`](pitch-deck.pptx) — 把 Slide Spec 通过 anthropic-skills:pptx 渲染出的实际 PowerPoint 文件。下载后可直接在 PowerPoint / Keynote 里打开。

## Skill 在这个案例里跑了什么

1. 读取 BP PDF（31 页，pdfplumber 提取）。
2. 按 18 个 Part 审计 BP 覆盖情况——9 个 Part 在 BP 里已有充分内容（包括团队、产品、市场、Why now、商业模式、融资、终局等）。
3. 对未覆盖部分（动机、自我认知、第一批用户故事等）跑 mock Q&A，应用 2 轮追问上限和跨 Part 追踪。
4. 生成内容稿（12 个模块）+ Slide Spec（12 页结构化）+ 给创始人的工作建议（按优先级分四档）。
5. 把 Slide Spec 交给下游 renderer 渲染成实际 .pptx，文字严格逐字搬运，视觉自由发挥。

## 一些值得看的点

- **跨 Part 追踪的实际效果**：mock Q11（AI / 算法）的回答里"数据飞轮"自动传到了 Q13（壁垒），Q13 时没重复问。
- **"这里建议补充"如何抓到真实弱点**：cohort retention 缺失、bottom-up 市场推导路径不清晰、对 Google 全球竞争的应答等——这些都是 2015 年真实投资人会追的点。
- **2015 时点的 vocabulary 自动适配**：Q11 用"机器学习 / 算法"而不是今天的"AI"。
- **PPT 文字保真**：Slide Spec 里所有 `page_title`、`core_sentence`、`must_include` 在 .pptx 里都是逐字搬，没有 renderer 自己编的话；所有 `must_not_invent` 列出的事实（估值、cohort 数字、未公开数据等）都没出现在 PPT 上。
