好的，我將盡力將文稿整理得更清晰、更有條理。

**整理後的文稿：**

**引言**

*   大家好，這裡是最佳拍檔，我是大飛。
*   本期探討AI對齊問題，尤其是AI如何與人類價值觀對齊。

**核心議題：AI 對齊到底有多難？**

*   深入探討Anthropic 實驗室四位核心科學家在一場名為《AI對齊到底有多難？》的主題沙龍中，所分享的關於 AI 對齊的深刻見解。

**專家介紹**

*   **亞歷克斯·塔姆金（Alex Tamkin）：**負責社會影響研究
*   **喬什·巴特森（Josh Batson）：**鑽研大模型可解釋性
*   **阿曼達·阿斯凱爾（Amanda Askell）：**研究方向為對齊微調
*   **揚·萊克（Jan Leike）：** Anthropic 對齊科學負責人，前OpenAI員工。

**專家觀點**

**1. 阿曼達·阿斯凱爾（Amanda Askell）**

*   **對齊的理解：**
    *   主張務實的對齊方式，先確保系統良好運行，再迭代優化，而非一開始追求完美對齊概念。
    *   模型應表現得像一個有良好道德素養且善意的人類，並權衡自身言論對用戶的影響。
*   **價值觀植入：**
    *   不能簡單地將它類比為給人類注射一針“價值觀血清”。
    *   人類擁有多元的價值體系，會在不同的價值間進行權衡，倫理學具有經驗性，需要在不確定性中探索。
    *   若遇到一個對自身道德觀完全確信的人或AI，無論道德觀為何，都會令人感到恐懼。
    *   模型應保持對各種價值觀的開放態度，具備思考和調適能力，而非被強加或投票決定。
*   **對齊的迭代優化：**
    *   需要在實踐中讓模型參與自我監督，借助模型的協助才能審查龐大的對話記錄。
    *   傾向於先確保有一個高對齊程度的模型，來輔助後續的迭代。

**2. 揚·萊克（Jan Leike）**

*   **對阿曼達觀點的回應：**
    *   阿曼達的方法在當前模型的性格塑造工作中比較實用。
    *   但是當模型執行複雜任務，例如現實世界獨立活動、進行長期決策、生物研究時，如何確保模型的安全性就成了未知數（超級對齊問題）。
*   **可擴展監督的研究方向：**
    *   他正在探索多智能體動態系統。
    *   對齊研究的自動化是一個有希望的方向，但也引出新的問題。
*   **在無法直接審查模型行為，以及提供明確對齊信號時：**
     * 可以利用模型協助工作，但核心是要建立對這些模型的信任，並引導這個過程。

**3. 喬什·巴特森（Josh Batson）**

*   **可解釋性研究：**
    *   是防範模型破壞對齊過程的一個重要策略。
    *   關鍵在於理解模型為什麼能在多個合理選項中做出特定的選擇，並驗證這些解釋的可靠性。
    *   深入觀察模型內部，識別各個組成部分，評估這些部分在其他場景中的應用是否符合預期。
*   **如何區分模型的真正善意特征和“在人類觀察時表現善意”的伪装特征：**
    *   極具挑戰性，因為很多特征具有“欺騙性”。
    *   Anthropic社會影響團隊的研究就顯示有些看似是“反對年齡歧視”的特征深入分析後卻是“支持年齡歧視”的，反之亦然。
    *   需要一個相對公正的監督模型，觀察大量的样例。
*  **中期過程不再使用自然語言表達，而變成由深度強化學習獲得的、難以理解的形式時:**
    *  如何確保整個過程的安全性就成了一個重大難題

**4. 三位專家共同探討**

*   **模式生物研究：**通過研究指定的模式生物來揭示普遍的生命規律。AI 領域可以創造出具有欺騙性或未對齊特征的模型，通過觀察模型的行為，來了解創造這樣模型的難度和能力邊界，以及能否修正它們。
*   **模型的稳健性是一个重要的判断标准：**通過性格訓練能讓有問題的模型重新表現良好，可能就預示著相對樂觀的情況；反之，如果只是表面改變，則挑戰更為嚴峻。
*   **如何區分模型是表面對齊還是深度對齊的:** 可以通過可解釋性研究、建立紅隊藍隊對抗性驗證機制等方法。

**觀眾提問環節**

*   **問題 1：** 通過API來構建多智能體的思辨系統，卻發現因為對齊機制的限制而停滯不前。
    *   **阿曼達·阿斯凱爾的回應：**實現深度思考不一定需要多智能體，智能體系統越分散，不確定性越大，預測和控制的難度也越高。模型中的倫理推理更應該接近單一模型的深度思考過程。
*   **問題 2：** 模型如何與社會進行互動關聯，以及如何應對系統性的附帶效應。
    *   **亞歷克斯·塔姆金的回應：**考慮安全性和對齊問題需要一種系統性的思維，讓模型接觸更的多場景。
    *   **阿曼達·阿斯凱爾的回應：**在讓模型響應個體用戶的需求，以及與整體人類利益保持一致之間，存在著根本性的張力。模型應該在一定程度上更傾向於對整個人類社會負責，這需要在個體需求和集體利益間找到平衡。
*   **問題 3：** 在座各位專家的研究都成功，是否就能構成解決AI安全的完整方案？
    *   **揚·萊克的回應：**今天的討論只是對齊研究領域一個的縮影，還有很多其他的研究者在努力。模式生物研究、防范“越獄”的穩健性研究、控制理論研究、信任與安全研究等等都是構建安全 AI 系統不可或缺的部分。
    *   **阿曼達·阿斯凱爾的回應：**不能簡單地認為找到對齊的解決方案就萬事大吉，隨著技術發展，很可能會出現新的挑戰，過早宣稱問題已經解決無疑是危險的。

**关于模型中的“涌现”现象**

*   **揚·萊克的舉例：**GPT - 4能夠熟練地讀寫 base64 編碼，而GPT - 3.5卻做不到。
*   **喬什·巴特森：**检查点checkpoint的重要性，应该通过合理地设置检查点来监测模型能力的变化。
*   **揚·萊克和喬什·巴特森共同提到：**模型在處理 base64 編碼時的特征具有一定的普適性，无论模型是在用base64讨论加利福尼亚还是在讲述关于孩子对父母撒谎的故事，激活的神经元模式都是相似的，这提醒我们直接告诉模型“做对人类最有利的事情”，可能会带来意想不到的收获。

**總結**

*   AI 的安全問題不斷引發大家關注，“AI教父”傑弗里·辛頓不斷警示。
*   Anthropic 作為頭部的 AI 科技公司，以宣稱安全的 AI 起家，投入巨大，不斷有專家加入。
*   從Anthropic經常公開的專家訪談中，大致了解世界前沿AI進展水平，以及我們距離安全的AI究竟還有多遠。
*   感谢大家的观看，我们下期再见

**改进说明：**

*   **结构化：** 使用了标题、子标题和项目符号，使内容层次分明，易于理解。
*   **提炼要点：** 提取了每个专家的核心观点，避免冗余。
*   **明确问题与回答：** 清晰地呈现了观众提问以及专家的回应。
*   **逻辑性：** 按照沙龙的讨论顺序整理内容，保持逻辑连贯性。
*   **补充说明：** 增加了一些解释性的内容，例如对“模式生物研究”的解释，帮助读者更好地理解。

希望这个整理后的版本对您有帮助!

[model=gemini-2.0-flash,0]
