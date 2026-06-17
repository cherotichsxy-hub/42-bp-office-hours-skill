# Slide Spec 样例 — Skillet（虚构案例）

> **Fictional company — for illustration only.**
> Skillet 是为了展示 BP Office Hours 输出格式而虚构的公司。所有公司名、人名、产品名、数据、判断都是虚构。
>
> 生成新 Slide Spec 时，参照它的字段使用方式、可投性判断粒度，以及 `must_include` / `evidence` / `must_not_invent` / `asset_placeholders` 的边界。
>
> **下游 renderer 注意**：所有出现在 PPT 上的文字（page_title、core_sentence、must_include）必须逐字搬运。图表 / 配色 / 插画 / 视觉形态可以自由发挥，但**文字不能改写、扩写、概括或自己补**。详见 `references/05-slide-spec.md` 的"对下游 Renderer 的硬约束"。

---

## Slide 1. 项目摘要

**page_title**: AI 厨房创作助手

**core_sentence**: Skillet 让 Gen Z home cook 描述 + 拍几张图，AI 生成可发的 30 秒短视频。

**must_include**:
- 一句话定位：AI native 短视频烹饪创作工具，面向 Gen Z home cooks。
- 核心体验：语音 / 文字描述 + 实拍照片 → AI 生成 30 秒短视频。
- 核心判断：通用 AI 视频工具不懂菜，需要 vertical AI agent。

**evidence**:
- user_answer: Q3 (项目定义)、Q7 (产品方案)。
- synthesis: vertical AI agent 定位是综合判断。

**must_not_invent**:
- 具体融资轮次、估值、投资人名。
- 用户数、DAU、注册数。

**visual_form**: 三栏摘要

**layout_intent**: 左侧 core_sentence 大字号占主视觉，右侧产品 demo 占位。下方三个关键词卡片（AI Cooking / Short Video / Creator-first）字号小，作为辅助。

**asset_placeholders**:
- 产品首页 / 生成中界面 / 一条已发到 TikTok 的视频截图。

**improvement_notes**: 缺一句可放在封面的 tagline，比如 "AI cooking creator's first tool"。

---

## Slide 2. 用户、痛点与现有替代

**page_title**: 想发但被剪辑挡住

**core_sentence**: Gen Z home cook 想发自己做的菜，但视频剪辑挡在前面，做菜频次和发布频次脱钩。

**must_include**:
- 核心用户：18-28 岁、TikTok / Instagram 活跃、家中常做饭、拍过素材但发布频次远低于做菜频次的人群。
- 四类替代对比：CapCut + 原生 TikTok 编辑器（学习曲线高、单条 60-180 分钟）/ 通用 AI 视频工具（不懂菜，输出不可发）/ 专业食谱平台 Bon Appetit 等（PGC 内容平台，不是创作工具）/ 外包剪辑（成本太高，普通家庭厨师不可及）。
- 痛点三层：剪辑能力门槛 / 做出来"不像别人发的那种" / 发布节奏不稳定。

**evidence**:
- user_answer: Q4 (核心用户)、Q5 (痛点)、Q6 (现有方案)。
- synthesis: 四类替代是综合判断。

**must_not_invent**:
- 用户姓名 / 职业 / 引用句。
- 痛点的量化数据。

**visual_form**: 对比矩阵

**layout_intent**: 上方一行标题 + core_sentence。中部 4 行 × 3 列对比表格（替代选择 / 解决了什么 / 仍然缺什么）。右下高亮框总结 Skillet 的切入。

**asset_placeholders**:
- 1-2 条真实用户访谈引用句（带姓名 / 年龄 / 城市）。

**improvement_notes**: 缺真实用户故事——一个具体的 Gen Z home cook 想发什么、卡在哪、Skillet 帮他解决了什么。

---

## Slide 3. 产品方案与核心流程

**page_title**: 用户给意图，AI 给视频

**core_sentence**: AI 不替用户拍菜，AI 替用户做"用户不愿意做也做不好的事"——剪辑节奏、过程动画、字幕、转场。

**must_include**:
- 五步用户流程：语音 / 文字描述 → 拍 2-3 张关键照片 → AI 解析 recipe 调用 cooking-specific 视频模型 → timeline 调整 → 一键发到 TikTok / Instagram / YouTube Shorts。
- 核心判断：用户的语音、人脸、最终成品照片保留——这是让内容感觉真实的关键。
- AI 与人的分工：AI 做剪辑节奏 / 过程动画 / 字幕 / 转场 / 音乐；用户保留语音 / 人脸 / 实拍照片 / 调整权。

**evidence**:
- user_answer: Q7 (方案细节)。

**must_not_invent**:
- 未实现的功能或未发布的能力。
- 不存在的产品截图。

