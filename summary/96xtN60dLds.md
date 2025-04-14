好的，以下我將把文稿整理為更精簡、有條理的形式，並重點突出關鍵資訊：

**文稿重點整理：Etched AI 與 Sohu 晶片挑戰 NVIDIA**

**一、事件概要：**

*   新創公司 Etched AI，由三位哈佛輟學的 00 後創立，開發了一款名為 Sohu 的 ASIC 晶片，聲稱其針對 Transformer 架構進行了優化，性能比 NVIDIA 的 H100 快 20 倍。
*   Etched AI 完成 1.2 億美元 A 輪融資，投資人包括 Peter Thiel 等知名人士。
*   Sohu 晶片已獲得數千萬美元的硬體訂單。

**二、Etched AI 與 Sohu 晶片：**

*   **公司背景：**Etched AI 位於加州，僅 35 名員工。
*   **創辦人：**Chris Zhu、Gavin Uberti、Robert Wachen。
*   **Sohu 晶片：**
    *   ASIC 晶片 (Application-Specific Integrated Circuit)，專為 Transformer 架構設計。
    *   台積電 4nm 工藝製造，單核心，配備 144GB HBM3E 高頻寬記憶體。
    *   FLOPS 有效利用率超過 90%。
    *   採用「連續批次處理 (Continuous batching of prompts and completions)」技術，優化長輸入短輸出的 AI 應用。
    *   單張晶片可支持最高 100 萬億參數的大模型。
    *   在 Llama-3 70B 的推理上，比 H100 快至少 20 倍（基於 FP8 精度、無稀疏性、8 倍模型平行、2048 輸入長度、128 輸出長度的測試）。

**三、挑戰 NVIDIA 的原因：**

*   **摩爾定律放緩：**GPU 效能提升速度變慢，Etched AI 認為專用化 (ASIC) 是更好的解決方案。
*   **GPU 效率低落：**Etched 團隊指出，NVIDIA H100 只有 3.3% 的晶體管用於矩陣乘法，而 Sohu 晶片則專注於 Transformer。
*   **Transformer 架構普及：**AI 市場正在迅速整合為 Transformer 架構，Etched AI 認為專用晶片是趨勢。

**四、Sohu 晶片的優勢與應用：**

*   **簡化推理：**Sohu 晶片專注於 Transformer 模型，因此可以去除不必要的硬體和軟體開銷。
*   **應用前景：**
    *   加速視訊生成。
    *   實現即時語音對話。
    *   提升程式碼編寫和文本生成速度。

**五、創業故事與賭注：**

*   創辦人於 2022 年休學創業，當時 Transformer 尚未成為主流。
*   Etched AI 押注 Transformer 將席捲全球，ASIC 晶片將成為必然趨勢。
*   ChatGPT 的爆紅驗證了他們的判斷，Transformer 市場規模迅速擴大。

**六、未來展望：**

*   Etched AI 認為專用晶片將佔領 Transformer 市場。
*   投資人看好 Etched AI 解決了可擴展性問題，挑戰了效能停滯的現象。
*   挑戰 NVIDIA 的壟斷地位仍然充滿挑戰。
*   ASIC 市場具有潛力，但僅憑技術優勢不足以擊敗 NVIDIA。

**七、總結 (原稿作者觀點)：**

*   ASIC 晶片有其優勢，能解決現有大模型的痛點。
*   挑戰 NVIDIA 仍非常困難，資本市場競爭激烈。
*   不排除 NVIDIA 收購 Etched 的可能性。

**重點說明：**

*   我已精簡文字，避免重複資訊。
*   我整理了各個部分，讓邏輯更清晰。
*   我將重要的資訊以粗體標示，方便閱讀。

這個整理版本可以幫助您快速掌握文稿的核心內容，並了解 Etched AI 的技術、市場策略以及面臨的挑戰。 如果您需要更深入的分析或對特定部分進行擴充，請隨時告訴我。

[model=gemini-2.0-flash,0]
