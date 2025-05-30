好的，我來幫你整理這篇文稿，主要目標是讓內容更清晰、更有邏輯，並且更易於閱讀。我會著重在以下幾個方面：

*   **分段整理：** 將文稿按照內容主題進行分段，使其結構更清晰。
*   **提煉重點：** 突出謝賽寧團隊研究的核心觀點和成果。
*   **語言精簡：** 簡化部分語句，避免冗餘，使表達更精煉。
*   **術語解釋：** 對於重要的專業術語（例如CLIP、ViT、MMVP等）進行簡要解釋。
*   **結構化呈現:** 使用標題、列表等方式，使信息更易於消化。

以下是整理後的文稿：

**謝賽寧團隊多模態大模型研究：探索視覺缺陷與引導式視覺搜索**

大家好，這裡是最佳拍檔，我是大飛。隨著大模型技術的快速發展，多模態和計算機視覺領域的研究迎來了新的時代。GPT-4V等強大的多模態模型，使得我們能夠利用大語言模型的輔助，在一些傳統計算機視覺難以解決的問題上取得突破。

6月15日，在智源大會的「多模態大模型」論壇上，紐約大學助理教授謝賽寧從哲學角度出發，分享了針對大語言時代的視覺表徵研究。他的團隊帶來了兩篇最新的研究論文，分別探索了多模態大型語言模型的視覺缺陷、基於視覺搜索引導的多模態大模型，以及真實世界中的虛擬智能落地等議題。

**一、論文一：大開眼界？探索多模態大語言模型的視覺缺陷（Eyes Wide Shut? Exploring the Visual Shortcomings of Multimodal LLMs）**

這篇論文主要探討了多模態大語言模型中存在的視覺缺陷。

*   **研究背景：** 團隊關注OpenAI在2021年發布的多模態視覺和語言模型CLIP（Contrastive Language-Image Pre-training），該模型使用類似ViT（Vision Transformer）的轉換器獲取視覺特徵，並使用因果語言模型獲取文本特徵。儘管後續出現了許多更強大的語言模型，但視覺編碼器仍普遍使用CLIP ViT及其公開的權重。
*   **研究問題：** 三年前的CLIP在多模態技術快速發展的今天是否還夠用？現有的視覺表徵學習系統對於語言理解是否足夠好？
*   **研究方法：** 團隊收集了GPT-4V的失敗案例，並通過「CLIP-blind Pairs」方法構建了一個新的對比基準「MMVP」（Multimodal Vision Performance）。
    *   **MMVP構建：** 從ImageNet、LAION等數據集中找出相似度很高的小狗照片等成對圖像。
    *   **特徵提取：** 使用CLIP和自監督方式訓練的純視覺模型分別提取圖像對的嵌入特徵。
    *   **相似度度量：** 在兩個特徵空間中度量圖像對中兩張圖像的嵌入距離，確保圖像對在CLIP嵌入空間下相似度高，而在純視覺模型特徵空間下相似度低。
    *   **人工標注：** 要求人類標注者寫出圖像對之間具體的視覺差異。
*   **研究結果：**
    *   在MMVP基準測試中，人類以95.7%的超高分遙遙領先於任何大模型。
    *   AI容易犯錯，團隊總結出了9類多模態系統會犯錯的典型模式。
    *   通過向CLIP編碼器得到的特徵中加入自監督方法訓練的純視覺編碼器的特徵（例如附加式混合特徵Additive MoF和交錯式混合特徵Interleaved MoF），可以在MMVP上取得性能提升。
*   **研究結論：** 社區急需比CLIP更強的繼任者，在保持CLIP優點的同時彌補其不足。視覺自監督學習仍然具有很高的研究價值，視覺基礎對於語言理解和語義表示也十分重要。

**二、論文二：V*：引導式視覺搜索作為多模態大語言模型的核心機制（V*：Guided Visual Search as a Core Mechanism in Multimodal LLMs）**

這篇論文從另一個角度研究了視覺與語言模型的融合。

*   **研究背景：** 現代多模態語言模型的視覺信息瓶頸在於，人們仍然使用在小規模圖像數據上預訓練的編碼器。AI無法像人類一樣將注意力集中在需要重點關注的關鍵視覺信息上。
*   **研究思路：** 借鑒人類的視覺搜索機制，人類的視覺認知系統通過視覺搜索重點關注目標，同時選擇性忽略背景和不重要的部分。
*   **研究框架：** 團隊提出了SEAL（Show, sERach, telL）框架，旨在將視覺搜索能力融入到多模態大模型中。
    *   **SEAL架構：**
        1.  VQA大語言模型：人與系統交互的接口。
        2.  視覺工作記憶VWM：存儲原始問題、全局上下文、視覺搜索結果等信息。
        3.  視覺搜索模塊：借助多模態語言模型搜索視覺線索，並輸出搜索到的線索和目標位置。
*   **研究方法：** 通過递归地对图像做不停的切分，实现视觉搜索。
*   **研究結論：** 視覺搜索能力對於處理長視頻數據、3D、類人智能體數據而言可能非常關鍵。

**三、V-IRL：將虛擬AI角色搬到現實生活**

謝賽寧團隊還發布了一個名為V-IRL的系統，將虛擬AI角色搬到了我們的現實生活中來。團隊在V-IRL項目中創建了不同的Agent，它們有自己的行為、性格，並且在真實環境下進行部署。這些Agent上部署有大語言模型、視覺模型，是一套將語言與視覺融合到一起、較為複雜的系統。通過將Agent部署到真實世界中，團隊發現了許多新的难题，例如，当部署场景的语言环境发生变化之后，Agent的性能会变得很差等等。

**總結**

謝賽寧團隊的研究成果涵蓋了多模態大語言模型的視覺缺陷、引導式視覺搜索以及真實世界虛擬智能落地等多個方面，為計算機視覺研究領域提供了重要的參考。

感謝觀看，我們下期再見。

**說明:**

*   我對一些段落進行了拆分和合併，使其更具邏輯性。
*   我使用粗體來突出重點，方便快速閱讀。
*   對於一些技術術語，我進行了簡單的解釋。

希望這個整理版本能幫助你更好地理解文章內容。如果你有其他需要修改的地方，請隨時告訴我。

[model=gemini-2.0-flash,0]
