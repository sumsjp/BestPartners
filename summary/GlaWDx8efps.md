好的，這是一份整理過的文稿，重點更清晰、結構更分明，更像一份報告：

**標題：白宮主導AI安全承諾與Token層面水印技術解析**

**引言：**

*   簡介：最佳拍檔頻道，我是大飛。
*   本期主題：
    *   白宮召集AI公司商討AI安全發展並達成自願承諾。
    *   AI生成內容Token層面水印技術。

**一、白宮AI安全承諾**

*   **背景：**Llama 2發布後兩天（7月21日），白宮主導召集七家領先AI公司。
*   **參與公司：**亞馬遜、Anthropic、谷歌、Inflection、Meta、微軟和OpenAI。
*   **目標：**實現「人工智能技術安全、可靠和透明的發展」。
*   **結果：**各公司與白宮達成一致，發表自願承諾書。
*   **核心原則：**安全、保障、信任。
*   **性質：**美國監管層對AI公司問詢的一次間接性「成果展示」，框架性，執行層面意義有限。

**承諾書重點內容：**

1.  **確保產品安全性：**
    *   發布前進行內部、外部安全測試。
    *   與行業、政府、民間社會和學界共享管理AI風險的信息。（所有公司同意）
2.  **搭建「安全第一」的AI系統：**
    *   投資網路安全和內部威脅防護。
    *   保護專有與未發布模型的權重，僅在考慮安全風險時公開。
    *   建立報告機制，鼓勵第三方即時反饋漏洞，迅速解決問題。
3.  **贏得公眾信任：**
    *   開發技術機制，確保用戶可識別AI生成內容（如水印系統）。
    *   公開AI系統的功能、局限性和適用範圍，警示安全風險和社會風險。
    *   優先研究AI系統的社會風險（偏見、歧視、隱私保護）。
    *   推出專門AI，減輕這些危險，解決社會問題（癌症預防、氣候變化）。

*   **OpenAI的承諾：**
    *   內容與白宮聲明一致，但更細緻。
    *   承諾僅適用於比目前行業前沿更強大的生成模型（GPT-4、Claude 2、PaLM 2、Titan、DALL-E 2等）。
    *   不包括開源模型。
*   **最有實際意義的承諾：**
    *   給AI生成內容加水印。

**二、Token層面水印技術**

*   **背景：**AI檢測器相關話題。
*   **與傳統水印的區別：**非圖片加字，不易被AI消除。
*   **馬里蘭大學研究：**高效水印技術，可在短token跨度內檢測合成文本（僅需25個token）。
    *   誤報率極低（人類文本誤判為機器生成）。
    *   水印對人類不可察覺，但可通過算法識別。

**水印技術要求：**

1.  檢測無需調用大語言模型API或知道模型參數。
2.  模型無需額外訓練。
3.  即便只有很小一段生成文本也可檢測。
4.  除非大幅修改，水印無法被移除。
5.  可計算嚴格統計量。

*   **Stanford Vicuna模型應用：**13B參數模型已應用該框架。

**原理概要：**

*   詞表隨機切分成紅色token集合和綠色token集合。
*   模型輸出時，對綠色token集合添加權重，傾向輸出綠色token。
*   檢測階段結合紅色和綠色token集合進行統計，計算統計量判斷是否含水印。

**2.1 低熵序列的問題：**

*   **定義：**提示語強烈決定後續序列內容。
*   **舉例：**
    *   "The dog sat on the..."
    *   C語言循環代碼
*   **問題：**
    *   機器和人類生成相似文本，難以區分。
    *   插入水印困難，任何改動都可能導致高困惑度和非預期token。

**2.2 水印方法思路：**

*   **硬水印 (Hard Watermarking):**
    *   簡單嵌入，根據生成序列預測下一個詞的概率向量。
    *   根據生成序列最後一個單詞確定隨機種子。
    *   根據隨機種子確定綠色集合和紅色集合的切分。
    *   只從綠色集合中挑選token，忽略紅色集合中的token。
    *   **缺點：**嚴重影響文本質量。
*   **軟水印 (Soft Watermarking):**
    *   根據模型輸出的logits向量，對屬於綠色集合的token增加常數delta，提高權重。
    *   更靈活，不會顯著降低文本質量，保證低熵情形下模型的正確輸出。

**2.3 检测阶段统计量计算：**
*公式略。

*   **標準：**當z>4時，判定為機器生成（假陽率3 x 10^-5）。
*   **硬水印：**T>16即可判定。
*   **軟水印：**需考慮文本熵，低熵文本需更長長度才能判斷。

**2.4 實驗部分：**

*   **數據集：**C4新聞數據集。
*   **方法：**從尾部切分成多個定長序列作為baseline。
*   **策略：** Greedy或Beam Search。
*   **結果：**
    *   水印強度和文本質量負相關（帕累托最優問題）。
    *   綠色集合較小（0.1）時，整體達到帕累托最優。
    *   Beam Search和水印方法有協同作用，8-way Beam Search對文本質量影響很小。
    *   水印強度隨token數量上升。

**2.5 消除水印/攻擊水印的方式：**

1.  **文本插入攻擊：**添加紅色集合中的token，改變下游token的紅色集合計算。
2.  **文本刪除攻擊：**刪除token，可能刪除綠色集合中的token，修改下游token。
3.  **文本替換攻擊：**用另一token替換，可能替換成紅色集合中的token。

**攻擊類型分類：**

*   **改寫攻擊 (Paraphrasing Attacks):**
    *   人為替換詞語或利用較弱的語言模型。
    *   但攻擊者必須使用一個較弱的語言模型來更改文本，但这会降低水印的强度和语言文本的质量.
*   **精心替換攻擊 (Discreet Alternations):**
    *   插入多餘空格或錯誤拼寫，改變哈希值。
    *   成熟的水印檢測器應能先正規化文本。
*   **令牌攻擊 (Tokenization Attacks):**
    *   修改文本，改變底層token。
    *   比如将 “life.\nVerrilius” 修改为 “life.Verrilius”

**結論：**

*   **水印算法特性：**
    1.  檢測無需模型參數知識或API訪問，算法可開源，檢測廉價快速。
    2.  可使用標準語言模型生成水印文本，無需重新訓練。
    3.  可從生成文本的連續部分檢測，即使只使用一部分也可檢測。
    4.  不修改相當比例的生成token，無法去除水印。
    5.  可用嚴格統計方法衡量水印是否被檢測到。
*   **未解決問題：**
    *   圖片和視頻流媒體水印添加。
    *   短跨度水印文本位於較長非水印文本中的測試。
*   **研究意義：**
    *   水印可成為對抗惡意使用生成模型的實用工具。
    *   大模型生成內容的水印算法有待探索。

**結語：**

*   能力有限，歡迎指正錯誤或缺漏。
*   歡迎提出研究意見，在評論區討論。
*   感謝觀看，下期再見。

**重點說明：**

*   將承諾書的重點內容用數字編號列出，更清晰。
*   攻擊水印的方式也分類列出，方便理解。
*   技術細節部分簡化，重點突出結論。

希望這份整理過的文稿對您有所幫助！

[model=gemini-2.0-flash,0]
