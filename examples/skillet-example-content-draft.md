# 内容稿样例 — Skillet（虚构案例）

> **Fictional company — for illustration only.**
> Skillet 是为了展示 BP Office Hours 输出格式而虚构的公司。所有公司名、人名、产品名、数据、判断都是虚构，与任何真实公司无关。
>
> 生成新内容稿时，参照它的**结构、语言密度、判断方式**和"这里建议补充"的使用方式。

---

## 项目亮点

### Skillet 抓的是 AI 视频生成能力和 Gen Z 烹饪内容创作意愿之间的交叉

Gen Z home cooks 在 TikTok 和 Instagram 上分享自己做的菜的意愿很强，但视频剪辑是巨大门槛——拍摄、剪辑、加字幕、配音，一条 30 秒的菜谱视频常常要花两三个小时。Skillet 的判断是 AI 视频生成质量刚刚足够好到能服务 vertical 场景，再加上 cooking 这个垂直领域里数据和动作结构性很强（recipe step + action + plating），可以做一个 vertical AI agent——用户只需要描述自己做了什么、拍几张图，AI 就能生成一条 polished 的短视频。

### 走 vertical AI agent 路线，不是把通用视频工具塞给烹饪用户

通用 AI 视频工具（Runway、Sora 等）能生成视频，但不懂菜：食材切错、刀工动作错位、plating 不真实。Skillet 把自己定义成 cooking creator 的 first-party AI tool——专门 model 了 recipe 结构、烹饪动作、食物视觉，配合用户自己的语音和实拍素材。模型层的差异化不是更大的模型，而是更对的数据和工作流。

### 团队是内容侧和 AI 侧的真正交叉，不是单一背景

创始人林晚之前在 Spoonful Media 做内容总监 5 年，跑过订阅 50 万的 cooking newsletter，深度理解 cooking creator 的真实痛点。Co-founder 周野之前在某 AI lab 做视频生成模型。这个组合让 Skillet 既能问对的问题，又能调对的模型。

### 早期是工具，长期可能延展成 vertical creator community

Skillet 的现在是工具——降低 cooking 视频创作门槛。但因为用户的创作和内容会沉淀在平台上，长期有机会延展成一个 cooking creator 的 community 和分发平台。

---

## 1. 项目摘要

Skillet 是一个面向 Gen Z home cooks 的 AI native 短视频烹饪创作工具——用户描述自己做了什么 + 拍几张图，AI 就能生成一条 polished 的 30 秒短视频，可以直接发到 TikTok 或 Instagram。

它要解决的不是"如何让美食媒体公司更高效产出内容"，而是"如何让没有剪辑能力的普通家庭厨师也能定期、轻松地分享自己做的菜"。Skillet 的判断是 AI 视频生成已经够好，但**通用工具不懂烹饪**——只有专门 model 了 recipe 结构、烹饪动作、食物视觉这三件事，最终视频才真的可发。

**这里建议补充**：压缩一句可以放在 BP 封面的 tagline，比如 "AI cooking creator's first tool"。需要团队确认，避免被误读成"自动化食谱网站"或"Sora for food"。

---

## 2. 用户、痛点与现有替代

Skillet 的核心用户是 18-28 岁的 Gen Z home cooks，他们有内容创作意愿、有手机、经常做饭，但被剪辑门槛挡住。

今天这类用户会在 CapCut + TikTok / Instagram 原生编辑器 / 通用 AI 视频工具之间挣扎。CapCut 学习曲线最低但仍然要花一个多小时，原生编辑器更弱，通用 AI 视频工具不懂菜——切菜动作错、plating 不像真食物、字幕里把"焯水"写成"烫菜"。结果是这类用户拍了很多素材，但实际发出去的内容远低于他们想发的。

痛点可以拆成三层：

- 第一层，剪辑能力门槛。
- 第二层，做出来的视频"不像别人发的那种"，自己不满意所以不发。
- 第三层，节奏不稳定——做菜频次和发内容频次完全脱钩，因为每次发都要重新进入一个 60-180 分钟的剪辑工程。

**这里建议补充**：需要真实用户故事。一个具体的 Gen Z home cook（叫什么、几岁、住哪、TikTok 多少粉、想做什么菜、卡在哪一步）。

---

## 3. 产品方案与核心流程

Skillet 的产品方案是把视频创作流程拆成两段——用户负责输入意图和实拍素材（食材照片、最终成品照片、一段语音描述），AI 负责生成可发的 30 秒短视频。

用户流程：

