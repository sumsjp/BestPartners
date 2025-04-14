<details>
<summary>500. [2024-12-19] 【人工智能】Ilya预言预训练时代将终结 | NeurIPS 2024演讲 | 深度学习假设 | LSTM | Scaling Laws | 联结主义 | 预训练时代 | 数据耗尽 | 超级智能</summary><br>

<a href="https://www.youtube.com/watch?v=-ioEYIRq2oc" target="_blank">
    <img src="https://img.youtube.com/vi/-ioEYIRq2oc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Ilya预言预训练时代将终结 | NeurIPS 2024演讲 | 深度学习假设 | LSTM | Scaling Laws | 联结主义 | 预训练时代 | 数据耗尽 | 超级智能

好的，以下是整理后的文稿，我主要做了以下几个方面的调整：

*   **精簡冗詞贅字：** 移除口語化的贅詞，使文稿更簡潔專業。
*   **段落重組：** 將內容更聚焦，讓文章更流暢易懂。
*   **強化關鍵字：** 對重要的概念和人名使用粗體，方便快速抓住重點。
*   **調整語氣：** 刪除過於口語化的語氣，使文稿更正式。
*   **統一稱謂：** 對於人名，儘量採用「姓名 (英文名)」的格式，方便對照。

**整理後的文稿：**

大家好，這裡是最佳拍檔。

在 NeurIPS 2024 頂會上，**伊利亞·蘇茨克維爾 (Ilya Sutskever)** 從 OpenAI 離開後首次公開演講，他宣告**預訓練時代結束**。他認為，數據如同化石燃料，難以再生，AI 未來的發展方向將是具備自我意識的**超級智能 (Superintelligence)**。

雖然演講時間不長，但其劃時代意義不容忽視。

11 月底，NeurIPS 2024 公布時間檢驗獎，伊利亞和 **GAN 之父伊恩·古德菲洛 (Ian Goodfellow)** 獲獎。伊利亞首先感謝了論文《利用神經網路進行序列到序列學習 (Sequence to Sequence Learning with Neural Networks)》的兩位合著者：**奧里奧爾·維尼亞爾斯 (Oriol Vinyals)** 和 **Quoc Le**，並展示了三人在 2014 年 NeurIPS 會議上的合照。

伊利亞回顧了 10 年前的演講 PPT，概括為以下三個要點：

1.  基於文本訓練的**自迴歸模型**。
2.  **大型神經網路**。
3.  使用**大規模數據集**。

當時他們提出了「**深度學習假設**」，即一個 10 層的大型神經網路可以在幾分之一秒內完成任何人類能做的事情。這個假設基於人工神經元和生物神經元相似的觀點。

伊利亞強調，如果自迴歸模型能足夠好地預測下一個 Token，它實際上會抓取、捕獲並掌握任何序列的真實分佈。他們嘗試了翻譯任務，並使用了 **LSTM** (當時深度學習研究者所使用的工具，可以看作是一個旋轉了 90 度的 ResNet) 。

伊利亞還強調，當時他們使用了**流水線並行化 (Pipelining)**，每層神經網路都分配一塊 GPU。

最終，伊利亞展示了 Scaling Laws 的開端：如果你有一個非常大的數據集，訓練一個非常大的神經網路，那麼是可以保證成功的。

伊利亞提到，**聯結主義 (Connectionism)** 也是深度學習的核心思想，即超大規模的神經網路並不需要達到人類大腦的級別，就可以完成幾乎所有人類能做的事。

伊利亞指出，**預訓練路線無疑會終結**。計算能力不斷增長，但數據量沒有增長，因為只有一個互聯網。數據是 AI 的化石燃料，如今已經達到數據峰值。

Ilya 給出了以下預測：

1.  智能體會有突破，**能自主完成任務的 AI 智能體**就是未來的發展方向。
2.  會有**模糊的合成數據**。
3.  **推理時計算**，最引人注目的例子就是 o1。

在預訓練之後，我們接下來該探索什麼？ Ilya 舉了一個來自生物學的例子，哺乳動物的身體大小與大腦大小之間的關係。

Ilya 談到 **超級智能 (Superintelligence)** 是目前公認的發展方向。超級智能與現在的 AI 完全不同，它將真正具備實際意義上的智能體特性，並且真正學會推理。由於推理會引入更多的複雜性，因此一個會推理的系統會變得越不可預測。自我意識也是有用的，它構成了我們自身的一部分。

Ilya 相信超級智能終將發生，至於這種系統可能會帶來的問題，就留給大家自己去想像了。

在問答環節，Ilya 回答了觀眾的幾個問題：

1.  **是否有其他屬於人類認知的生物結構值得去探索？** Ilya 覺得這取決於我們所看到的抽象層面。 受生物學啟發的 AI 已經非常成功了， 比如深度學習。
2.  **模型如果能進行自我的自動糾錯，那是否就意味著它能夠識別什麼時候出現了幻覺？** Ilya 給出了肯定的答覆，並指出模型會在某一天意識到幻覺的出現，也會獲得自我糾錯的能力。
3.  **大語言模型能否泛化超出分佈的多跳推理？** Ilya 反問什麼叫超出分佈的泛化？

總結來說，Ilya 曾經是暴力 Scaling 的早期倡導者，但現在可能已經有了新的想法。

對於 Ilya 的結論，業界也有其他大佬表示不同意。**谷歌大佬洛根·基爾帕特里克 (Logan Kilpatrick)** 發推文內涵 Ilya，說認為預訓練結束恐怕是因為缺乏想像力。**前 Meta 具身智能團隊的高級總監德魯夫·巴特拉 (Dhruv Batra)** 也表示 Ilya 錯了， 他認為人類的數據還沒有用完，只是用完了人類書寫的文本而已。

以上就是 Ilya 這次演講的主要內容。Ilya 認為，對於超級智能來說，只靠預訓練終究是不夠的。

您是如何看待 Ilya 的演講和結論呢？ 預訓練究竟是否會終結？ 歡迎在評論區留言。

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>499. [2024-12-18] 【商业】博通站上万亿美元市值 | AI ASIC市场超预期 | 安华高 | 陈福阳 | 并购整合 | FPGA | XPU+超高速互联 | GPU | 英伟达</summary><br>

<a href="https://www.youtube.com/watch?v=KRcYBaUIAcg" target="_blank">
    <img src="https://img.youtube.com/vi/KRcYBaUIAcg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】博通站上万亿美元市值 | AI ASIC市场超预期 | 安华高 | 陈福阳 | 并购整合 | FPGA | XPU+超高速互联 | GPU | 英伟达

好的，我將這篇文稿整理如下，使其更易讀、結構更清晰：

**最佳拍檔：博通市值破萬億美元背後的AI ASIC秘密**

**引言**

*   博通股價飆升，市值突破1.05萬億美元，成為全球第12家市值破萬億美元的公司。
*   本集探討博通市值快速增長的原因，以及其背後的關鍵因素：AI ASIC。

**博通的歷史與發展**

*   **前身：安華高（Avago）。**
    *   2015年，安華高以370億美元收購老博通，並沿用博通之名。
    *   安華高前身為惠普（HP）半導體部門，後經歷安捷倫科技（Agilent）和安華高科技（Avago）的轉變。
*   **關鍵人物：陳福陽（Hock Tan）。**
    *   以擅長賺錢和經營著稱，而非技術出身。
    *   戰略眼光獨到，在5G時代來臨前就收購英飛凌的5G濾波器BAW業務，獨霸高端BAW市場。
*   **併購擴張：**
    *   2009年：安華高科技成功在納斯達克上市
    *   2011-2015年：先後收購 Cyoptics、LSI、Emulex、PLX等公司。
    *   2015年：收購博通，增強在移動、數據中心和物聯網等領域的通信芯片行業地位。
    *   2017年：收購博科，鞏固在SAN交換機領域的領導地位。

**併購高通失敗與轉型**

*   2017年：試圖收購高通，但因安全原因和反壟斷審查受阻。
*   總部遷至美國。
*   轉向軟件領域，收購CA Technologies、賽門鐵克（後出售）、VMware。
*   成功轉型為從芯片到網絡、再到雲計算服務的多元化巨頭。

**博通的業務板塊**

*   半導體解決方案業務：營收約301億美元。
*   基礎設施軟件業務：營收約215億美元。
*   AI相關收入同比暴漲220%，達到122億美元。

**萬億美元市值的推動因素**

*   業績良好。
*   對2027年AI收入的極高預期，目標為600-900億美元的可服務目標市場。
*   市場對博通整合收購能力的信任。

**博通的整合能力**

*   保留核心團隊，避免過度干預業務。
*   果斷砍掉非核心、不盈利部門。
*   整合優化產品組合，形成具有競爭力的產品體系。
*   優化運營和財務，提高盈利能力，吸引資本。

**AI ASIC業務**

*   **ASIC（專用集成電路）的概念。**
    *   狹義競品：FPGA（現場可編程門陣列）。
    *   廣義競品：通用集成電路，如CPU等。
*   **FPGA的優勢與局限性。**
    *   優勢：靈活可部署，適用於小批量、多樣化的需求。
    *   局限性：性能有限，無法滿足高性能需求。
*   **ASIC與FPGA的商業競爭邏輯。**
    *   當需求上量或性能要求提高時，客戶會轉向研發高端ASIC。