**visual_form**: 3-5 步流程图

**layout_intent**: 横向五步流程图，每步配简单图标。最后一步连接到右下小区域展示一条 sample 视频缩略图。

**asset_placeholders**:
- 每步对应的产品截图（5 张），最好来自同一个用户案例。
- 一条由 Skillet 生成、已发到 TikTok 的视频缩略图。

**improvement_notes**: 缺完整 demo——从输入到生成到发布数据的完整路径。

---

## Slide 4. AI 与关键技术杠杆

**page_title**: Vertical AI agent for cooking

**core_sentence**: 通用模型不懂菜，Skillet 专门 model 了 recipe 结构、烹饪动作、食物视觉。

**must_include**:
- 三层 vertical 模块：Recipe Parser（从自然语言抽取 recipe 结构）/ Cooking Action Model（烹饪动作视频生成）/ Creator Voice Model（保留用户语音做旁白）。
- 技术差异化定位：壁垒不是更大的模型，是更对的数据和工作流。
- 通用模型的问题：第六根手指、刀切到锅外、plating 不像真食物。

**evidence**:
- user_answer: Q11 (AI 作用)、Q13 (壁垒)。
- synthesis: 三层模块是综合判断。

**must_not_invent**:
- 模型参数（如具体 B 数）。
- 训练数据规模、训练方法（SFT / RL）。
- 引擎的具体技术指标。
- 与竞品的具体性能对比数字。

**visual_form**: 架构分层图

**layout_intent**: 三层水平堆叠：上层 Creator Voice，中层 Cooking Action，下层 Recipe Parser。右侧留一栏 "通用模型 vs Skillet" 的简短对比。

**asset_placeholders**:
- 两个对比视频截图：通用模型生成 vs Skillet 生成。

**improvement_notes**: 投资人会问"OpenAI / 大模型平台发同类能力你怎么办"。需要 Founder 补：vertical 数据从哪来 / creator workflow 如何形成习惯 / 是否有分发关系网络。

---

## Slide 5. 为什么现在

**page_title**: 三件事同时到位

**core_sentence**: AI 视频质量跨过门槛 × vertical AI agent 范式被验证 × Gen Z 烹饪创作意愿。

**must_include**:
- 催化剂 1：AI 视频生成模型质量和可控性在过去一年大幅提升，第一次让 vertical 应用可行。
- 催化剂 2：vertical AI agent 范式在 coding（Cursor）和 法律（Harvey）被验证，creator 开始接受"为我这个场景设计的 AI 工具"心智。
- 催化剂 3：Gen Z home cooks 是 TikTok 上增长最快的创作者群体之一，但工具滞后于意愿。
- 反向论证：一年前不行，视频生成质量太差。

**evidence**:
- user_answer: Q10 (Why now)。
- synthesis: 三件事叠加是综合判断。

**must_not_invent**:
- 具体年份事件（除非材料给过）。
- 视频生成模型能力指标的具体数字。
- TikTok 上 cooking 内容的具体增长数据。

**visual_form**: 催化剂汇合图

**layout_intent**: 三条催化剂从三个方向收束到中心 "Skillet 机会窗口"。每条催化剂一句话标注。

**asset_placeholders**:
- 视频生成模型能力曲线（如有公开 benchmark 可用）。

**improvement_notes**: "今天比一年前可行"还需要更硬证据——视频模型 benchmark / Gen Z 烹饪内容在 TikTok 的增长数据 / vertical AI agent 在其他领域的成功案例。

---

## Slide 6. 市场规模与切入口

**page_title**: 从小切入口往外推

**core_sentence**: 从想发但被剪辑挡住的 Gen Z home cook 切入，扩展到所有 lifestyle vertical。

**must_include**:
- 初始切入口：北美 18-28 岁、TikTok / Instagram 活跃、家中常做饭、拍过素材但发布频次远低于做菜频次。
- 可扩展人群：所有想分享自己做的菜但不会剪辑的人，包括 30+ 家庭厨师。
- 长期市场：vertical creator AI tools + creator community，可扩展到 baking / coffee / cocktails 等 lifestyle vertical。

**evidence**:
- user_answer: Q8 (市场)、Q9 (切入)。
- synthesis: 三层市场结构是综合判断。

**must_not_invent**:
- TAM / SAM / SOM 具体数额。
- 北美 Gen Z 人数、TikTok 用户重合度、ARPU。

**visual_form**: wedge funnel

**layout_intent**: 三层漏斗，最窄端在上、最宽端在下。每层左侧标人群定义，右侧留数字空位。

**asset_placeholders**:
- 三层规模数字（待 Founder 补 bottom-up 测算）。

