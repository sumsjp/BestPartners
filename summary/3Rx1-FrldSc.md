好的，以下是对您提供的文稿进行的整理：

**标题：DragGAN：AI修图神器，PS已死？**

**开场：**

大家好，这里是最佳拍档。我是大飞。今天给大家分享一个最近在国内外社交媒体上爆火的视频，关键词搜索在B站排名第一，微博推特也热度极高。网友们纷纷惊呼“PS已死”！

**事件：**

这款AI修图工具只需轻轻点击两下，AI就能彻底理解你的想法，轻松实现各种修图效果：

*   **动物：** 竖起狗的耳朵、让狗从站立到蹲下、让马叉开腿跑步。只需设置起始点和结束点，拖拽一下即可。
*   **非生物：** 一键拉升汽车底座，升级成加长豪华车。
*   **更精准的控制：** 画个圈，给指定区域涂白，就能让狗转头，让小姐姐眨眼，甚至让闭嘴的狮子自动生成牙齿。
    （完整的演示视频将在结尾呈现）

**技术：**

*   这款修图神器名为 DragGAN，由 MIT、谷歌、马克思普朗克计算机科学研究所等机构联手打造。
*   相关论文已入选 SIGGRAPH 2023。
*   在扩散模型盛行的时代，DragGAN 将 GAN 玩出了新花样，Github 上已有 5600+ star，热度持续上涨（但代码预计要6月之后才开源）。
*   DragGAN 本质上是为各种 GAN 开发的一种交互式图像操作方法，以 StyleGAN2 的架构为基础，通过点点鼠标、拽一拽关键点实现 P 图效果。

**DragGAN 的原理：**

1.  **设置控制点和目标点：** 给定 StyleGAN2 生成的图片，用户设置几个控制点（红点）和目标点（蓝点），圈出要移动的区域。
2.  **迭代执行运动监督和点跟踪：**
    *   **运动监督：** 驱动红色控制点向蓝色目标点移动。核心是生成器的中间特征具有很强的鉴别能力，通过生成器特征图上的偏移补丁损失（shifted patch loss）实现。
    *   **点跟踪：** 更新控制点，跟踪图像中的被修改对象。通过最近邻检索在相同的特征空间上进行点跟踪，避免了光流估计模型或粒子视频方法带来的效率和误差问题。

**DragGAN 的优势：**

*   **精准控制像素位置：** 操作不同类别的对象，完成姿势、形状、布局等方面的变形。
*   **效果逼真：** 变形在 GAN 学习的图像流形上进行，遵循底层目标结构，即使有遮挡也能产生逼真的输出。
*   **算力需求低：** 单张 RTX 3090 GPU 在几秒钟内即可完成每一步拖拽修图。
*   **效果超越同类模型：** 胜过 RAFT 和 PIPs 等模型。
*   **可扩展性：** 增加关键点的数量可以实现更精细的 AI 修图效果，甚至适用于人脸。
*   **适用性广：** 适用于人物、动物、汽车、细胞、风景和天气等多种类型图像。能实现站立到坐姿、直立到跑步等姿势变动较大的图像修改。

**DragGAN 的局限性：**

*   基于 StyleGAN2 生成图片 P 图，而 StyleGAN2 训练成本高。
*   修图速度快主要基于 265\*265 分辨率的图片，模型是否能扩展到更高分辨率，效果如何未知。

**总结：**

DragGAN 是一款潜力巨大的 AI 修图工具，效果惊艳。实际效果如何，有待 6 月份代码开源后进一步验证。

**团队：**

DragGAN 团队成员来自马克思普朗克计算机科学研究所、萨尔布吕肯视觉计算交互与 AI 研究中心、MIT、宾夕法尼亚大学以及谷歌的 AR VR 部门。包括两位华人作者：

*   **潘新钢：** 本科毕业于清华大学，博士毕业于香港中文大学，现为马普计算机科学研究所博士后，即将进入南洋理工大学担任助理教授。
*   **Liu Lingjie：** 香港大学博士毕业，马普信息学研究所博士后，现为宾夕法尼亚大学助理教授，领导该校的计算机图形实验室。

潘新钢亲自上阵演示了 DragGAN 的生发、瘦脸和露齿笑效果，展示模型的可控性。

**结尾：**

观看完整的 demo 视频。感谢观看，欢迎订阅我们的频道，下期再见！

**改进说明：**

*   **精简冗余信息：** 删除了口语化的表达，使内容更简洁。
*   **结构化呈现：** 使用了标题、小标题、列表等方式，使内容更清晰易读。
*   **突出关键信息：** 使用加粗字体强调重点。
*   **整合信息：** 将一些分散的信息整合到更合适的段落中。
*   **修正语言：** 修正了部分语句，使表达更流畅自然。
*   **润色开头和结尾：** 使开头更吸引人，结尾更简洁有力。

希望这个整理版本对您有所帮助！

[model=gemini-2.0-flash,0]