*   **ASIC與通用處理器（GPU、GPGPU、CPU）的區別。**
    *   ASIC針對特定客戶的特定功能和任務開發，無法通用。
*   **谷歌與博通合作開發TPU案例。**
    *   原因：降低成本、擺脫對英偉達CUDA的依賴、滿足自身算法和模型的需求。
    *   模式：谷歌提出需求，博通協助開發並負責流片。
*   **其他公司（Meta、字節、騰訊、OpenAI）的潛在合作模式。**
*   **英偉達的優勢與挑戰。**
    *   優勢：GPU性能卓越、CUDA生態成熟、NV Link技術領先。
    *   挑戰：博通等公司在AI ASIC領域的崛起，可能導致客戶減少購買英偉達GPU。

**博通的競爭優勢**

*   協助客戶開發定制化AI ASIC芯片的經驗豐富。
*   在打通網絡軟硬件方面經驗豐富。
*   能夠提供類似NV Link + 邁洛思的方案，滿足客戶自研XPU + 超高速互聯集群服務器的需求。

**結論**

*   博通的萬億美元市值是對標英偉達的結果。
*   AI ASIC領域的崛起對英偉達構成挑戰。
*   客戶定制化的AI ASIC增速將超過GPU計算。
*   建議關注國外科技市場的AI ASIC領域和相關公司。

**聲明**

*   A股市場存在風險，請謹慎投資。

**結束語**

*   感謝大家的觀看，我們下期再見。

**整理說明:**

*   **標題化:** 將文稿分段落標題化，方便讀者快速抓取重點。
*   **重點突出:** 使用粗體字標記重要的概念、人名和公司名稱。
*   **簡潔語言:** 去除口語化的表達，使用更正式的書面用語。
*   **條列式呈現:** 使用條列式（Bullet Points）整理資訊，使內容更清晰易讀。
*   **邏輯架構:** 優化了信息的組織方式，使其更具邏輯性和連貫性。
*   **摘要:** 簡要概述每個部分的核心內容，方便快速瀏覽。

希望這個整理對您有幫助！

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>498. 【人工智能】o1 pro架构揭秘 | Semianalysis长文剖析推理训练架构 | Claude 3.5 Opus失败了么 | Scaling Laws或会持续 | 草莓训练 | token经济学</summary><br>

<a href="https://www.youtube.com/watch?v=EDzEwZTD55g" target="_blank">
    <img src="https://img.youtube.com/vi/EDzEwZTD55g/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】o1 pro架构揭秘 | Semianalysis长文剖析推理训练架构 | Claude 3.5 Opus失败了么 | Scaling Laws或会持续 | 草莓训练 | token经济学



---

</details>

<details>
<summary>497. 【Intel】英特尔董事会无能 | Semianlysis长文直指困局根源 | 成员缺乏行业经验 | 长期决策失误 | 文化腐烂 | 三任CEO不合格 | 帕特·基辛格 | 接班人 | 代工业务</summary><br>

<a href="https://www.youtube.com/watch?v=uZo3nEnlvbQ" target="_blank">
    <img src="https://img.youtube.com/vi/uZo3nEnlvbQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Intel】英特尔董事会无能 | Semianlysis长文直指困局根源 | 成员缺乏行业经验 | 长期决策失误 | 文化腐烂 | 三任CEO不合格 | 帕特·基辛格 | 接班人 | 代工业务



---

</details>

<details>
<summary>496. 【人工智能】Google发布Gemini 2.0 Flash | 性能大幅提升 | 原生多模态支持 | 支持搜索 | Project Astra | Project Mariner | Jules</summary><br>

<a href="https://www.youtube.com/watch?v=k9wixJMo6Sg" target="_blank">
    <img src="https://img.youtube.com/vi/k9wixJMo6Sg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Google发布Gemini 2.0 Flash | 性能大幅提升 | 原生多模态支持 | 支持搜索 | Project Astra | Project Mariner | Jules



---

</details>

<details>
<summary>495. 【量子计算】谷歌发布最新量子芯片Willow | 五分钟算完10亿亿亿年 | 量子纠错重大突破 | 105个量子比特 | 表面码 | RCS测试 | Sycamore芯片 | 平行宇宙理论</summary><br>

<a href="https://www.youtube.com/watch?v=wvVaA5eF8iY" target="_blank">
    <img src="https://img.youtube.com/vi/wvVaA5eF8iY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【量子计算】谷歌发布最新量子芯片Willow | 五分钟算完10亿亿亿年 | 量子纠错重大突破 | 105个量子比特 | 表面码 | RCS测试 | Sycamore芯片 | 平行宇宙理论



---

</details>

<details>
<summary>494. When AI becomes smarter than humans, what do we have left? | Yuval Noah Harari & Kaifu Lee</summary><br>

<a href="https://www.youtube.com/watch?v=CsHt9I6rExI" target="_blank">
    <img src="https://img.youtube.com/vi/CsHt9I6rExI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# When AI becomes smarter than humans, what do we have left? | Yuval Noah Harari & Kaifu Lee



---

</details>

<details>
<summary>493. 【Nvidia】中国正式对英伟达反垄断立案调查 | 2019年Mellanox并购案 | 多个国家发起诉讼 | NVLink私有协议 | 软硬件绑定 | 或面临60亿美元巨额罚款 | 强硬回复</summary><br>

<a href="https://www.youtube.com/watch?v=Vc04Shnoznk" target="_blank">
    <img src="https://img.youtube.com/vi/Vc04Shnoznk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Nvidia】中国正式对英伟达反垄断立案调查 | 2019年Mellanox并购案 | 多个国家发起诉讼 | NVLink私有协议 | 软硬件绑定 | 或面临60亿美元巨额罚款 | 强硬回复



---

</details>

<details>
<summary>492. 【人工智能】玻尔兹曼机 | 杰弗里·辛顿2024诺贝尔颁奖典礼演讲 | Hopfield 网络 | 隐藏神经元 | 随机神经元 | 全局最优解 | 热平衡 | 玻尔兹曼分布 | 受限玻尔兹曼机RBM</summary><br>

<a href="https://www.youtube.com/watch?v=ofGpjpwNAko" target="_blank">
    <img src="https://img.youtube.com/vi/ofGpjpwNAko/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】玻尔兹曼机 | 杰弗里·辛顿2024诺贝尔颁奖典礼演讲 | Hopfield 网络 | 隐藏神经元 | 随机神经元 | 全局最优解 | 热平衡 | 玻尔兹曼分布 | 受限玻尔兹曼机RBM



---

</details>

<details>
<summary>491. 【OpenAI】Sora正式发布 | OpenAI圣诞活动Day 3 | Sora Turbo | 1080P 20秒 | Re-cut | Remix | Blend | Loop | 系统卡</summary><br>

<a href="https://www.youtube.com/watch?v=mjy-XsRfNTw" target="_blank">
    <img src="https://img.youtube.com/vi/mjy-XsRfNTw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】Sora正式发布 | OpenAI圣诞活动Day 3 | Sora Turbo | 1080P 20秒 | Re-cut | Remix | Blend | Loop | 系统卡



---

</details>

<details>
<summary>490. 【人工智能】AI与数学的未来 | 陶哲轩与OpenAI对谈 | Terence Tao | 菲尔兹奖得主 | 工业级数学 | o1推理能力 | 数学合作分工 | AI的优势 | 数学美感 | 人机协作</summary><br>

<a href="https://www.youtube.com/watch?v=HWU6BATO_nA" target="_blank">
    <img src="https://img.youtube.com/vi/HWU6BATO_nA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI与数学的未来 | 陶哲轩与OpenAI对谈 | Terence Tao | 菲尔兹奖得主 | 工业级数学 | o1推理能力 | 数学合作分工 | AI的优势 | 数学美感 | 人机协作



---

</details>

<details>
<summary>489. 【OpenAI】强化微调ReFT | OpenAI圣诞活动Day 2 | 用强化学习技术进行微调 | o1-mini超过o1 | 评分器 | 预热和强化学习 | 取代SFT</summary><br>

<a href="https://www.youtube.com/watch?v=A6vuQ51Dggs" target="_blank">
    <img src="https://img.youtube.com/vi/A6vuQ51Dggs/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】强化微调ReFT | OpenAI圣诞活动Day 2 | 用强化学习技术进行微调 | o1-mini超过o1 | 评分器 | 预热和强化学习 | 取代SFT



---

</details>

<details>
<summary>488. Sora V2 宣传视频泄露，据传即将上线</summary><br>

<a href="https://www.youtube.com/watch?v=dDRWhKoeuSc" target="_blank">
    <img src="https://img.youtube.com/vi/dDRWhKoeuSc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Sora V2 宣传视频泄露，据传即将上线



---

</details>

<details>
<summary>487. 【人工智能】美五大科技巨头2025年预计需要1000万块H100等效算力 | Blackwell | 微软 | 谷歌 | Meta | Amazon | xAI | TPU | Trainium</summary><br>

<a href="https://www.youtube.com/watch?v=3bcmSQbPpjU" target="_blank">
    <img src="https://img.youtube.com/vi/3bcmSQbPpjU/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】美五大科技巨头2025年预计需要1000万块H100等效算力 | Blackwell | 微软 | 谷歌 | Meta | Amazon | xAI | TPU | Trainium



---

</details>

<details>
<summary>486. 【人工智能】World Labs发布最新3D世界生成模型 | 李飞飞 | 一张图片可生成交互式3D场景 | 相机控制 | 理解3D几何结构 | 可控性 | 一致性 | 空间智能 | 虚拟现实</summary><br>

