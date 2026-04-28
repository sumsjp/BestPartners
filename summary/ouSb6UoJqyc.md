好的，這是一份經過專業整理的 Google Cloud Next 大會內容摘要。我已將其結構化，提取核心訊息，並運用清晰的標題和重點，方便您快速掌握關鍵要點。

---

**Google Cloud Next 大會深度解析：AI 落地企業核心業務的五層藍圖與智能體操作系統**

**發佈單位：** 最佳拍檔 (發言人：大飛)
**會議時間：** 2026年4月22日
**會議地點：** 拉斯維加斯曼德勒灣會議中心
**核心主旨：** AI 已徹底走出試點階段，正成為企業日常運作不可或缺的一部分，Google 傾公司之力，透過數千億美元投資打造一套貫穿全企業的智能體操作系統。

---

### **一、 核心觀點與戰略投入**

*   **定調 AI 落地：** Google Cloud CEO 托馬斯·庫里安（Thomas Kurian）明確指出，AI 落地已從「個案項目實驗」進化至「企業日常運轉的一部分」。
*   **戰略投入規模：**
    *   Google 母公司 Alphabet 的資本支出預計從 2022 年的 310 億美元，飆升至 2026 年的 **1750-1850 億美元**，四年增長近 6 倍。
    *   其中，2026 年超過一半的機器學習計算投入將直接流向 **Google Cloud 業務**。
    *   這是一場「傾全公司之力，押注未來十年基礎設施」的戰役。
*   **內部 AI 應用成效：**
    *   **程式碼生成：** Google 內部 75% 的新程式碼由 AI 生成（半年前僅 50%）。
    *   **複雜程式碼遷移：** 多角色智能體系統將規劃、編排、執行分離，速度比一年前快 6 倍。
    *   **市場行銷：** 大模型批量生成創意變體，工作效率提升 70%，轉化率提升 20%。
    *   **安全營運：** 智能體每月自動分類數萬份威脅報告，威脅緩解時間縮短 90% 以上。
*   **AI 階段的挑戰：** CEO 桑達爾·皮查伊（Sundar Pichai）指出，當前 AI 處於「創新週期中那個凌亂的中間階段，基礎構件正在匯聚，但整個體系仍然混亂」。
*   **Google Cloud 的使命：** 將這種「混亂變成秩序」，將「零散的能力變成一套可規模化落地的企業系統」。

### **二、 「智能體企業」五層藍圖 (The Agentic Enterprise Blueprint)**

托馬斯·庫里安提出，Google 智能體企業藍圖由五層嚴密架構組成，貫穿「智能」與「自動化」的價值交付：
> **智能 + 自動化 = 交付價值**
> （智能來自數據，自動化由智能體驅動）

這套系統旨在解決企業如何管理、調度、安全運行成千上萬個智能體的問題。

**五層架構概述：**

1.  **AI 超級電腦 (AI Hypercomputer)：** 最底層的 AI 運算基礎設施。
2.  **智能體數據雲 (Agentic Data Cloud)：** 提供可信的數據上下文。
3.  **智能體安全防禦 (Agentic Defense)：** 機器速度的安全防禦體系。
4.  **Gemini 企業智能體平台 (Gemini Enterprise Agent Platform)：** 智能體全生命週期管理與編排中樞。
5.  **智能體特遣隊與 Workspace 智能層 (Agentic Task Force & Workspace Intelligence)：** 直接面向員工與客戶的應用層。

### **三、 生態系統與合作**

Google Cloud 在大會上展示了龐大的 AI 生態版圖：

*   **Apple：** Google Cloud 成為 Apple 首選雲提供商，雙方將基於 Gemini 技術共同開發下一代 Apple 基礎模型，以支援更個性化、更智能的 Siri。
*   **NVIDIA：** Google Cloud 將是全球首批提供 NVIDIA Vera Rubin NVL72 算力的雲廠商之一。
*   **Anthropic：** 平台將正式接入 Anthropic Claude Opus 4.7，與 Google 自家的 Gemini 3.1 Pro 並行提供服務。
*   **Microsoft 365：** Gemini Enterprise 新增與 Microsoft 365 的互操作能力，Canvas 中創建的文檔可直接導出為 Office 格式。

