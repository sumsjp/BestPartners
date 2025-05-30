好的，我來為您整理這份文稿。我將專注於提升結構、清晰度和可讀性，並保留原稿的風格與信息。

**整理後的文稿：**

**標題：人形機器人領域重大突破：Figure AI推出通用視覺語言動作模型Helix**

**引言**

大家好，這裡是最佳拍檔，我是大飛。

最近，人形機器人領域迎來了重大突破，它可能改變我們未来的生活方式。想像一下，未來回到家，不再需要自己做家務，而是有個人形機器人夥伴，能聽懂你的話，默契配合，把家裡收拾得井井有條。這聽起來是不是很像科幻電影裡的場景？但現在，它正在逐漸成為現實。

美國人形機器人獨角獸Figure AI在2月21日重磅推出了一款通用視覺語言動作（VLA）模型——Helix。這個模型克服了機器人技術領域的多項長期挑戰，讓兩個人形機器人能夠聽從語音指令，互相幫助，搭伙幹家務活兒。

今天，我們就來深入聊聊這個模型。

**Figure AI與Helix模型的背景**

其實我們頻道之前已經做過幾期介紹Figure AI的視頻了，包括最早的Figure 01和Figure 02機器人。最近這家公司比較有熱度的一個消息是，在2月5日，Figure的創始人兼CEO布雷特·阿德科克（Brett Adcock）在推特上宣布終止與OpenAI的合作協議。他表示Figure在完全自主研發的端到端機器人AI方面取得了重大的突破，還預告接下来的30天內會展示一些人們從來沒有在人形機器人上見過的東西。

而今天我們要說的Helix模型，就是他們這段時間努力的成果。根據布雷特·阿德科克介紹，團隊花了一年多的時間研發出了Helix，它的出現給人形機器人領域帶來了新的希望。

**Helix模型的厲害之處：多項業界首次**

那Helix模型到底有哪些厲害的地方呢？它創造了多項業界的首次紀錄：

*   **全上半身的靈活操控：** Helix是首個能夠對仿人機器人的完整上半身（包括手腕、軀幹、頭部、每根手指）實現高速連續控制的VLA模型。這意味著機器人的上半身可以像人類一樣靈活地運動，做出各種精細的動作。在測試中，機器人成功地處理了雜亂無章的數千件新物品，從玻璃器皿和玩具到工具和衣服，而且在處理這些物品的時候，機器人的上半身各個部位都能夠協調運作，完成抓取、放置等動作，同時動作非常流暢自然。

*   **多機器人協作：** Helix首次讓雙機器人系統協同完成長期的複雜任務。在Figure AI分享的視頻中，當人類當面說出整理雜物的要求之後，兩個機器人在從來沒有見過這些物品的情況下，通過推理能力，能夠協作將這些物品擺放歸位。它們把雞蛋、番茄醬等需要冷藏保鮮的物品放進冰箱，把水果放進果盒，以及把零食收進抽屜裡。在協調過程中，機器人用頭部平穩地跟蹤雙手，同時調整軀幹來確定最佳的觸及範圍，同時保持精確的手指控制來進行抓握。這種協作能力在以前的人形機器人中是很少見的，它們就像兩個配合默契的夥伴，一起完成任務。

*   **萬物皆可抓取：** 機器人現在只需要一句自然語言指令，就能抓取幾乎所有的家庭小物件，包括數千種在訓練中從來沒有接觸過的物品。當提示“撿起沙漠物品”的時候，Helix不僅會識別出玩具仙人掌符合這個抽象的概念，還會選擇最近的手，並且執行所需的精確運動命令，牢牢地抓住它。這說明Helix模型具有很強的泛化能力，能夠理解抽象概念並做出相應的動作。

*   **單一模型學習所有技能：** Helix僅用一套神經網路參數就能學習所有的技能，像取放物品、開關抽屜冰箱、跨機器人交互等等，無需任何任務專屬微調。這和以往的技術大不相同，以前的技術往往需要針對不同的任務進行複雜的調整，而Helix大大簡化了这个過程。

*   **低功耗嵌入式GPU商業部署：** Helix是首個完全運行在低功耗嵌入式GPU上的VLA系統，已經具備直接商業部署能力。這意味著它可以更快地進入市場，走进我们的生活。以前很多先进的技术，因为无法商业化而只能停留在实验室阶段，而Helix则让它们离我们的生活更近了一步。

**Helix模型的技術架構：系統1+系統2**

之所以Helix模型能有這麼強大的功能，應該說和它獨特的技術架構分不開。Helix采用了“系统1+系统2”的架构来实现对人形机器人上半身的高速精准控制。

以前的方法存在一些问题，比如说VLM骨干网络虽然通用，但是速度慢；机器人视觉运动策略虽然速度快，但是通用性却不行。而Helix通过两个互补的系统S2和S1来权衡，这两个系统都经过了端到端训练，可以互相进行通信。

