好的，我將這篇文稿整理如下，更著重重點，並將口語化的語氣轉為更正式的書面語：

**文稿整理：楊立昆（Yann LeCun）「從機器學習到自主智能」演講重點**

**引言**

本次分享內容為深度學習三巨頭之一楊立昆於9月29日在德國的最新演講，主題為「從機器學習到自主智能」。演講旨在闡述楊立昆對AI發展的總體思想，深入淺出，通俗易懂。內容經過精華提煉，以求在最短時間內呈現智者的思考。

**演講核心內容**

楊立昆在此次演講中主要探討目標驅動的AI，旨在打造具有學習、記憶、推理、計畫和常識，且可操控和安全的AI系統。

*   **AI的益處：**
    *   交通：輔助駕駛、自動駕駛可減少碰撞。
    *   藝術：降低創作門檻。
    *   醫學：3D圖像識別技術用於檢測乳腺X光中的腫瘤，MRI數據採集速度提高。
    *   科學研究：神經科學家利用人工神經網路描述大腦工作原理，物理學家基於AI描述粒子碰撞等現象，並驗證暗物質等理論。
    *   環境保護：利用AI模擬化學實驗。
*   **自監督學習的重要性：**
    *   自監督學習無需標注數據或人工干預，即可訓練系統理解數據和世界，在自然語言處理（NLP）領域尤為成功。
    *   範例：BERT模型（透過預測被刪除的文字訓練）。
    *   Dino V2：Meta開發的基礎視覺模型，經過訓練後，能夠從圖像中提取特徵，執行分類、深度估計等任務。
    *   應用：預測樹木高度，估算碳消耗量；AlphaFold預測蛋白質結構；Seamless翻譯200多種語言。
    *   提升內容審核效率：Facebook仇恨言論自動刪除比例從20%提升至95%。
*   **對大語言模型的看法：**
    *   現有大語言模型（如Llama、Llama2）展現卓越性能，但仍存在嚴重錯誤，不真正理解世界，只是被訓練成生成最有可能的單詞序列。
    *   問題：事實錯誤、邏輯錯誤、輸出不一致、缺乏推理能力、缺乏常識。
    *   預測：未來將淘汰自迴歸大語言模型，因其有明顯缺陷。
*   **目標驅動的AI架構（楊立昆提出的解決方案）：**
    *   感知模組（Perception）：感知世界，建立對當前世界狀態的估計。
    *   世界模型（World Model）：預測一系列行動的結果。
    *   演員模組（Actor）：想像動作，並將動作輸入到世界模型。
    *   成本模組（Cost）：代表系統的目標和整體目的，驅動整個系統，衡量不舒適度。
    *   目標：找到一個成本最小化的行動序列，確保系統產生安全的行為。
    *   分層規劃：人類和動物日常活動的基本特徵，但目前機器尚無法自動學習和確定行動計畫的合適層次。
*   **未來的挑戰：**
    *   機器從影片中學習世界模型。
    *   使用聯合嵌入型預測架構（JEPA）在表徵空間中進行預測。
    *   解決學習效率問題（例如，讓機器像青少年一樣快速學會駕駛）。
    *   達成貓級別的人工智能。
*   **對AGI（通用人工智能）的看法：**
    *   AGI是多維的，目前僅為誤導性概念。
    *   機器最終將在所有領域超越人類智能，但這需要數十年時間。
    *   無需過度擔憂機器接管世界，因為AI的發展將從小規模、低智能的模型開始，並在受控環境中進行安全測試。
*   **開源的重要性：**
    *   AI系統應開源，並以眾包方式收集全球知識，避免被少數人控制。
    *   開源有助於發展和應用人工智能，讓人類變得更聰明。

**總結**

楊立昆的演講核心為自監督學習和世界模型，關鍵在於聯合嵌入式的可預測架構（JEPA）。成本模組的實現至關重要，決定了預測結果。然而，目前世界模型面臨工程化問題，需要形成大量的模型，並優化改進。

[model=gemini-2.0-flash,0]