### **四、 逐層深度解析五層藍圖**

#### **第一層：AI 超級電腦 (AI Hypercomputer)**

*   **核心理念：** 「在智能體時代，計算不再由單顆芯片定義，計算就是整個數據中心。」 – 阿明·瓦赫達特（Amin Vahdat）
*   **關鍵創新：第八代 TPU**
    *   **里程碑：** 谷歌 TPU 發展十年來，首次將訓練 (TPU 8t) 和推理 (TPU 8i) 分離為兩顆獨立芯片。
    *   **TPU 8t (訓練芯片)：**
        *   為大規模模型訓練優化，提供 121 EFLOPS 的 FP4 算力，比上一代提升 2.8 倍。
        *   SuperPod 可擴展至 9600 顆芯片，芯片互連帶寬翻倍。
    *   **TPU 8i (推理芯片)：**
        *   為推理場景量身定制，支援數百萬並發智能體近乎零延遲運行。
        *   提供 11.6 EFLOPS 的 FP8 算力，比上一代提升 9.8 倍。
        *   集成了專用集合通信加速引擎，降低芯片延遲 5 倍。
    *   **供應鏈：** TPU 8t 由博通設計，TPU 8i 由聯發科設計，英特爾、Marvell 和台積電參與供應鏈。
*   **基礎設施升級：**
    *   **儲存：** Managed Lustre 支援高達 10TB/s 吞吐量。
    *   **網路：** 全新的 Virgo Network 可串聯 134,000 顆芯片，提供 47Pb/s 無阻塞帶寬，總算力達 170 萬 EFLOPS。
    *   **通用計算：** Axion N48 計算實例，基於定制 Arm CPU，提供最高 2 倍性價比及 80% 更優每瓦性能，為智能體提供持續運行底座。

#### **第二層：智能體數據雲 (Agentic Data Cloud)**

*   **核心理念：** 「沒有上下文的推理只是猜測...你承擔不起猜測的代價。」 – 卡爾蒂·納拉因（Karthik Narain）
*   **關鍵創新：打造「可信上下文」(Trusted Context)**
    *   **Knowledge Catalog：**
        *   企業通用上下文引擎，原生集成 BigQuery。
        *   Smart Storage 自動標記、增強、準備非結構化數據供智能體使用，無需數據工程。
        *   Gemini 驅動，自主提取實體、映射關係、學習企業專屬業務語義。
        *   零拷貝直接訪問 Palantir、Salesforce、SAP 等主流企業應用。
        *   與 Gemini Enterprise 的 Deep Research Agent 深度集成，執行多步推理，返回帶來源的商業答案。
    *   **Data Agent Kit：** 將 AI 數據科學能力直接集成到開發者工作環境 (如 VS Code)，透過自然語言聲明意圖即可構建數據管道和部署模型。
    *   **Lightning Engine for Apache Spark：** 提供領先的 Spark 性能，性價比是市場領導者的 2 倍。
    *   **Cross-Cloud Lakehouse：** 基於 Apache Iceberg 標準，分析引擎可直接推理任何雲 (AWS, Azure, SaaS) 中的數據，無需移動數據，消除供應商鎖定。
*   **價值展示：** 現場演示中，評估虛擬產品全球上市僅需 5 分鐘（傳統方式需 5 週），高效整合多源數據並提供決策。

#### **第三層：智能體安全防禦 (Agentic Defense)**

*   **核心挑戰：** 網路攻擊已進入「機器速度時代」，人類安全團隊反應不及。
    *   漏洞平均利用時間降至「負 7 天」。
    *   攻擊者從入侵到轉移權限僅需 22 秒。