<a href="https://www.youtube.com/watch?v=UFyousBeB_Q" target="_blank">
    <img src="https://img.youtube.com/vi/UFyousBeB_Q/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】World Labs发布最新3D世界生成模型 | 李飞飞 | 一张图片可生成交互式3D场景 | 相机控制 | 理解3D几何结构 | 可控性 | 一致性 | 空间智能 | 虚拟现实



---

</details>

<details>
<summary>485. 【OpenAI】正式版o1模型 + ChatGPT Pro | OpenAI圣诞活动Day 1 | 推理能力大幅提高 | 每月200美元 | o1 Pro模式 | 响应速度提升 | 49页系统卡</summary><br>

<a href="https://www.youtube.com/watch?v=dF9JqBE95-4" target="_blank">
    <img src="https://img.youtube.com/vi/dF9JqBE95-4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】正式版o1模型 + ChatGPT Pro | OpenAI圣诞活动Day 1 | 推理能力大幅提高 | 每月200美元 | o1 Pro模式 | 响应速度提升 | 49页系统卡



---

</details>

<details>
<summary>484. 【人工智能】字节跳动模型训练投毒实习生，斩获顶会最佳论文 | 田柯宇 | 恶意执行漏洞 | 起诉赔偿800万 | VAR视觉自回归 | NeurIPS接近满分最佳论文 | 图像生成领域重要意义</summary><br>

<a href="https://www.youtube.com/watch?v=-5v8Zwqr1Vk" target="_blank">
    <img src="https://img.youtube.com/vi/-5v8Zwqr1Vk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】字节跳动模型训练投毒实习生，斩获顶会最佳论文 | 田柯宇 | 恶意执行漏洞 | 起诉赔偿800万 | VAR视觉自回归 | NeurIPS接近满分最佳论文 | 图像生成领域重要意义



---

</details>

<details>
<summary>483. 【人工智能】什么是强化学习中的奖励黑客 | Reward Hacking | OpenAI前安全主管翁荔最新长文 | 奖励函数 | RLHF | 古德哈特定律 | ICRH | 缓释措施</summary><br>

<a href="https://www.youtube.com/watch?v=RwmJ1T72tP0" target="_blank">
    <img src="https://img.youtube.com/vi/RwmJ1T72tP0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】什么是强化学习中的奖励黑客 | Reward Hacking | OpenAI前安全主管翁荔最新长文 | 奖励函数 | RLHF | 古德哈特定律 | ICRH | 缓释措施



---

</details>

<details>
<summary>482. 【Intel】英特尔CEO帕特·基辛格辞职 | 四年努力终成空 | 两位副手接任 | 董事会不满 | 传奇经历 | IDM 2.0 | 错失移动互联网与AI浪潮 | Guadi 3 | 18A</summary><br>

<a href="https://www.youtube.com/watch?v=2teq7B6qCnw" target="_blank">
    <img src="https://img.youtube.com/vi/2teq7B6qCnw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Intel】英特尔CEO帕特·基辛格辞职 | 四年努力终成空 | 两位副手接任 | 董事会不满 | 传奇经历 | IDM 2.0 | 错失移动互联网与AI浪潮 | Guadi 3 | 18A



---

</details>

<details>
<summary>481. 【人工智能】为什么说 AI有意识 | 杰弗里·辛顿Vector Institute演讲 | 数字与模拟计算 | 凡人计算 | 反向传播 | 知识蒸馏 | 自动补全 | AI的风险 | 意识与主观体验</summary><br>

<a href="https://www.youtube.com/watch?v=Et75ex1eUBw" target="_blank">
    <img src="https://img.youtube.com/vi/Et75ex1eUBw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】为什么说 AI有意识 | 杰弗里·辛顿Vector Institute演讲 | 数字与模拟计算 | 凡人计算 | 反向传播 | 知识蒸馏 | 自动补全 | AI的风险 | 意识与主观体验



---

</details>

<details>
<summary>480. 【Google】纽约时报记者揭示谷歌的隐瞒文化 | 禁止内部员工保留对公司不利信息 | 内部通讯工具 | 反垄断审判 | 律师-客户特权 | 拉斯维加斯</summary><br>

<a href="https://www.youtube.com/watch?v=9hTOxxkBcjk" target="_blank">
    <img src="https://img.youtube.com/vi/9hTOxxkBcjk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Google】纽约时报记者揭示谷歌的隐瞒文化 | 禁止内部员工保留对公司不利信息 | 内部通讯工具 | 反垄断审判 | 律师-客户特权 | 拉斯维加斯



---

</details>

<details>
<summary>479. 【经济】从左翼到右翼——全球及中国经济变化的根源 | 中国经济的困难 | 东北证券首席经济学家付鹏 | 日本经济 | 意识形态 | 中美贸易战 | 人口老龄化 | 中产阶级陨落 | 间接税 | 巴菲特</summary><br>

<a href="https://www.youtube.com/watch?v=VSfGuNXxwp8" target="_blank">
    <img src="https://img.youtube.com/vi/VSfGuNXxwp8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【经济】从左翼到右翼——全球及中国经济变化的根源 | 中国经济的困难 | 东北证券首席经济学家付鹏 | 日本经济 | 意识形态 | 中美贸易战 | 人口老龄化 | 中产阶级陨落 | 间接税 | 巴菲特



---

</details>

<details>
<summary>478. 【人工智能】Salesforce CEO批评微软Copilot毫无价值 | Marc Benioff最新访谈 | 全球第一CRM | Agent的价值 | Copilot只是套壳 | 新闻和社交媒体</summary><br>

<a href="https://www.youtube.com/watch?v=Y3m9VuqwgRA" target="_blank">
    <img src="https://img.youtube.com/vi/Y3m9VuqwgRA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Salesforce CEO批评微软Copilot毫无价值 | Marc Benioff最新访谈 | 全球第一CRM | Agent的价值 | Copilot只是套壳 | 新闻和社交媒体



---

</details>

<details>
<summary>477. 【人工智能】Jeff Dean亲自发论文回怼Alphachip质疑 | 加州大学论文 | 缺少预训练环节 | 减少20倍计算量 | 吹哨人指控 | 四年时间线 | 同行互踩还是真有问题</summary><br>

<a href="https://www.youtube.com/watch?v=uy2dCHmMkx4" target="_blank">
    <img src="https://img.youtube.com/vi/uy2dCHmMkx4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Jeff Dean亲自发论文回怼Alphachip质疑 | 加州大学论文 | 缺少预训练环节 | 减少20倍计算量 | 吹哨人指控 | 四年时间线 | 同行互踩还是真有问题



---

</details>

<details>
<summary>476. 【人工智能】实在卷不动了！Reke联创Yi Tay选择重回谷歌 | AI创业有多难 | 融资1亿仍太少 | 15人团队 | 1年半胖了30斤 | 烧钱游戏 | 人才回流大厂 | 行业洗牌加剧</summary><br>

<a href="https://www.youtube.com/watch?v=beKVFiQFWKQ" target="_blank">
    <img src="https://img.youtube.com/vi/beKVFiQFWKQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】实在卷不动了！Reke联创Yi Tay选择重回谷歌 | AI创业有多难 | 融资1亿仍太少 | 15人团队 | 1年半胖了30斤 | 烧钱游戏 | 人才回流大厂 | 行业洗牌加剧



---

</details>

<details>
<summary>475. 【人工智能】究竟什么是人工智能 | 杨立昆最新播客对话 | 成长经历 | 人工智能发展历史 | 逻辑推理 | 神经网络 | GOFAI | CNN | 大语言模型 | JEPA | 创业方向</summary><br>

<a href="https://www.youtube.com/watch?v=8-a83tFSihc" target="_blank">
    <img src="https://img.youtube.com/vi/8-a83tFSihc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】究竟什么是人工智能 | 杨立昆最新播客对话 | 成长经历 | 人工智能发展历史 | 逻辑推理 | 神经网络 | GOFAI | CNN | 大语言模型 | JEPA | 创业方向



---

</details>

<details>
<summary>474. 【人工智能】AI科学发现的黄金年代 | 谷歌DeepMind最新36页论文解读 | AI for Science最新进展和未来趋势 | 五大机遇 | 八个关键因素 | Demis Hassabis</summary><br>

<a href="https://www.youtube.com/watch?v=ZEszFz0WLCk" target="_blank">
    <img src="https://img.youtube.com/vi/ZEszFz0WLCk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI科学发现的黄金年代 | 谷歌DeepMind最新36页论文解读 | AI for Science最新进展和未来趋势 | 五大机遇 | 八个关键因素 | Demis Hassabis



---

</details>

<details>
<summary>473. 【人工智能】黄仁勋对话沈向洋| 香港科技大学 | 计算模式的转变 | 摩尔定律 | 后训练 | AI for Science | 领导力 | 大学科研问题 | AI能源消耗 | 大湾区发展</summary><br>

<a href="https://www.youtube.com/watch?v=FOwpEiyunJk" target="_blank">
    <img src="https://img.youtube.com/vi/FOwpEiyunJk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】黄仁勋对话沈向洋| 香港科技大学 | 计算模式的转变 | 摩尔定律 | 后训练 | AI for Science | 领导力 | 大学科研问题 | AI能源消耗 | 大湾区发展



---

</details>