**improvement_notes**: 缺 bottom-up 测算——北美 Gen Z 常做饭比例 × 想在社媒分享比例 × 当前因剪辑放弃比例 × 付费意愿。

---

## Slide 7. 竞争格局与替代方案

**page_title**: AI + cooking 的交叉空位

**core_sentence**: 同时做 vertical AI + cooking creator workflow，不是通用工具也不是 PGC 内容平台。

**must_include**:
- 表格四类竞争：手动剪辑工具（CapCut / 原生 TikTok 编辑器）/ 通用 AI 视频工具（Runway / Sora 等）/ 专业食谱平台（Bon Appetit / NYT Cooking 等）/ 外包剪辑工作流。
- 每类的强项和缺口。
- 2×2 矩阵：横轴 "懂烹饪程度"、纵轴 "创作便利程度"，Skillet 在右上象限。

**evidence**:
- user_answer: Q12 (竞争)。
- synthesis: 四类分法是综合判断。

**must_not_invent**:
- 竞品的具体融资、用户数、收入。
- 竞品具体功能对比（除非用户明确讲过或公开可查且标注来源）。
- 不要把 Skillet 画到"所有维度都最好"。

**visual_form**: 2x2 矩阵

**layout_intent**: 整页主图是 2x2 矩阵。竞品按真实情况放在四象限。Skillet 用主色高亮放在右上。下方一行小字说明两个坐标轴含义。

**asset_placeholders**:
- 竞品 logo（CapCut / Runway / Bon Appetit 等）。

**improvement_notes**: 建议 Founder 列 3-5 个直接竞品 + 2-3 个替代方案，逐一说明它们做什么、缺什么、Skillet 凭什么切进去。

---

## Slide 8. 核心壁垒与可投理由

**page_title**: vertical 数据 + workflow + 飞轮

**core_sentence**: vertical AI 工具带数据，数据反哺模型，模型让 creator 形成习惯。

**must_include**:
- 飞轮节点：Creator Input → Cooking Video Output → Creator Adjustment → Vertical Data → Better Model → Better Output。
- 四条可投理由：真实需求 / 技术窗口 / 内容+AI 真交叉的团队 / 飞轮想象力。
- 隐性壁垒：cooking creator 一旦把 Skillet 嵌入工作流，迁移成本高（语音 model、模板偏好、内容历史）。

**evidence**:
- user_answer: Q13 (壁垒)、Q1 (团队)。
- synthesis: 飞轮逻辑是综合判断。

**must_not_invent**:
- 数据闭环的具体规模。
- 网络效应的具体证据。
- 飞轮各节点的转化率。

**visual_form**: 飞轮 + 右侧可投理由卡片

**layout_intent**: 圆形飞轮居中，六节点等间距，箭头顺时针。右侧四张可投理由卡片，每条一句话。

**asset_placeholders**:
- 一条真实 creator 长期使用案例（如某 KOL 连续 30 天用 Skillet 发视频的播放量曲线）。

**improvement_notes**: 防守逻辑还不够强。面对大模型平台 / 通用 AI 视频工具 / 资本充足的新进入者，Skillet 不可替代性需要拆得更具体。

---

## Slide 9. 验证、数据与 GTM

**page_title**: 早期信号在，下一步证留存

**core_sentence**: closed beta 信号已有，下一步要证用户每周用 Skillet 发布的视频数量。

**must_include**:
- 已有信号：约 200 个 pilot creators 在用；早期发到 TikTok 的视频平均播放量是生成前的 3 倍（self-reported，sample 较小）；creator 反馈高频出现 "saves me 2 hours"。
- 冷启核心指标：用户每周用 Skillet 发布的视频数量（不是注册数）。
- 下一步关键指标：D1 / D7 / D30 留存、发布率、平均生成时间、付费转化、creator 满意度。
- GTM 路径：cooking creator Discord / Reddit 种子用户 → 中级 cooking KOL 合作 → 泛流量。

**evidence**:
- user_answer: Q14 (验证)、Q15 (GTM)。
- synthesis: GTM 路径是综合判断。

**must_not_invent**:
- 具体留存数字（D1 / D7 / D30）。
- 付费转化率、平均生成时间。
- 用户数（除 200 个 pilot 这个 Founder 提到的数字以外）。

**visual_form**: KPI dashboard + GTM path（左右分栏）

**layout_intent**: 左半页 KPI dashboard，6 个指标卡片 2×3 排列（已有信号填上，待证指标用占位）。右半页 GTM path：Discord seed → KOL → broader creators。中部上方一行 "冷启核心指标：用户每周发布视频数量"。

**asset_placeholders**:
- 真实测试数据填入 KPI dashboard 卡片。
- creator 在 Discord 上的反馈截图（去识别处理）。

