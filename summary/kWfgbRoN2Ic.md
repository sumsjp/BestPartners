好的，這是經過整理的文稿，重點更清晰，結構更順暢：

**主題：LangChain 創始人兼 CEO 哈里森·蔡斯 (Harrison Chase) 訪談重點整理**

**引言：**

大家好，我是大飛。休息幾天後，我回來了，今天要和大家分享 *No Priors* 播客節目對 LangChain 創始人兼 CEO 哈里森·蔡斯(Harrison Chase) 的訪談內容。無論您是 AI 技術愛好者、開發者或行業觀察者，都建議觀看此節目，了解哈里森的觀點。

**LangChain 簡介：**

LangChain 是一個非常流行的開源框架和開發者工具包，可幫助開發者構建基於大型語言模型的應用程序。目前 LangChain Python 開源庫的 Github star 已超過 8.3 萬顆，fork 人數將近 1.3 萬。

**LangChain 的起源與發展：**

*   **個人業餘項目：** LangChain 最初只是哈里森的一個業餘愛好項目。在 2022 年秋季，他頻繁參加黑客松和各種聚會，與研究大型語言模型的人交流，看到了一些共同的抽象概念，於是將其開源。
*   **爆發式成長：** ChatGPT 發布一個月後，項目發展超出預期。
*   **產品演進：**
    *   LangChain 開源工具包
    *   LangSmith 平台 (專注於測試、評估和監控等功能)
*   **持續進化：**
    *   從最初基於研究論文和 NatBot 的 Agent 網絡爬蟲的實現，到與 OpenAI、Cohere 和 HuggingFace 等公司的集成。
    *   現在支持 700 多種不同的集成，還開發了多個用於特定功能的高級鏈和 Agent。
    *   上層組合組件的方式和構建應用的模式也在快速變化，從簡單的鏈到複雜的鏈，再到類似自主 Agent，再到現在的複雜狀態機或者圖。

**LangChain 的技術重點：**

*   **底層抽象和運行時：** LangChain 非常重視低層次的抽象和運行時，在底層運行時投入了大量的資金，重點保證了流處理、結構化輸出等基礎組件的相對穩定。
*   **連接不斷變化的大模型和向量儲存等組件**

**哈里森對 Agent 的看法與挑戰：**

哈里森認為 Agent 現在還面臨著幾個關鍵的挑戰：

*   **使用者體驗：** 如何為技術找到合適的使用者體驗，如何向終端用戶傳達 Agent 的長處和短處，如何讓用戶糾正錯誤並且了解發生了什麼。
*   **底層大語言模型的規劃能力：** 如何將任務分解成許多小部件，並融入自己對信息流動方式的理解。大語言模型本身的局限性使其還無法完全推理出信息應該如何流動。目前學術領域的研究分為 Agent 的規劃步驟和 Agent 行動後的反思。
*   **構建 Agent 的最佳實踐：** 如何在不同節點間正確地流動信息，是選擇少量提示，還是選擇微調模型，還是去改進指令和提示？如何測試這些節點？

**記憶功能：**

哈里森認為 Agent 的記憶功能有兩種：

*   **系統級程序記憶：** 找到使用工具的正確方法是什麼，實現這一目標的正確方法是什麼，不考慮使用者是誰。解決方案包括使用少量提示和微調。這也是目前在 LangSmith 上大力推廣的一種方法。
*   **個性化記憶：** 當用戶提出問題的時候，記得個人喜好。實現方式包括主動循環（Agent 決定記住或忘記什麼）和被動的後台程序（查看對話並提取洞察力）。

**人工智能應用發展的變化：**

*   **更高效的 Agent 應用程序和更複雜的多步驟 RAG 系統：** LangSmith 主要針對這些多步驟的應用。
*   **高級查詢分析：** 不僅僅將用戶的問題直接傳遞給嵌入模型，而是可能會對問題進行分析，來確定應該將問題發送給哪個檢索器。
*   **從鏈條式的 Agent 到自主 Agent：** 從有順序步驟的鏈條式 Agent 到 AutoGPT 這種在 for loop 中運行的自主 Agent。
*   **基於 Agent 的應用：**
    *   **客戶支持：** Sierra 提供了一個有趣的使用者體驗，但與聊天機器人不同，前者更注重解決問題。
    *   **編碼：** Cognition 的 Devin 演示令人印象深刻。
*   **大語言模型之間的輕鬆切換：** 可以根據提示從 Anthropic 模型切換到 Mistral，再到 OpenAI 等等。隨著模型逐漸變得更加智能，不同模型之間的提示語可能會逐漸趨同，這種切換會變得更加容易。

**關於模型切換的考慮因素：**

*   函數調用
*   視覺輸入
*   上下文窗口的長度
*   成本
*   延遲

**長上下文窗口 vs. RAG：**

*   **長上下文窗口：** 適合一次性從長的 PDF 文檔中提取元素，在長文本中尋找單一的信息點。
*   **RAG：** 強項在於處理和推理多個信息點。

**微調：**

真正進行微調的應用不多，主要是那些達到臨界規模的應用。微調面臨著数据集的收集和策划、微调模型的评估、以及无法快速迭代微调模型等等挑戰。

**开源模型：**

哈里森認為目前開源模型的推理能力還是落後於 Claude 3 或者 GPT-4。

**對未來的展望：**

哈里森認為應用程序和用戶體驗層面是個人很看好的方向，尤其是個性化的長期記憶。LangChain 本身也非常關注記憶功能，並且希望能夠在這個領域實現一些突破。

**持續學習：**

*   從交互的經歷中學習，例如建立一些示例數據集，並真正使用這些數據集。
*   讓應用程序隨著時間的推移自動變得更好，例如從錯誤和成功中學習。
*   通過輸入和輸出不斷地優化應用程序，例如斯坦福的 DSPy 項目。

**個性化：**

從一個為每個人提供相同服務的通用應用開始，逐漸學會以不同的方式為不同的用戶搜索網頁。

**總結：**

哈里森的訪談對 LangChain 的發展方向是一個很好的解讀。正如他在之前紅杉 AI 峰會上的分享一樣，他認為 Agent 的三大關鍵方向就是規劃、使用者體驗和記憶。LangChain 最近的一些更新也都是跟這些方面有關。我會持續關注 LangChain 的發展，跟大家分享更多有關哈里森和 LangChain 的內容。

**結束語：**

感謝大家的觀看，我們下期再見！

**整理說明：**

*   **精簡內容：** 去除了一些口語化的語氣詞，使文稿更正式。
*   **結構化：** 使用了標題、副標題、項目符號等，使文稿更易讀。
*   **突出重點：** 對關鍵信息進行加粗，方便讀者快速抓住重點。
*   **邏輯性：** 調整了部分內容的順序，使邏輯更清晰。
*   **專業性：** 使用更專業的術語和表達方式，提升文稿的專業性。

希望這個整理對您有幫助！

[model=gemini-2.0-flash,0]