<details>
<summary>472. 【人工智能】思维故事Story of Thought | 提示工程新方向 | 波恩大学论文 | 三个步骤 | 问题阐明 | 叙事生成 | 问题求解 | 叙事结构会让大模型更好的推理么？</summary><br>

<a href="https://www.youtube.com/watch?v=H_Iffr46dTM" target="_blank">
    <img src="https://img.youtube.com/vi/H_Iffr46dTM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】思维故事Story of Thought | 提示工程新方向 | 波恩大学论文 | 三个步骤 | 问题阐明 | 叙事生成 | 问题求解 | 叙事结构会让大模型更好的推理么？



---

</details>

<details>
<summary>471. 【人工智能】高级红队测试该怎么做 | OpenAI同时发两篇论文阐述人和事 | AI自动化安全测试 | 如何聘请红队人员 | 多样化攻击目标 | 基于规则的奖励RBRs | 性能评估 | 安全对齐</summary><br>

<a href="https://www.youtube.com/watch?v=8cxyvQAgJwE" target="_blank">
    <img src="https://img.youtube.com/vi/8cxyvQAgJwE/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】高级红队测试该怎么做 | OpenAI同时发两篇论文阐述人和事 | AI自动化安全测试 | 如何聘请红队人员 | 多样化攻击目标 | 基于规则的奖励RBRs | 性能评估 | 安全对齐



---

</details>

<details>
<summary>470. 【Google】谷歌浏览器Chrome或面临拆分 | 谷歌反垄断案最新进展 | ChromOS或转向Android | 强制合并搜索结果 | 要求开放搜索数据 | 更多产品或被拆分</summary><br>

<a href="https://www.youtube.com/watch?v=yQW9ceygFe4" target="_blank">
    <img src="https://img.youtube.com/vi/yQW9ceygFe4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Google】谷歌浏览器Chrome或面临拆分 | 谷歌反垄断案最新进展 | ChromOS或转向Android | 强制合并搜索结果 | 要求开放搜索数据 | 更多产品或被拆分



---

</details>

<details>
<summary>469. 【人物】Basic语言之父Thomas E. Kurtz | 享年96岁 | 计算机先驱 | 达特茅斯学院 | John Kemeny | DOPE语言 | 编程民主 | True Basic</summary><br>

<a href="https://www.youtube.com/watch?v=eLC8M6RJTWc" target="_blank">
    <img src="https://img.youtube.com/vi/eLC8M6RJTWc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人物】Basic语言之父Thomas E. Kurtz | 享年96岁 | 计算机先驱 | 达特茅斯学院 | John Kemeny | DOPE语言 | 编程民主 | True Basic



---

</details>

<details>
<summary>468. 【人工智能】意识非物理，只存在于大脑构建的梦境中 | 德国认知学家Joscha Bach | AI | 神经元 | 神经网络 | 元胞自动机 | 心智演化 | 创世纪 | 我 | SPIRIT</summary><br>

<a href="https://www.youtube.com/watch?v=J6fEGd8wGG4" target="_blank">
    <img src="https://img.youtube.com/vi/J6fEGd8wGG4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】意识非物理，只存在于大脑构建的梦境中 | 德国认知学家Joscha Bach | AI | 神经元 | 神经网络 | 元胞自动机 | 心智演化 | 创世纪 | 我 | SPIRIT



---

</details>

<details>
<summary>467. 【人工智能】强化学习方向错太久，是时候该转向持续学习了 | 强化学习之父Richard Sutton | 苦涩的教训 | 多臂老虎机问题 | 反向传播 | 梯度下降 | 奖励假说 | AI科研建议</summary><br>

<a href="https://www.youtube.com/watch?v=NL5OmLcgkTQ" target="_blank">
    <img src="https://img.youtube.com/vi/NL5OmLcgkTQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】强化学习方向错太久，是时候该转向持续学习了 | 强化学习之父Richard Sutton | 苦涩的教训 | 多臂老虎机问题 | 反向传播 | 梯度下降 | 奖励假说 | AI科研建议



---

</details>

<details>
<summary>466. 【OpenAI】50封邮件曝光马斯克起诉OpenAI内幕 | 追加新原告被告 | 初衷为抗衡谷歌DeepMind | 关系破裂 | Ilya和Greg质疑 | 公司控制权之争 | Sam Altman</summary><br>

<a href="https://www.youtube.com/watch?v=vVUU90m1Lcw" target="_blank">
    <img src="https://img.youtube.com/vi/vVUU90m1Lcw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】50封邮件曝光马斯克起诉OpenAI内幕 | 追加新原告被告 | 初衷为抗衡谷歌DeepMind | 关系破裂 | Ilya和Greg质疑 | 公司控制权之争 | Sam Altman



---

</details>

<details>
<summary>465. 【人工智能】AI的内部运行是怎样的？| 机械可解释性 | 特朗普神经元 | 线性表征假说 | 多义性 | 叠加假说 | 跨模态理解 | 神经网络暗物质 | Christopher Olah</summary><br>

<a href="https://www.youtube.com/watch?v=pAbyPv0Ul0k" target="_blank">
    <img src="https://img.youtube.com/vi/pAbyPv0Ul0k/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI的内部运行是怎样的？| 机械可解释性 | 特朗普神经元 | 线性表征假说 | 多义性 | 叠加假说 | 跨模态理解 | 神经网络暗物质 | Christopher Olah



---

</details>

<details>
<summary>464. 【人工智能】小模型是未来的趋势 | 微软AI CEO穆斯塔法·苏莱曼对谈 | 重新定义幻觉 | AI自主性 | AI Agents | 语音交互模式 | 模型蒸馏 | 提示词也是数据</summary><br>

<a href="https://www.youtube.com/watch?v=mXlaAto1qx0" target="_blank">
    <img src="https://img.youtube.com/vi/mXlaAto1qx0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】小模型是未来的趋势 | 微软AI CEO穆斯塔法·苏莱曼对谈 | 重新定义幻觉 | AI自主性 | AI Agents | 语音交互模式 | 模型蒸馏 | 提示词也是数据



---

</details>

<details>
<summary>463. 【人工智能】Scaling Laws要撞墙了么 | 外媒质疑Orion模型提升有限 | AI大佬纷纷激辩 | 测试时训练TTT引发关注 | MIT论文证明能让模型推理性能暴涨 | TTT能拯救大模型么</summary><br>

<a href="https://www.youtube.com/watch?v=TD9D6fDP38o" target="_blank">
    <img src="https://img.youtube.com/vi/TD9D6fDP38o/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Scaling Laws要撞墙了么 | 外媒质疑Orion模型提升有限 | AI大佬纷纷激辩 | 测试时训练TTT引发关注 | MIT论文证明能让模型推理性能暴涨 | TTT能拯救大模型么



---

</details>

<details>
<summary>462. 【人工智能】AI还未达到极限，Scaling Law依然有效 | Anthropic三巨头五小时播客专访 | 3.5 Opus | AI变笨 | AGI | 模型训练 | 提示工程 | 机械可解释性</summary><br>

<a href="https://www.youtube.com/watch?v=8HbbySzi2Ls" target="_blank">
    <img src="https://img.youtube.com/vi/8HbbySzi2Ls/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI还未达到极限，Scaling Law依然有效 | Anthropic三巨头五小时播客专访 | 3.5 Opus | AI变笨 | AGI | 模型训练 | 提示工程 | 机械可解释性



---

</details>

<details>
<summary>461. 【人工智能】AI产品经理必看 | OpenAI和Anthropic CPO对谈 | 机遇和挑战 | 60%准确率线 | 撰写评估标准 | 关键技能 | 多模型协同 | 情感因素 | 2C和2B的区别</summary><br>

<a href="https://www.youtube.com/watch?v=uB7ypPFQP2g" target="_blank">
    <img src="https://img.youtube.com/vi/uB7ypPFQP2g/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI产品经理必看 | OpenAI和Anthropic CPO对谈 | 机遇和挑战 | 60%准确率线 | 撰写评估标准 | 关键技能 | 多模型协同 | 情感因素 | 2C和2B的区别



---

</details>

<details>
<summary>460. 【人工智能】Sora等视频生成模型并不懂物理规则？| 豆包团队8个月研究成果 | 杨立昆点赞 | DiT架构 | 世界模型 | 泛化能力 | Scaling Law</summary><br>

<a href="https://www.youtube.com/watch?v=XffDExSYIOA" target="_blank">
    <img src="https://img.youtube.com/vi/XffDExSYIOA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Sora等视频生成模型并不懂物理规则？| 豆包团队8个月研究成果 | 杨立昆点赞 | DiT架构 | 世界模型 | 泛化能力 | Scaling Law



---

</details>

<details>
<summary>459. 【科学】Dijkstra算法再被证明是普遍最优算法 | Edsger Dijkstra | 计算机经典算法 | 单源最短路径 | 堆Heap | 工作集属性 | FOCS 2024最佳论文</summary><br>

<a href="https://www.youtube.com/watch?v=Q7xZ162l5ag" target="_blank">
    <img src="https://img.youtube.com/vi/Q7xZ162l5ag/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科学】Dijkstra算法再被证明是普遍最优算法 | Edsger Dijkstra | 计算机经典算法 | 单源最短路径 | 堆Heap | 工作集属性 | FOCS 2024最佳论文



---

</details>