**improvement_notes**: 需要把 "用户每周发布视频数量" 这个核心指标拆得更具体——发到几个算 PMF 信号？

---

## Slide 10. 团队与 Founder-Market Fit

**page_title**: 内容 native + AI 工程的真交叉

**core_sentence**: 林晚 5 年 cooking content native，周野 video model 出身，是 cooking creator 真痛点 + AI 真能力的交叉团队。

**must_include**:
- 创始人林晚：Spoonful Media 内容总监 5 年，跑过订阅 50 万的 cooking newsletter，深度理解 cooking creator 痛点。
- Co-founder 周野：某 AI lab 视频生成模型 + 短视频自动剪辑系统背景。
- 团队组成：内容 / AI / creator tools 三块覆盖。
- 团队短板（诚实呈现）：没有 SaaS 商业化经验 / 没人深度服务过 creator economy / 现 CTO 偏视频生成不偏分发推荐。

**evidence**:
- user_answer: Q1 (团队)、Q2 (动机)、Q1 P0 (团队短板)。

**must_not_invent**:
- 团队成员未提过的履历或公司名。
- 未确认的 shipped 产品名。
- 未提到的 advisor 名单。
- 团队成员具体头衔、职级或晋升路径（除已提到的内容总监等以外）。

**visual_form**: 团队能力矩阵 + 短板诚实卡

**layout_intent**: 上方一行 page_title + core_sentence。中部 3 列能力矩阵（团队能力 / 相关经历 / 与 Skillet 的关系）。右侧创始人头像 + 关键履历卡片。底部一行"目前需要补的能力"小卡片。

**asset_placeholders**:
- 创始团队照片。
- 团队短板对应的招聘计划。

**improvement_notes**: 团队对短板的招聘计划要写出来，下一阶段融资里这块预算占比也要明确。

---

## Slide 11. 商业模式、融资与里程碑

**page_title**: 先证留存与发布率，再谈商业化

**core_sentence**: Freemium 起步，creator economy 长期，商业化排在留存验证之后。

**must_include**:
- 商业模式三块：Freemium 订阅 / Creator economy revshare / Sponsored templates。
- 当前阶段优先级：先把留存和发布率打磨到位，商业化排在后面。
- 下一阶段里程碑：产品（核心生成质量稳定）/ 用户（验证发布率和留存）/ 内容（形成可持续创作者供给）/ 商业（验证付费意愿）。

**evidence**:
- user_answer: Q16 (商业模式)、Q17 (融资)。
- synthesis: 里程碑结构是综合判断。

**must_not_invent**:
- 融资金额、估值。
- 资金用途百分比分配。
- Runway 月数。
- ARR / MRR 数字假设。
- 订阅定价或 ARPU。

**visual_form**: 商业模式卡片 + Milestone 时间线（左右分栏）

**layout_intent**: 左半页三张商业模式卡片 + 一行 Founder 关于商业化 timing 的判断。右半页 12 个月 Milestone 时间线，四个方向各 1-2 个里程碑节点。融资金额、用途、runway 区域用占位。

**asset_placeholders**:
- 融资金额、用途分配、runway、关键里程碑的具体数字。

**improvement_notes**: 商业化具体 trigger 条件需要明确——发布率到多少 / 留存稳定到什么水平再开启 freemium 付费。融资 Ask 完全待补充。

---

## Slide 12. 愿景与终局

**page_title**: 让创作不再被工具挡住

**core_sentence**: 每一个想分享自己生活的人，都不再被工具挡住——cooking 只是起点。

**must_include**:
- 三阶段愿景：Today（家庭厨师拍了不发 / 发了不满意）→ 近期（用 Skillet 让 cooking 创作变成习惯）→ 长期（lifestyle vertical creator 平台，覆盖 baking / coffee / cocktails 等）。
- 终局判断：让 cooking 内容从少数专业人士的领域，变成普通家庭厨师日常分享的内容形态。

**evidence**:
- user_answer: Q18 (终局)。
- synthesis: 三阶段叙事是综合判断。

**must_not_invent**:
- 长期 DAU / MAU / 收入预测的具体数字。
- 长期生态参与者名单。
- 具体扩展时间点（什么时候做 baking 等）。

**visual_form**: Transformation timeline

**layout_intent**: 三阶段水平时间线。每阶段一个简洁场景图标 + 一句话描述。最右侧愿景区放置概念图占位。整体风格更克制，留白多。

**asset_placeholders**:
- 未来产品愿景图（可用抽象概念插画）。

**improvement_notes**: 3-5 年后平台具体长什么样——DAU、创作者比例、内容供给、分发结构、收入结构。