1. 用户用语音或文字描述刚做了什么（"今天试了韩式辣白菜炒饭，加了培根"）。
2. 拍 2-3 张关键照片（食材、过程、成品）。
3. AI 解析 recipe 结构，调用 cooking-specific 视频模型生成切菜、翻炒等动作镜头，组合用户的实拍照片。
4. 用户在 timeline 里调整顺序 / 文案 / 字幕 / 音乐。
5. 一键发到 TikTok / Instagram / YouTube Shorts。

关键判断是：AI 不替用户拍菜，AI 替用户做"那些用户不愿意做也做不好的事"（剪辑节奏、过程动画补全、字幕、转场、音乐）。用户的语音、人脸、最终成品照片仍然保留——这是让内容感觉真实的关键。

**这里建议补充**：缺一组完整 demo——从一个用户的输入到生成的视频到发布后数据。

---

## 4. AI 与关键技术杠杆

AI 在 Skillet 中不是辅助，而是产品成立的核心——没有 AI，整个流程不存在。

技术杠杆来自三个 vertical 模块的组合：

- **Recipe Parser**：从用户的自然语言描述里抽取出可执行的 recipe 结构（食材、步骤、技法）。
- **Cooking Action Model**：专门为烹饪动作（切、炒、煮、烤、plating）训练的视频生成模型，生成的镜头要符合真实物理。
- **Creator Voice Model**：保留用户自己的声音做旁白和字幕，让内容感觉个人化。

壁垒在于 vertical 数据 + 工作流。通用大模型能做出一段"看起来像在做菜"的视频，但是否能让一个真实的 cooking creator 满意到愿意发到自己账号，差距是天和地。

**这里建议补充**：投资人会问"OpenAI 明天发了支持烹饪的 Sora 你们怎么办"。需要明确：vertical 数据（哪里来、是否专有）、creator workflow（怎么变成习惯）、分发关系（是否形成网络）三个层面的具体答案。

---

## 5. 为什么现在

Skillet 的 why now 来自三件事：AI 视频生成质量、vertical AI agent 范式、Gen Z 内容创作行为。

过去 AI 视频工具不能服务真实创作场景，主要是质量问题——一段生成的炒菜视频常有第六根手指、刀切到锅边外面。最近一年视频生成模型的质量和可控性大幅提升，第一次让 vertical 应用变得可行。

与此同时 vertical AI agent 在很多领域被验证（Cursor 之于 coding、Harvey 之于法律），创作者开始接受"为我这个具体场景设计的 AI 工具"这个心智，而不是再去用通用工具。Gen Z home cooks 是 TikTok 上增长最快的创作者群体之一——只是工具滞后于意愿。

**这里建议补充**：需要更明确的"今天比一年前可行"的硬证据——视频模型 benchmark、生成质量 / 控制性的具体指标、Gen Z 烹饪内容在 TikTok 的增长数据。

---

## 6. 市场规模与切入口

Skillet 的市场不应该从"全球短视频市场"开始讲，而要从"想做内容但被剪辑挡住的家庭厨师"切入。

市场三层：

- 初始切入口：北美 18-28 岁、TikTok / Instagram 活跃、家中常做饭、拍过但发布频次低于做菜频次的人群。
- 可扩展人群：所有想分享自己做的菜但不会剪辑的人，包括 30+ 的家庭厨师、社区里的 home chef。
- 长期市场：vertical creator AI tools + creator community，最终可能扩展到 cooking 以外的 lifestyle vertical（baking、coffee、cocktails）。

**这里建议补充**：缺 bottom-up 测算——北美 Gen Z 中常做饭的比例 × 想在社媒分享的比例 × 当前因剪辑门槛放弃的比例 × ARPU 假设。

---

## 7. 竞争格局与替代方案

竞争不只来自直接竞品，更多来自用户今天已经在用的替代路径。

四类竞争：

- **手动剪辑工具（CapCut / 原生 TikTok 编辑器）**：用户基础大，但学习曲线高、单条视频时间成本高。
- **通用 AI 视频工具（Runway / Sora 等）**：能生成，但不懂菜——结果不可发。
- **专业食谱内容平台（Bon Appetit / NYT Cooking）**：是 PGC 内容平台，不是创作工具。
- **传统美食 KOL 工作流（拍摄 + 剪辑外包）**：解决质量但成本太高，普通家庭厨师不可及。

关键问题是：通用 AI 视频工具公司（背后是大模型平台）为什么不会直接做掉 Skillet？答案要落到 vertical 数据 + cooking creator workflow + 分发关系三层，而不只是"我们更专注"。