<details>
<summary>458. 【无人驾驶】Waymo的发展历程、技术演进和未来展望 | CEO Dmitri Dolgov No Priors专访 | DARPA | 谷歌 | 三次技术代际升级 | AI技术应用 | 安全性能</summary><br>

<a href="https://www.youtube.com/watch?v=fxZ7iIrmHDg" target="_blank">
    <img src="https://img.youtube.com/vi/fxZ7iIrmHDg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【无人驾驶】Waymo的发展历程、技术演进和未来展望 | CEO Dmitri Dolgov No Priors专访 | DARPA | 谷歌 | 三次技术代际升级 | AI技术应用 | 安全性能



---

</details>

<details>
<summary>457. 【人工智能】创业公司要小心被OpenAI碾压 | Sam Altman 20VC最新访谈 | 大模型的能力提升 | AI创业要充分利用模型能力 | 开源模型很重要 | 模型是贬值资产</summary><br>

<a href="https://www.youtube.com/watch?v=Nu_fhQzUSFQ" target="_blank">
    <img src="https://img.youtube.com/vi/Nu_fhQzUSFQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】创业公司要小心被OpenAI碾压 | Sam Altman 20VC最新访谈 | 大模型的能力提升 | AI创业要充分利用模型能力 | 开源模型很重要 | 模型是贬值资产



---

</details>

<details>
<summary>456. 【人工智能】如何仅用初中数学来理解大语言模型原理 | 神经网络 | 嵌入 | 分词器 | ReLU | 自注意力 | 残差连接 | 层归一化 | Dropout | GPT | Transformer</summary><br>

<a href="https://www.youtube.com/watch?v=NnxMwIWumOc" target="_blank">
    <img src="https://img.youtube.com/vi/NnxMwIWumOc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】如何仅用初中数学来理解大语言模型原理 | 神经网络 | 嵌入 | 分词器 | ReLU | 自注意力 | 残差连接 | 层归一化 | Dropout | GPT | Transformer



---

</details>

<details>
<summary>455. 【人工智能】“套壳之王”Perplexity如何挑战Google | CEO Aravind Srinivas最新播客采访 | AI搜索引擎 | 多角度观点 | 来源引用 | 三方数据</summary><br>

<a href="https://www.youtube.com/watch?v=njqjgxoYDig" target="_blank">
    <img src="https://img.youtube.com/vi/njqjgxoYDig/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】“套壳之王”Perplexity如何挑战Google | CEO Aravind Srinivas最新播客采访 | AI搜索引擎 | 多角度观点 | 来源引用 | 三方数据



---

</details>

<details>
<summary>454. 【人工智能】AI浪潮将席卷一切 | a16z合伙人Ben Horowitz FII峰会演讲 | 新的计算机 | 当前的发展阶段 | 投资与AI创业 | AI的国家战略意义</summary><br>

<a href="https://www.youtube.com/watch?v=fQQXUeI6eCY" target="_blank">
    <img src="https://img.youtube.com/vi/fQQXUeI6eCY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI浪潮将席卷一切 | a16z合伙人Ben Horowitz FII峰会演讲 | 新的计算机 | 当前的发展阶段 | 投资与AI创业 | AI的国家战略意义



---

</details>

<details>
<summary>453. 【人工智能】中美打地鼠，美国芯片制裁效果不佳 | Semianlysis长文 | 中国依然能够获得先进芯片 | 先进制程5年差距 |  离岸制造 | 变更用途 | 改名大法 | 华为 | 管制如何升级</summary><br>

<a href="https://www.youtube.com/watch?v=g-rHF9ri--o" target="_blank">
    <img src="https://img.youtube.com/vi/g-rHF9ri--o/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】中美打地鼠，美国芯片制裁效果不佳 | Semianlysis长文 | 中国依然能够获得先进芯片 | 先进制程5年差距 |  离岸制造 | 变更用途 | 改名大法 | 华为 | 管制如何升级



---

</details>

<details>
<summary>452. 【人工智能】现在AI智能水平还不如一只猫？ | Yann LeCun又开怼大模型 | 自回归缺点 | 莫拉维克悖论 | 世界模型 | 联合嵌入预测架构JEPA | Meta为何开源</summary><br>

<a href="https://www.youtube.com/watch?v=TRxYKidqY8E" target="_blank">
    <img src="https://img.youtube.com/vi/TRxYKidqY8E/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】现在AI智能水平还不如一只猫？ | Yann LeCun又开怼大模型 | 自回归缺点 | 莫拉维克悖论 | 世界模型 | 联合嵌入预测架构JEPA | Meta为何开源



---

</details>

<details>
<summary>451. 【科学】2024诺贝尔经济学奖 | Daron Acemoglu & Simon Johnson & James Robinson | 国家为什么会失败 | 制度起决定作用 | AI的威胁</summary><br>

<a href="https://www.youtube.com/watch?v=DmJDyCkC8NQ" target="_blank">
    <img src="https://img.youtube.com/vi/DmJDyCkC8NQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科学】2024诺贝尔经济学奖 | Daron Acemoglu & Simon Johnson & James Robinson | 国家为什么会失败 | 制度起决定作用 | AI的威胁



---

</details>

<details>
<summary>450. 【人工智能】全球首例AI致人死亡案 | 美国14岁少年沉迷AI角色 | Character AI惹上大麻烦 | 缺少未成年人保护措施 | 情感依赖 | 青少年心理问题 | AI是否要负责</summary><br>

<a href="https://www.youtube.com/watch?v=yNZsC7zvTgw" target="_blank">
    <img src="https://img.youtube.com/vi/yNZsC7zvTgw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】全球首例AI致人死亡案 | 美国14岁少年沉迷AI角色 | Character AI惹上大麻烦 | 缺少未成年人保护措施 | 情感依赖 | 青少年心理问题 | AI是否要负责



---

</details>

<details>
<summary>449. 【国产】中国操作系统七十年自主研发沉浮史 | CCDOS | COSIX | 第一次浪潮兴起与失败 | 红旗Linux | 核高基 | 番茄家园盗版案 | 微软黑屏事件 | 麒麟系列 | 第二次浪潮</summary><br>

<a href="https://www.youtube.com/watch?v=pFyPzl1HEcE" target="_blank">
    <img src="https://img.youtube.com/vi/pFyPzl1HEcE/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【国产】中国操作系统七十年自主研发沉浮史 | CCDOS | COSIX | 第一次浪潮兴起与失败 | 红旗Linux | 核高基 | 番茄家园盗版案 | 微软黑屏事件 | 麒麟系列 | 第二次浪潮



---

</details>

<details>
<summary>448. 【人工智能】大模型到底懂不懂推理？| 苹果发表最新论文 | GSM-Symbolic | GSM8K数据集 | 数学推理的局限性 | 开闭源模型纷纷中招 | 线性化子图匹配 | 模式匹配器</summary><br>

<a href="https://www.youtube.com/watch?v=ojndlMzGZZk" target="_blank">
    <img src="https://img.youtube.com/vi/ojndlMzGZZk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】大模型到底懂不懂推理？| 苹果发表最新论文 | GSM-Symbolic | GSM8K数据集 | 数学推理的局限性 | 开闭源模型纷纷中招 | 线性化子图匹配 | 模式匹配器



---

</details>

<details>
<summary>447. 【芯片】台积电TSMC能否保持3nm领先优势 | 移动芯片庞大订单 | AI芯片增长迅速 | 3nm营收占比猛增 | 晶圆涨价 | CoWoS产能受限 | 先进制程工艺竞争</summary><br>

<a href="https://www.youtube.com/watch?v=FVZtadz5vyI" target="_blank">
    <img src="https://img.youtube.com/vi/FVZtadz5vyI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【芯片】台积电TSMC能否保持3nm领先优势 | 移动芯片庞大订单 | AI芯片增长迅速 | 3nm营收占比猛增 | 晶圆涨价 | CoWoS产能受限 | 先进制程工艺竞争



---

</details>

<details>
<summary>446. 【人工智能】斯坦福李飞飞团队提出“数字表亲”概念 | 真实世界的几何和语义表征 | 与数字孪生的区别 | 生成机器人训练数据 | ACDC | 零样本学习</summary><br>

<a href="https://www.youtube.com/watch?v=7f3JORoLa0I" target="_blank">
    <img src="https://img.youtube.com/vi/7f3JORoLa0I/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】斯坦福李飞飞团队提出“数字表亲”概念 | 真实世界的几何和语义表征 | 与数字孪生的区别 | 生成机器人训练数据 | ACDC | 零样本学习



---

</details>

<details>
<summary>445. 【人工智能】SambaNova RDU | 可重构数据流架构芯片 | 超越GPU推理能力 |  SN40L | SRAM+HBM+DDR DRAM | 并行处理 | 芯片初创公司独角兽</summary><br>

<a href="https://www.youtube.com/watch?v=J9zTewPvEQQ" target="_blank">
    <img src="https://img.youtube.com/vi/J9zTewPvEQQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】SambaNova RDU | 可重构数据流架构芯片 | 超越GPU推理能力 |  SN40L | SRAM+HBM+DDR DRAM | 并行处理 | 芯片初创公司独角兽



---

</details>

<details>
<summary>444. 【人工智能】OpenAI和微软的合作开始出现裂痕？| 盟友变为对手 | 高层和员工互相不满 | 穆斯塔法·苏莱曼 | 削减资金投入 | 排他协议 | 非盈利组织 | AGI</summary><br>