*   **谷歌雲安全戰略：**
    *   **Gemini 原生智能體安全運營中心 (Agentic SOC)：**
        *   分類智能體將 30 分鐘調查縮短至 60 秒。
        *   威脅狩獵與檢測智能體主動掃描風險，速度和規模超越人類。
        *   結合 Mandiant、VirusTotal、Chrome 和暗網情報，以 98% 準確率識別外部威脅。
    *   **Wiz (雲安全平台，Google 斥資 320 億美元收購)：** 定位為全球首個 AI 應用保護平台 (AI-SPP)，解決 AI 時代四大安全挑戰。
        *   **Wiz 智能體體系：**
            *   **紅色智能體 (Red Agent)：** 像友好黑客，持續掃描外部暴露面，驗證風險。
            *   **綠色智能體 (Green Agent)：** 自動化風險分類與修復流程，定位代碼源頭，將修復方案推送給開發者或編碼智能體。
        *   德索薩（Francis deSouza）強調：「我們已徹底閉合了防禦者與構建者之間的循環。」
    *   **影子 AI 防禦：** 警告企業內「影子 AI」（未經授權的模型和智能體）是最大安全威脅，凸顯智能體管理和安全的複雜性。

#### **第四層：Gemini 企業智能體平台 (Gemini Enterprise Agent Platform)**

*   **核心定位：** 「智能體企業的任務控制中心」，解決如何管理數千個智能體的問題。
*   **模型矩陣：**
    *   **Gemini 3.1 Pro：** 針對複雜工作流編排優化。
    *   **Nano Banana 2：** 高保真視覺素材生成。
    *   **Veo 3.1 Lite：** 成本最優視頻模型。
    *   **Lyria 3 Pro：** 企業級音頻和音樂生成。
    *   同時接入 Anthropic Claude Opus 4.7。
*   **智能體工具鏈：**
    *   **Agent Studio：** 透過自然語言構建和部署智能體。
    *   **Agent Registry：** 統一控制點，索引企業內部智能體和工具。
    *   **Skills and Tools Registry：** 定義模塊化指令包，暴露所有 GCP 和 Workspace 服務能力接口。
    *   **Agent Marketplace：** 搜索和部署來自 Atlassian、Box、Oracle 等合作夥伴的專業智能體。
*   **關鍵基礎設施：原生集成 MCP**
    *   Google 將所有 GCP 服務暴露為 MCP 服務器，實現雙向打通。
    *   任何兼容 MCP 的智能體均可與 Google Cloud 服務交互，反之亦然，徹底打破智能體生態壁壘。
*   **安全與編排能力：**
    *   **Agent-to-Agent 編排：** 智能體之間無縫委派任務。
    *   支援生成式與確定性兩種編排模式，確保關鍵工作流可追溯。
    *   每個智能體擁有唯一的加密身份憑證 (Agent Identity)，全程可追踪、可審計。
    *   **Agent Gateway：** 集中管理，執行安全策略。
    *   **Model Armor：** 模型與企業數據間的防護層，防止敏感數據洩露。
    *   **Agent Observability：** 符合 OpenTelemetry 標準，可視化智能體執行路徑。
*   **智能體記憶問題：** Gemini Enterprise Projects 為智能體提供高保真專屬工作空間，運用 Deep Think 能力解決複雜業務挑戰，避免上下文污染。
*   **價值展示：** 現場演示中，一家全球家具零售商的運營人員僅需一個提示詞，多個智能體在數分鐘內協同完成市場調研、數據洞察、產品策略、任務創建、演示文稿生成等一系列工作。

#### **第五層：智能體特遣隊與 Workspace 智能層 (Agentic Task Force & Workspace Intelligence)**

*   **核心目標：** 直接面向員工與客戶，消除「上下文稅」（在多個應用間切換造成的浪費）。
*   **Workspace Intelligence：**
    *   統一智能層，利用 Gemini 推理能力連接 Gmail、Docs、Sheets、Slides、Chat 等所有信息節點，打破信息孤島。
    *   將 Google Chat 變成工作指揮中心，透過 Ask Gemini 快速定位緊急事項、文檔，自動生成完整的 Google Slides 演示文稿。
    *   新增微軟 365 互操作性，Canvas 文檔可直接導出為 Office 格式，將 Microsoft 365 遷移到 Google Workspace 的速度最高提升 5 倍。
*   **Agentic Task Force：**
    *   預建的專業化智能體，將智能體定義為「業務的戰略延伸」。
    *   核心產品包括購物智能體、食品訂購智能體、客戶互動智能體。
    *   全新的全渠道網關 (Omnichannel Gateway) 確保智能體在網頁、移動、語音等不同渠道間保持上下文連貫。