**这里建议补充**：建议列 3-5 个直接竞品 + 2-3 个替代方案，每个具体说明它们做了什么、缺什么、Skillet 凭什么切进去。

---

## 8. 核心壁垒与可投理由

Skillet 的可投性来自 vertical AI 工具 + creator workflow + 数据闭环可能形成的复合循环。

如果只是一个 AI 视频工具，壁垒会很薄；但如果它能让用户持续在 Skillet 里创作、修改、调整，平台积累的 cooking 视频生成数据 + 用户偏好 + 修改信号会让模型越做越对，形成数据闭环。

可投理由：

- 真实需求 — Gen Z home cooks 想发但被剪辑挡住，是被现有工具忽视的真实场景。
- 技术窗口 — AI 视频生成质量刚刚跨过 vertical 应用的门槛。
- 团队匹配 — 内容 + AI 真正的交叉团队。
- 飞轮想象力 — 创作工具带来内容，内容带来数据，数据反哺模型和模板。

**这里建议补充**：防守逻辑还不够强。面对大模型平台 / 通用 AI 视频工具 / 资本充足的新进入者，Skillet 的不可替代性需要拆得更具体。

---

## 9. 验证、数据与 GTM

Skillet 在 closed beta 阶段，已经有一些早期信号：约 200 个 pilot creators 在用，早期发到 TikTok 的视频平均播放量在生成前的 3 倍左右（团队 self-reported，需要更多 sample）；creator 反馈里高频出现 "saves me 2 hours"。这些信号说明方向有吸引力，但还不足以证明留存和长期使用。

GTM 围绕 "cooking creator 小圈层密度" 展开——不一开始追泛流量，而是在 Discord 和 Reddit 上的 cooking creator 社区里找到种子用户，再通过 KOL 合作扩散到中级 cooking creator 群体。冷启核心指标是"用户每周用 Skillet 发布的视频数量"。

**这里建议补充**：内测数据需要更稳——D1/D7/D30 留存、发布率、平均生成时间、用户付费意愿。

---

## 10. 团队与 Founder-Market Fit

Skillet 的团队优势在于内容侧和 AI 侧的真正交叉。

创始人林晚之前在 Spoonful Media 做内容总监 5 年，跑过订阅 50 万的 cooking newsletter，深度理解 cooking creator 的真实痛点和工作流。Co-founder 周野之前在某 AI lab 做视频生成模型，做过短视频自动剪辑系统。团队中也有来自 YouTube creator tools 和 vertical AI 公司背景的工程师。

Founder-Market Fit 里值得强调的是林晚的内容侧 native——这不是"做了用户访谈"的二手理解，而是长期身处 cooking creator 生态的一手判断。

团队短板需要诚实呈现：没有 SaaS 商业化经验、没人深度服务过 creator economy（YouTube/TikTok creator ops）、现 CTO 偏视频生成不偏分发推荐。

**这里建议补充**：团队对短板的招聘计划 + 下一阶段融资中这块的预算占比。

---

## 11. 商业模式、融资与里程碑

Skillet 的商业化方向围绕 freemium + creator economy 展开——基础免费、高质量视频或高级模板付费、长期可以做 creator 之间的内容分成。现阶段团队的判断是先把留存和发布率打磨到位，商业化排在后面。

潜在商业模式：

- Freemium 订阅 — 基础生成免费，高质量 / 高级模板 / 优先生成付费。
- Creator economy revshare — 长期通过创作者之间的内容传播形成分成。
- Sponsored templates — 食品品牌的赞助模板。

下一阶段里程碑：产品（核心生成质量稳定）/ 用户（验证发布率和留存）/ 内容（形成可持续创作者供给）/ 商业（验证付费意愿）。

**这里建议补充**：融资金额、runway、资金用途分配、下一轮融资前必须证明的关键假设；以及商业化具体 trigger 条件。

---

## 12. 愿景与终局

如果 Skillet 做成，它可能不是一个 cooking 视频生成工具，而是一个 vertical creator 平台——把"想表达但被工具挡住"的人解放出来。

长期愿景：未来每一个家庭厨师都可以像现在的专业美食 KOL 一样定期产出内容，cooking 内容从少数专业人士的领域变成普通家庭厨师日常分享的内容形态。从 cooking 扩展到 baking、coffee、cocktails 等 lifestyle vertical 是自然的延展路径。

终局判断：让每一个想分享自己生活的人都不再被工具挡住。

**这里建议补充**：3-5 年后平台具体长什么样——DAU、创作者比例、内容供给、分发结构、收入结构。