<a href="https://www.youtube.com/watch?v=MeorZXJJWKA" target="_blank">
    <img src="https://img.youtube.com/vi/MeorZXJJWKA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】OpenAI和微软的合作开始出现裂痕？| 盟友变为对手 | 高层和员工互相不满 | 穆斯塔法·苏莱曼 | 削减资金投入 | 排他协议 | 非盈利组织 | AGI



---

</details>

<details>
<summary>443. 【科学】2024诺贝尔化学奖 | David Baker & Demis Hassabis & John M. Jumper | AlphaFold | 蛋白质预测 | Rosetta | CASP</summary><br>

<a href="https://www.youtube.com/watch?v=aoPyKGCYQTY" target="_blank">
    <img src="https://img.youtube.com/vi/aoPyKGCYQTY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科学】2024诺贝尔化学奖 | David Baker & Demis Hassabis & John M. Jumper | AlphaFold | 蛋白质预测 | Rosetta | CASP



---

</details>

<details>
<summary>442. 【人工智能】Anthropic发布升级版Claude 3.5 Sonnet/Haiku | AI直接操作电脑完成任务 | 击败o1成为最强推理模型 | 编码任务性能提升 | ASL-2</summary><br>

<a href="https://www.youtube.com/watch?v=Auox8zZiZvU" target="_blank">
    <img src="https://img.youtube.com/vi/Auox8zZiZvU/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Anthropic发布升级版Claude 3.5 Sonnet/Haiku | AI直接操作电脑完成任务 | 击败o1成为最强推理模型 | 编码任务性能提升 | ASL-2



---

</details>

<details>
<summary>441. 【SpaceX】“筷子夹火箭”航空壮举 | SpaceX星舰Starship第五次试飞任务成功 | 前四次任务回顾 | DearMoon | 机械臂回收助推器 | 隔热问题</summary><br>

<a href="https://www.youtube.com/watch?v=LvWL15UjBOc" target="_blank">
    <img src="https://img.youtube.com/vi/LvWL15UjBOc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【SpaceX】“筷子夹火箭”航空壮举 | SpaceX星舰Starship第五次试飞任务成功 | 前四次任务回顾 | DearMoon | 机械臂回收助推器 | 隔热问题



---

</details>

<details>
<summary>440. 【人工智能】TableRAG大规模表格检索增强生成框架 | DeepMind | 突破上下文长度限制 | 模式检索 | 单元格检索 | 编码预算</summary><br>

<a href="https://www.youtube.com/watch?v=TQmxrSiI9xE" target="_blank">
    <img src="https://img.youtube.com/vi/TQmxrSiI9xE/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】TableRAG大规模表格检索增强生成框架 | DeepMind | 突破上下文长度限制 | 模式检索 | 单元格检索 | 编码预算



---

</details>

<details>
<summary>439. 【商业】ANDURIL 美国国防科技AI公司 | 估值140亿美元 | Lattice AI平台 | JADC2 | 反无人机系统 | 反入侵哨塔 | 空中无人机 | 水下航行器 | AI军事与战争</summary><br>

<a href="https://www.youtube.com/watch?v=nyBqhV4bWhI" target="_blank">
    <img src="https://img.youtube.com/vi/nyBqhV4bWhI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】ANDURIL 美国国防科技AI公司 | 估值140亿美元 | Lattice AI平台 | JADC2 | 反无人机系统 | 反入侵哨塔 | 空中无人机 | 水下航行器 | AI军事与战争



---

</details>

<details>
<summary>438. 【人工智能】AMD发布一系列最新AI产品 | Advancing AI 2024 | EPYC Turin | Instinct MI325X  | 升级ROCm | MI350系列 | P4 DPU</summary><br>

<a href="https://www.youtube.com/watch?v=nBdyBFmWwVI" target="_blank">
    <img src="https://img.youtube.com/vi/nBdyBFmWwVI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AMD发布一系列最新AI产品 | Advancing AI 2024 | EPYC Turin | Instinct MI325X  | 升级ROCm | MI350系列 | P4 DPU



---

</details>

<details>
<summary>437. 【科学】2024诺贝尔物理学奖 | John Hopfield & Geoffrey Hinton | 为什么物理学奖颁给计算机科学家 | 霍普菲尔德网络模型 | 连接主义运动 | 深度学习</summary><br>

<a href="https://www.youtube.com/watch?v=s4Z8ToalawY" target="_blank">
    <img src="https://img.youtube.com/vi/s4Z8ToalawY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科学】2024诺贝尔物理学奖 | John Hopfield & Geoffrey Hinton | 为什么物理学奖颁给计算机科学家 | 霍普菲尔德网络模型 | 连接主义运动 | 深度学习



---

</details>

<details>
<summary>436. 【人工智能】号称“最强大模型”的Reflection 70B乌龙事件始末 | 调研报告发布 | 代码Bug导致跑分异常 | API不具备生产环境条件 | 套壳Claude | 基准测试不再可信</summary><br>

<a href="https://www.youtube.com/watch?v=YfJT51pQSb8" target="_blank">
    <img src="https://img.youtube.com/vi/YfJT51pQSb8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】号称“最强大模型”的Reflection 70B乌龙事件始末 | 调研报告发布 | 代码Bug导致跑分异常 | API不具备生产环境条件 | 套壳Claude | 基准测试不再可信



---

</details>

<details>
<summary>435. 【科学】2024诺贝尔生理或医学奖 | Victor Ambros & Gary Ruvkun | miRNA的发现 | 基因转录 | 基因调控 | 秀丽隐杆线虫 | 攻克癌症的可能</summary><br>

<a href="https://www.youtube.com/watch?v=AWQF5bTQmWc" target="_blank">
    <img src="https://img.youtube.com/vi/AWQF5bTQmWc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科学】2024诺贝尔生理或医学奖 | Victor Ambros & Gary Ruvkun | miRNA的发现 | 基因转录 | 基因调控 | 秀丽隐杆线虫 | 攻克癌症的可能



---

</details>

<details>
<summary>434. 【Tesla】特斯拉Robotaxi 2024发布会一览 | 无人驾驶出租车Cybercab | 2026年前运营 | 无人驾驶货车Robovan | FSD | Optimus将仅售3万美元 |</summary><br>

<a href="https://www.youtube.com/watch?v=CIL-KAPrRKI" target="_blank">
    <img src="https://img.youtube.com/vi/CIL-KAPrRKI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Tesla】特斯拉Robotaxi 2024发布会一览 | 无人驾驶出租车Cybercab | 2026年前运营 | 无人驾驶货车Robovan | FSD | Optimus将仅售3万美元 |



---

</details>

<details>
<summary>433. 【人工智能】AI浪潮中会再现十九世纪的卢德运动么？ | Brain Merchant |《机器中的血》| 卢德主义 | 技术恐惧症 | 新卢德运动的差异 | AI对工作的冲击到底如何</summary><br>

<a href="https://www.youtube.com/watch?v=b2Q5OU5YYoQ" target="_blank">
    <img src="https://img.youtube.com/vi/b2Q5OU5YYoQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI浪潮中会再现十九世纪的卢德运动么？ | Brain Merchant |《机器中的血》| 卢德主义 | 技术恐惧症 | 新卢德运动的差异 | AI对工作的冲击到底如何



---

</details>

<details>
<summary>432. 【芯片】决战2nm先进制程工艺 | 台积电/三星/英特尔/Rapidus | GAA+BSPDN | 台积电拥有较大优势 | BSPDN三种实现方式 | BPR | PowerVia | BSC</summary><br>

<a href="https://www.youtube.com/watch?v=KjK5PQIDa5E" target="_blank">
    <img src="https://img.youtube.com/vi/KjK5PQIDa5E/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【芯片】决战2nm先进制程工艺 | 台积电/三星/英特尔/Rapidus | GAA+BSPDN | 台积电拥有较大优势 | BSPDN三种实现方式 | BPR | PowerVia | BSC



---

</details>

<details>
<summary>431. 【人工智能】OpenAI推出新功能界面Canvas | 提升写作和编码效率 | 自动唤醒界面 | 迭代式修改 | Claude Artifacts | 开放测试版</summary><br>

<a href="https://www.youtube.com/watch?v=c2NVRMJCQSc" target="_blank">
    <img src="https://img.youtube.com/vi/c2NVRMJCQSc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】OpenAI推出新功能界面Canvas | 提升写作和编码效率 | 自动唤醒界面 | 迭代式修改 | Claude Artifacts | 开放测试版



---

</details>

<details>
<summary>430. 【商业】BitClout硅谷诈骗案始末 | Nadar Al-Naji为何能两次欺骗硅谷顶级风投 | 高学历年轻精英 | 社交加密货币 | Basis稳定币 |  SEC起诉面临多年监禁</summary><br>

<a href="https://www.youtube.com/watch?v=PKV2zScs6R8" target="_blank">
    <img src="https://img.youtube.com/vi/PKV2zScs6R8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】BitClout硅谷诈骗案始末 | Nadar Al-Naji为何能两次欺骗硅谷顶级风投 | 高学历年轻精英 | 社交加密货币 | Basis稳定币 |  SEC起诉面临多年监禁



---

</details>

<details>
<summary>429. 【科技】Github为什么能够打败Google | 联合创始人Scott Chacon万字长文 | 解决SVN的痛点 | Linus Torvalds大神加持 | Mercurial | 创业二十年</summary><br>