*   **S2（慢思考）：** 基於7B參數的開源VLM，它在互聯網規模數據上進行了預訓練，在潛在視覺語言空間中進行“慢思考”，以7到9Hz的頻率運行，負責場景理解與語義理解，確保跨物體、跨場景的泛化能力。比如說，在整理雜物的場景中，S2會分析環境中的各種物品，理解人類的指令，判斷哪些物品需要放進冰箱，哪些需要放進抽屜等等。
*   **S1（快思考）：** 80M參數的交叉注意力編解碼Transformer，負責處理低級的控制，可以“快速思考”，將S2的潛在語義表徵轉化為精確的連續機器人動作，以200Hz頻率協調35個自由度動作空間，從而控制完整的機器人上半身，實現毫秒級的實時響應。在兩個機器人協作傳遞物品的時候，S1能夠快速適應機器人夥伴不斷變化的動作，做出細粒度運動調整，同時保持S2的語義目標。

和現有的方法相比，Helix採用的這種設計有很多優勢：

*   **速度與泛化：** Helix能夠匹配專門的單任務行為克隆策略的速度，同時將零樣本泛化到數千種新測試物品。
*   **可擴展性：** Helix會直接輸出高維動作空間的連續控制，避免了先前VLA方法中使用的複雜動作標記方案。
*   **解耦迭代：** 將S1和S2解耦，可以分別在每個系統上進行迭代，從而不受到尋找統一的觀察空間或動作表示的限制。

**Helix模型的訓練方式與效率**

Helix以極少的資源實現了強大的物體泛化。它總共使用了大約500小時的高質量監督數據來進行訓練，這只佔了先前收集的VLA數據集規模的不到5%，而且不依賴於多機器人實體收集或者多訓練階段。

*   **訓練數據生成：** Figure AI使用了自動標註的VLM來生成事後指令。VLM會處理來自機載機器人攝像頭的分段視頻片段，並且提示“你會給機器人什麼指令來執行視頻中看到的動作？”
*   **端到端訓練：** 經過完全端到端的訓練，Helix可以将原始像素和文本命令映射到具有标准回归损失的连续动作，再通过调节S1行为的潜在通信向量，将梯度从S1反向传播到S2，从而允许对两个组件进行联合优化。
*   **时间偏移校准：** 在訓練過程中，Figure AI在S1和S2輸入之間還添加了經過校準的時間偏移，從而可以匹配S1和S2部署的推理延遲之間的差距，確保部署期間的實時控制要求被準確地反映在訓練中。
*   **流式推理優化：** Helix的訓練設計支持在Figure機器人上高效並行地部署模型。每個機器人都配備了雙低功耗嵌入式GPU。

**家庭環境適應性與未來展望**

與規範化的工業環境不同，家庭環境中充滿了各種不可控的因素，每個物品都有不可預測的形狀、大小、顏色和紋理。但是Helix無需任何針對特定任務的示範、無需大量的手動編程，就能夠即時生成長期的、協作性的、靈巧的操作動作，展現出了強大的物體泛化能力。

在视频展示的场景中，当人类把Figure机器人从未见过的杂物放置在桌上，并且提出整理要求时，两个机器人可以在没有经过明确分工的情况下，自然而然地开始协作，将杂物归类放置。机器人甚至细心到知道瓶装的物品应该放置在冰箱门上的置物筐中才不会容易翻倒，而不是往冰箱里随便一塞就了事，而另一个机器人则知道要将饼干放到抽屉中，收拾好后，它们还会记得贴心地把抽屉关好、关上冰箱门。不過，略微有些美中不足的是，機器人一開始就把冰箱門打開，直到收拾完全部物品才把冰箱門緩緩合上，在節能意識方面可能還有待提高。

從這次演示來看，Helix模型展現出了人形機器人擁有近乎人類的環境適應性的巨大潛能。隨著模型規模的不斷擴展，它將為人形機器人真正進入家庭等更為複雜的環境，以及融入人類生活創造更多的可能性。也許在不久的將來，人形機器人就會像今天的智能手機一樣普及，成為我們生活中不可缺少的一部分。

**結語**

好了，以上就是本期視頻的內容。感謝大家的觀看，我們下期再見。

**主要修改說明：**

*   **標題：** 添加更具吸引力的標題。
*   **分段：** 將文稿分為更小的段落，增加可讀性。
*   **子標題：** 添加子標題，突顯關鍵信息點。
*   **項目符號：** 使用項目符號列出Helix模型的優點，使其更易於閱讀。
*   **簡化語言：** 略微修改了一些句子結構，使其更簡潔易懂。
*   **重點強調：** 使用粗體字強調重要詞彙和短語。
*   **細節整理：** 將一些段落重組，使其更具邏輯性。
*   **去除口語化：** 稍微調整了語氣，去除過於口語化的部分，使整體更專業。

希望這個整理後的版本對您有幫助！如果您需要進一步的修改，請隨時告訴我。

[model=gemini-2.0-flash,0]
