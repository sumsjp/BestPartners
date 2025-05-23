好的，以下是經過整理的文稿，重點歸納，並加入適當的標題與段落，使其更易讀：

**標題：Luma AI 轉向視頻生成：首席科學家宋佳銘訪談重點整理**

**引言**

視頻生成和多模態是當前AI發展最快的領域之一。Luma AI上個月推出的視頻生成模型Dream Machine一鳴驚人。Luma AI最初以NeRF起家，專注於3D領域。為什麼突然轉向視頻生成？3D生成與視頻生成有何關聯？Luma的首席科學家宋佳銘（Jiaming Song）在最近的訪談中，分享了Luma AI的策略轉向、技術思考和未來願景。

**一、Luma AI 並未轉型：視頻生成是為了更好的 3D/4D 生成**

*   **澄清誤解：** Luma AI並未進行產品轉型，他們研究視頻生成，本質上是為了實現更好的3D，甚至是4D生成。
*   **視頻生成是 4D 生成的必要技術：** 宋佳銘認為視頻生成和4D生成息息相關，甚至是後者必備的前置技術。
*   **研發過程中的發現：** 在研發4D生成時，Luma團隊發現直接構建視頻模型再轉為4D更為可行。
*   **以視頻驅動 3D：** Luma最初的動機不是從做3D轉向做視頻，而是想要通過視頻的方式去驅動更好的3D效果。

**二、視頻模型湧現出的 3D 能力：超乎預期的驚喜**

*   **意外的發現：** 團隊原本並未對視頻模型的3D生成能力抱有太大期望，但測試結果卻顯示其3D能力已經很強。
*   **優異的 3D 一致性和光學效果：** 視頻模型在3D一致性、光學、深度以及一些動態的物理現象上表現得十分驚艷。
*   **圖片轉視頻再轉 3D 的可行性：** 將圖片轉成視頻，再將視頻轉成3D的工作流已具備實際應用價值。
*   **深度理解：** 視頻模型通過學習視頻數據，能夠學習到深度的知識、知道視頻裡面物體的遠近。
*   **光影理解：** 视频模型也能很好地理解光的反射、折射，以及光是如何在不同介質中運行的。

**三、視頻生成相較於傳統 3D 生成的優勢**

*   **更省時省力：** 相較於傳統NeRF方法需要採集大量圖片，視頻生成只需要一張圖片就能模擬出較好的3D效果。
*   **材質模擬：** 視頻模型能很好地模擬物體的材質，包括光在不同材質上的反射。
*   **不足之處：** 視頻生成在處理人類高速移動圖像時，可能會出現瑕疵。

**四、World Model 和 Bitter Lesson：擁抱多模態的未來**

*   **Scaling Law 和 Bitter Lesson：** 宋佳銘更喜歡用Bitter Lesson （由Richard Sutton提出）來理解 Scaling Law 。 理查德·萨顿认为，一般来说简单但是能更好利用计算量的方法在长期来讲，会优于加入人类的先验知识、但是计算量比较少的方法
*   **World Model 的湧現：** 社區開始討論 World Model、World Simulator 的概念，視頻生成模型要實現 World Model、理解世界物理規則，究竟是一個會隨著模型 scaling up 湧現的過程，還是需要我們對模型本身進行升級改造。 宋佳铭认为，前者的可能性更大
*   **多模態是趨勢：** 他相信未來是以多模態為主的發展趨勢，視頻、4D、語言、動作等模態都非常重要。
*   **資料角度：** 視頻數據比文字數據的token數量大很多，多模態模型也都是現在最大的文本預訓練模型的百倍以上， 文本數據已經接近枯竭了。
*   **多模態的優勢：** 因為多模態信號的數據量很多，scaling law 會更傾向於數據，所以可能不需要那麼大的模型去scale up，就可以達到不錯的效果。

**五、未來的研究目標**

*   **Transformer 的性能限制：** 如何在保證性能的情況下，讓Transformer的序列長度從現在的百萬級變成千萬級甚至億級。
*   **理解模型在做什麼：** 更好地理解模型所學到的知識，以更低的成本或更高的效率訓練模型。
*   **擴散模型的 Scale：** 找到擴散模型上的 scaling law 系數，擺脫黑箱束縛。

**六、結論**

宋佳銘的訪談展現了Luma AI在視頻生成領域的策略和技術深度，以及對多模態未來發展的深刻思考。Dream Machine的成功僅僅是個開始，Luma AI的目標是通過多模態的理解和生成，實現4D的突破。

[model=gemini-2.0-flash,0]