<a href="https://www.youtube.com/watch?v=B5BRonjJGlI" target="_blank">
    <img src="https://img.youtube.com/vi/B5BRonjJGlI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科技】Github为什么能够打败Google | 联合创始人Scott Chacon万字长文 | 解决SVN的痛点 | Linus Torvalds大神加持 | Mercurial | 创业二十年



---

</details>

<details>
<summary>428. 【科技】日本芯片行业“失落的三十年” | 什么是超LSI项目 | 举国体制办大事 | 产学官制度 | 美国制裁与技术压制 | 新联合公司Rapidus | 2nm制程目标</summary><br>

<a href="https://www.youtube.com/watch?v=Xdy3VnbpcaI" target="_blank">
    <img src="https://img.youtube.com/vi/Xdy3VnbpcaI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科技】日本芯片行业“失落的三十年” | 什么是超LSI项目 | 举国体制办大事 | 产学官制度 | 美国制裁与技术压制 | 新联合公司Rapidus | 2nm制程目标



---

</details>

<details>
<summary>427. 【人工智能】Liquid AI发布基于流体神经网络的多模态大模型 | LFM | 生物仿生学 | 秀丽隐杆线虫 | 多项基准SOTA | MIT CSAIL实验室孵化 | 液态时间常数网络</summary><br>

<a href="https://www.youtube.com/watch?v=1icWSp9lzyY" target="_blank">
    <img src="https://img.youtube.com/vi/1icWSp9lzyY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Liquid AI发布基于流体神经网络的多模态大模型 | LFM | 生物仿生学 | 秀丽隐杆线虫 | 多项基准SOTA | MIT CSAIL实验室孵化 | 液态时间常数网络



---

</details>

<details>
<summary>426. 【人工智能】知识廉价时代到来 | Vinod Khosla | OpenAI首位投资人《时代》杂志专访 | 技术乐观主义 | AI风险预防 | 工作终将消失 | AI的国家模式</summary><br>

<a href="https://www.youtube.com/watch?v=ZyjI4l6I9Fo" target="_blank">
    <img src="https://img.youtube.com/vi/ZyjI4l6I9Fo/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】知识廉价时代到来 | Vinod Khosla | OpenAI首位投资人《时代》杂志专访 | 技术乐观主义 | AI风险预防 | 工作终将消失 | AI的国家模式



---

</details>

<details>
<summary>425. 【人工智能】Cursor AI IDE最新完全上手指南 | AI编程 | 下载安装 | 对话即可生成应用 | 写程序只需要按Tab键 | 多种模型可选</summary><br>

<a href="https://www.youtube.com/watch?v=SblBJ3qa1p8" target="_blank">
    <img src="https://img.youtube.com/vi/SblBJ3qa1p8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Cursor AI IDE最新完全上手指南 | AI编程 | 下载安装 | 对话即可生成应用 | 写程序只需要按Tab键 | 多种模型可选



---

</details>

<details>
<summary>424. 【人工智能】AI影响人类工作的四种可能 | Ethan Mollick |《共同智能》作者 | 沃顿商学院教授 | AI的辅助作用 | 冲击学徒制度 | HR是新的研发部门 | 未来人类与AI的关系</summary><br>

<a href="https://www.youtube.com/watch?v=GCISmwTOGCI" target="_blank">
    <img src="https://img.youtube.com/vi/GCISmwTOGCI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI影响人类工作的四种可能 | Ethan Mollick |《共同智能》作者 | 沃顿商学院教授 | AI的辅助作用 | 冲击学徒制度 | HR是新的研发部门 | 未来人类与AI的关系



---

</details>

<details>
<summary>423. 【人工智能】挑战Scaling Laws，语言模型参数越大越不可靠？| Nature刊发最新研究 | 简单任务更容易出错 | 难度不一致 | 任务回避 | 提示稳定性</summary><br>

<a href="https://www.youtube.com/watch?v=kp6eiyRBFlM" target="_blank">
    <img src="https://img.youtube.com/vi/kp6eiyRBFlM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】挑战Scaling Laws，语言模型参数越大越不可靠？| Nature刊发最新研究 | 简单任务更容易出错 | 难度不一致 | 任务回避 | 提示稳定性



---

</details>

<details>
<summary>422. 【Meta】Mark Zuckerberg分享公司二十年创业心得 | 通过痛苦学习 | 失败是成功之母 |产品战略 | 创业公司如何快速试错和反馈 | 向市场学习 | 企业责任和公关</summary><br>

<a href="https://www.youtube.com/watch?v=jw8EuiYVM1Q" target="_blank">
    <img src="https://img.youtube.com/vi/jw8EuiYVM1Q/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Meta】Mark Zuckerberg分享公司二十年创业心得 | 通过痛苦学习 | 失败是成功之母 |产品战略 | 创业公司如何快速试错和反馈 | 向市场学习 | 企业责任和公关



---

</details>

<details>
<summary>421. 【芯片】什么是DPU | 数据处理单元 | AI时代带来的芯片分工 | 超级网卡 | 英伟达BlueField | 收购Mellanox | 片上数据中心 | 3U一体</summary><br>

<a href="https://www.youtube.com/watch?v=afLjSZVQTJk" target="_blank">
    <img src="https://img.youtube.com/vi/afLjSZVQTJk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【芯片】什么是DPU | 数据处理单元 | AI时代带来的芯片分工 | 超级网卡 | 英伟达BlueField | 收购Mellanox | 片上数据中心 | 3U一体



---

</details>

<details>
<summary>420. 【BCI】脑机接口的能为我们带来什么帮助 | Neuralink的Blindsight获得FDA认证 | 机械手臂 | 电刺激 | 视觉假体 | 光幻视 | 恢复语言能力</summary><br>

<a href="https://www.youtube.com/watch?v=7tunR2UoyOA" target="_blank">
    <img src="https://img.youtube.com/vi/7tunR2UoyOA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【BCI】脑机接口的能为我们带来什么帮助 | Neuralink的Blindsight获得FDA认证 | 机械手臂 | 电刺激 | 视觉假体 | 光幻视 | 恢复语言能力



---

</details>

<details>
<summary>419. 【OpenAI】OpenAI DevDay开发者日2024悄然举办 | API能力升级 | Realtime 实时API | 提示词缓存 | 视觉微调 | 模型蒸馏 | 价格下调 | 竞争对手步步紧逼</summary><br>

<a href="https://www.youtube.com/watch?v=i3KUtXKZVJ0" target="_blank">
    <img src="https://img.youtube.com/vi/i3KUtXKZVJ0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】OpenAI DevDay开发者日2024悄然举办 | API能力升级 | Realtime 实时API | 提示词缓存 | 视觉微调 | 模型蒸馏 | 价格下调 | 竞争对手步步紧逼



---

</details>

<details>
<summary>418. 【OpenAI】CTO Mira Murati及两名高管离职 | OpenAI一年流失10名高管 | 11人创始团队仅剩2人 | Sam Altman发布人事过渡计划 | 将从非盈利性组织转向盈利组织</summary><br>

<a href="https://www.youtube.com/watch?v=xfFhuoL3sVI" target="_blank">
    <img src="https://img.youtube.com/vi/xfFhuoL3sVI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】CTO Mira Murati及两名高管离职 | OpenAI一年流失10名高管 | 11人创始团队仅剩2人 | Sam Altman发布人事过渡计划 | 将从非盈利性组织转向盈利组织



---

</details>

<details>
<summary>417. 【人工智能】OpenAI O1是如何被构建出来的 | 背后团队讲述研发历程 | 推理模型 | 强化学习 | 思维链 | 无数次的失败 | 如何测试更聪明的AI</summary><br>

<a href="https://www.youtube.com/watch?v=IULZSCuAcVM" target="_blank">
    <img src="https://img.youtube.com/vi/IULZSCuAcVM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】OpenAI O1是如何被构建出来的 | 背后团队讲述研发历程 | 推理模型 | 强化学习 | 思维链 | 无数次的失败 | 如何测试更聪明的AI



---

</details>

<details>
<summary>416. 【人工智能】中国能造出7nm光刻机了么 | 工信部发布通知 | 芯片的制程和套刻到底指的是什么 | 光刻胶蚀刻 | DUV&EUV | ASML | 干式VS浸没式 | 多重曝光 | 离7nm还有多远</summary><br>

<a href="https://www.youtube.com/watch?v=kQrFZux1Img" target="_blank">
    <img src="https://img.youtube.com/vi/kQrFZux1Img/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】中国能造出7nm光刻机了么 | 工信部发布通知 | 芯片的制程和套刻到底指的是什么 | 光刻胶蚀刻 | DUV&EUV | ASML | 干式VS浸没式 | 多重曝光 | 离7nm还有多远



---

</details>

<details>
<summary>415. 【人工智能】Meta Connect 2024发布史上最强AR眼镜Orion | Quest 3S价格仅为Vision Pro十分之一 | 最新多模态大模型Llama 3.2 | 元宇宙梦想再次点燃</summary><br>

<a href="https://www.youtube.com/watch?v=9iOB_01CH-I" target="_blank">
    <img src="https://img.youtube.com/vi/9iOB_01CH-I/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Meta Connect 2024发布史上最强AR眼镜Orion | Quest 3S价格仅为Vision Pro十分之一 | 最新多模态大模型Llama 3.2 | 元宇宙梦想再次点燃



---

</details>