### **五、 客戶案例與實際應用**

Google Cloud 透過跨多層架構的標杆客戶案例，展現了智能體系統的實際落地能力：

*   **NASA 阿爾忒彌斯 2 號 (Artemis II)：** 運用 Gemini Enterprise 智能體支持飛行準備和宇航員安全保障。
*   **維珍郵輪 (Virgin Voyages)：** 透過 Project Ruby (個人禮賓智能體) 縮短生產週期 60%，月銷售增長 28%，未來將串聯維珍航空、酒店、郵輪服務。
*   **聯合利華 (Unilever)：** 透過 Gemini Enterprise 平台和數據智能體工具包，構建競爭性採購多智能體解決方案，將數天的採購分析縮短至數分鐘。
*   **霍尼韋爾 (Honeywell)：** 運用超過百萬產品規格訓練數字孿生，為建築管理生成數十億條洞察。
*   **利物浦 (Liverpool)：** 線上購物助手預計投資回報率達 10 倍。
*   **美國臨床腫瘤學會 (ASCO)：** 運用 Gemini Enterprise 加速癌症診療專業知識觸達一線醫生。
*   **默克 (Merck)：** 將 Gemini Enterprise 推廣至 75,000 名員工。
*   **德國保險公司 SIGNAL IDUNA：** 數週內達到 80% 採用率，11,000 名員工自主構建智能體，健康智能體回答速度提升 37%。
*   **博世 (Bosch)：** 全球部署 Gemini Enterprise，員工可定制智能體，投入更多複雜研究。
*   **畢馬威 (KPMG)：** 首月採用率 90%，部署超 100 個智能體。
*   **花旗財富管理 (Citi Wealth)：** 推出全天候 AI 財富助手 Citi Sky，支援多語言。
*   **體育領域 (肖恩·懷特)：** Google Cloud 與 DeepMind 合作構建 3D 姿態追踪模型，分析運動員三維姿態，提升訓練科學性。

### **六、 谷歌雲的開放戰略與「三大自由」**

托馬斯·庫里安以「三大自由」總結 Google Cloud 的開放戰略：

1.  **選擇芯片和模型的自由：** 平台同時提供自研 TPU 8 系列和 NVIDIA Vera Rubin NVL72，以及 Gemini 3.1 Pro 與 Anthropic Claude Opus 4.7，企業可按需選擇。
2.  **在數據所在之處運行 AI 的自由：** 跨雲湖倉可直連 AWS 和 Azure，數據無需搬遷，在原地即可進行 AI 分析。
3.  **透過治理功能掌控自身命運的自由：** Agent Identity、Agent Gateway、Model Armor 等一系列管控能力，將安全與治理的權力完全交還給企業自身的安全團隊。

*   **生態合作夥伴擴展：** Accenture、Boston Consulting Group、Deloitte、McKinsey 宣布擴展 Google 與 Gemini AI 實踐。Quantiphi、Distill、Tribe.ai 等 AI 服務夥伴也加入，幫助 ISV 和 SaaS 公司透過 Gemini Enterprise 智能體平台改造解決方案，將 AI 能力全面推向中小企業。

### **總結與展望**

Google Cloud Next 2026 大會發布的，不僅僅是一系列新產品，而是一套**完整的企業智能體操作系統**。從 1800 億美元量級的基礎設施投入，到第八代 TPU 的芯片革命，從可信數據上下文的構建，到機器速度的安全防禦，從統一的智能體管控平台，到每一位員工都能用的生產力升級，五層藍圖層層咬合，旨在徹底解決企業 AI 從試點到規模化的所有核心瓶頸。

過去我們說「雲是企業的基礎設施」，未來，「**由智能體驅動的雲，可能就是企業的作業系統**」。Google Cloud 已經給出了它的答案，而整個科技行業和所有企業的 AI 轉型，或許都將因此進入一個全新的階段。

---

希望這份整理能幫助您清晰地理解 Google Cloud Next 大會的精髓！

[model=gemini-2.5-flash,0]