<details>
<summary>414. 【人工智能】AI垃圾信息将如何冲击传统互联网 | 内容农场 | 搜索引擎沦陷 | 问答社区变信息垃圾场 | Google封禁AI插件 | 学术圈也被影响 | AI内容的消费者会是AI么？</summary><br>

<a href="https://www.youtube.com/watch?v=yUsIrbF7-c8" target="_blank">
    <img src="https://img.youtube.com/vi/yUsIrbF7-c8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI垃圾信息将如何冲击传统互联网 | 内容农场 | 搜索引擎沦陷 | 问答社区变信息垃圾场 | Google封禁AI插件 | 学术圈也被影响 | AI内容的消费者会是AI么？



---

</details>

<details>
<summary>413. 【商业】高通邀约收购英特尔 | 或成全球科技史上最大规模交易 | 芯片巨头为何多次战略失误 | IDM 2.0 | 拒绝苹果 | 拒绝OpenAI | AMD | Nvidia</summary><br>

<a href="https://www.youtube.com/watch?v=aTMEnaEgBms" target="_blank">
    <img src="https://img.youtube.com/vi/aTMEnaEgBms/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】高通邀约收购英特尔 | 或成全球科技史上最大规模交易 | 芯片巨头为何多次战略失误 | IDM 2.0 | 拒绝苹果 | 拒绝OpenAI | AMD | Nvidia



---

</details>

<details>
<summary>412. 【人工智能】解码Google Gemini | Jeff Dean | Gemini的前世今生 | Google Brain | DeepMind | 多模态Multimodal | 神经网络</summary><br>

<a href="https://www.youtube.com/watch?v=L-vrJBZcTOw" target="_blank">
    <img src="https://img.youtube.com/vi/L-vrJBZcTOw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】解码Google Gemini | Jeff Dean | Gemini的前世今生 | Google Brain | DeepMind | 多模态Multimodal | 神经网络



---

</details>

<details>
<summary>411. 【商业】OnlyFans财报公开66亿美元震惊众人? | 营收超越OpenAI | 粉丝为何愿意付费 | 马太效应 | 名人吸金 | 为何抵触AI</summary><br>

<a href="https://www.youtube.com/watch?v=UraqswUsiYI" target="_blank">
    <img src="https://img.youtube.com/vi/UraqswUsiYI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】OnlyFans财报公开66亿美元震惊众人? | 营收超越OpenAI | 粉丝为何愿意付费 | 马太效应 | 名人吸金 | 为何抵触AI



---

</details>

<details>
<summary>410. 【科技】奇点更近了，《奇点临近》作者预言2029年人类永生和2045年大脑复制 | Ray Kurzweil最新专访 | 图灵测试 | AGI | 脑机接口 | 科技爆炸</summary><br>

<a href="https://www.youtube.com/watch?v=1J8uzp9ufNM" target="_blank">
    <img src="https://img.youtube.com/vi/1J8uzp9ufNM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科技】奇点更近了，《奇点临近》作者预言2029年人类永生和2045年大脑复制 | Ray Kurzweil最新专访 | 图灵测试 | AGI | 脑机接口 | 科技爆炸



---

</details>

<details>
<summary>409. 【科技】黎巴嫩寻呼机爆炸案背后的技术原理 | 过时的BP机如何成为远程遥控炸弹 | 台湾金阿波罗公司 | 爆炸物PETN | 锂电池 | 手机还安全么 | 过时设备淘汰 | 全球物流风险</summary><br>

<a href="https://www.youtube.com/watch?v=P2BJIEdmOtc" target="_blank">
    <img src="https://img.youtube.com/vi/P2BJIEdmOtc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科技】黎巴嫩寻呼机爆炸案背后的技术原理 | 过时的BP机如何成为远程遥控炸弹 | 台湾金阿波罗公司 | 爆炸物PETN | 锂电池 | 手机还安全么 | 过时设备淘汰 | 全球物流风险



---

</details>

<details>
<summary>408. 【分享】2024年搞笑诺贝尔奖十大奖项 | 鸽子导弹 | 安慰剂效应 | 抛硬币概率 | 喝醉的虫子 | 模仿塑料的植物 | 死鱼逆流 | 肛门呼吸 | 统计和长寿 | 奶牛惊吓 | 发旋方向</summary><br>

<a href="https://www.youtube.com/watch?v=YPueS0OvcLo" target="_blank">
    <img src="https://img.youtube.com/vi/YPueS0OvcLo/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【分享】2024年搞笑诺贝尔奖十大奖项 | 鸽子导弹 | 安慰剂效应 | 抛硬币概率 | 喝醉的虫子 | 模仿塑料的植物 | 死鱼逆流 | 肛门呼吸 | 统计和长寿 | 奶牛惊吓 | 发旋方向



---

</details>

<details>
<summary>407. 【访谈】量子计算机将如何带来第四次工业革命 | 加来道雄 | 理论物理学家 | 多重宇宙 | 薛定谔的猫 | 量子纠缠 | 超光速 | 大自然就是一台量子计算机 | 弦理论 | 宇宙的起点</summary><br>

<a href="https://www.youtube.com/watch?v=GU1WRD_v3h8" target="_blank">
    <img src="https://img.youtube.com/vi/GU1WRD_v3h8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【访谈】量子计算机将如何带来第四次工业革命 | 加来道雄 | 理论物理学家 | 多重宇宙 | 薛定谔的猫 | 量子纠缠 | 超光速 | 大自然就是一台量子计算机 | 弦理论 | 宇宙的起点



---

</details>

<details>
<summary>406. 【人工智能】李飞飞创业公司WorldLabs再获2.3亿美元融资 | 空间智能 | 大世界模型LWM | 3D世界的理解生成与交互 | 明星团队 | 创业三月已成AI独角兽</summary><br>

<a href="https://www.youtube.com/watch?v=n_IJwgqaRZ8" target="_blank">
    <img src="https://img.youtube.com/vi/n_IJwgqaRZ8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】李飞飞创业公司WorldLabs再获2.3亿美元融资 | 空间智能 | 大世界模型LWM | 3D世界的理解生成与交互 | 明星团队 | 创业三月已成AI独角兽



---

</details>

<details>
<summary>405. 【人工智能】大模型的组合会带来上帝模型么 | 谷歌创始人谢尔盖・布林 | 共享大模型 | 具身智能机器人发展 | 保守主义 | 大公司病 | 谷歌要重回AI行业领头羊</summary><br>

<a href="https://www.youtube.com/watch?v=tvvmv9yA9FM" target="_blank">
    <img src="https://img.youtube.com/vi/tvvmv9yA9FM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】大模型的组合会带来上帝模型么 | 谷歌创始人谢尔盖・布林 | 共享大模型 | 具身智能机器人发展 | 保守主义 | 大公司病 | 谷歌要重回AI行业领头羊



---

</details>

<details>
<summary>404. 【人工智能】AI会给人类带来一场认知革命么 | Reid Hoffman | Paypal创始人硅谷著名投资人 | 放大人类认知 | 元工具 | 认知GPS | 大模型多样性 | 拥抱AI</summary><br>

<a href="https://www.youtube.com/watch?v=bCwGVjXzlfk" target="_blank">
    <img src="https://img.youtube.com/vi/bCwGVjXzlfk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AI会给人类带来一场认知革命么 | Reid Hoffman | Paypal创始人硅谷著名投资人 | 放大人类认知 | 元工具 | 认知GPS | 大模型多样性 | 拥抱AI



---

</details>

<details>
<summary>403. 【人工智能】OpenAI o1模型背后的技术 | 后训练阶段的缩放法则 | 测试时计算 | 慢思考 | 隐式思维链CoT | STaR | Critic模型 | 大语言模型的天花板在哪里</summary><br>

<a href="https://www.youtube.com/watch?v=XdREIeuTnj8" target="_blank">
    <img src="https://img.youtube.com/vi/XdREIeuTnj8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】OpenAI o1模型背后的技术 | 后训练阶段的缩放法则 | 测试时计算 | 慢思考 | 隐式思维链CoT | STaR | Critic模型 | 大语言模型的天花板在哪里



---

</details>

<details>
<summary>402. 【人工智能】100亿个机器人的未来世界 | Brett Adcock|Figure AI CEO最新访谈 | Figure 02升级优化 | 机器人将解放人类劳动力 | 中国机器人崛起 | 集体型学习</summary><br>

<a href="https://www.youtube.com/watch?v=OVenN1ahJhI" target="_blank">
    <img src="https://img.youtube.com/vi/OVenN1ahJhI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】100亿个机器人的未来世界 | Brett Adcock|Figure AI CEO最新访谈 | Figure 02升级优化 | 机器人将解放人类劳动力 | 中国机器人崛起 | 集体型学习



---

</details>

<details>
<summary>401. 【科技】SpaceX完成人类首次商业太空行走 | 航空历史又一壮举 | 四名非职业宇航员 | 北极星黎明任务 | 新型EVA宇航服 | 2044年开启火星移民 | 星舰Starship</summary><br>

<a href="https://www.youtube.com/watch?v=y9x15r7yRo8" target="_blank">
    <img src="https://img.youtube.com/vi/y9x15r7yRo8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【科技】SpaceX完成人类首次商业太空行走 | 航空历史又一壮举 | 四名非职业宇航员 | 北极星黎明任务 | 新型EVA宇航服 | 2044年开启火星移民 | 星舰Starship



---

</details>

