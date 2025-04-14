好的，我將上述文稿整理如下，重點在於結構清晰、易於閱讀，並適當潤飾以提升流暢度。

**主題：InfiniBand 技術詳解：GPT 背後的算力網路**

**開場白：**

*   大家好，這裡是最佳拍檔，我是大飛。
*   對於AI領域的從業者而言，了解底層算力架構至關重要。尤其是在大語言模型興起的今日，GPU 資源變得非常緊俏，因此底層算力優化更顯必要。
*   今天我們就來聊聊GPT背後所使用的算力網路，這也是英偉達市值突破萬億美元的基石——InfiniBand。

**什麼是InfiniBand？**

*   InfiniBand（簡稱IB），是一種高性能的通信技術協議，英文直譯為“無限頻寬”（Infinite Bandwidth）。
*   為什麼它會受到 AI 公司的追捧？它與以太網之間的競爭又是怎麼回事？

**InfiniBand 的誕生：**

*   要理解 InfiniBand，需要從計算機架構談起。
*   現代電腦普遍採用馮·諾依曼架構，包含CPU（運算器、控制器）、記憶體（記憶體、硬碟）和I/O（輸入/輸出）設備。
*   **早期挑戰：PCI 總線瓶頸**
    *   90年代，英特爾在PC架構中引入PCI總線，以支持更多外部設備。
    *   但隨著互聯網高速發展，線上業務激增，PCI總線的升級速度遠遠落後於CPU、記憶體等部件，成為系統瓶頸。
*   **解決方案：NGIO 和 FIO 的競爭**
    *   為了解決I/O瓶頸，英特爾、微軟和SUN主導開發了“Next Generation I/O (NGIO)”；IBM、康柏和惠普則主導開發了“Future I/O (FIO)”。
    *   1998年，IBM等公司還合作推出了PCI-X標準。
    *   1999年，FIO和NGIO合併，成立InfiniBand貿易協會（IBTA）。
    *   2000年，InfiniBand架構規範1.0版正式發布。
*   **InfiniBand 的目標：取代 PCI 總線**
    *   InfiniBand 引入了 RDMA 協議，具有低延遲、高頻寬、高可靠性等優勢，實現更強大的 I/O 性能。

**Mellanox（邁絡思）的角色：**

*   Mellanox 是一家在 InfiniBand 發展歷程中扮演關鍵角色的公司。
*   1999年，幾位從英特爾和伽利略技術公司離職的員工在以色列創立了 Mellanox。
*   Mellanox 成立後加入了 NGIO，隨後隨著 NGIO 和 FIO 的合併，加入了 InfiniBand 陣營。
*   2001年，Mellanox 推出了首款 InfiniBand 產品。
*   **轉折：英特爾和微軟的退出**
    *   2002年，英特爾轉向開發PCI Express (PCIe)，微軟也退出了InfiniBand的開發。

**InfiniBand 的應用轉型：**

*   **集群互聯：**
    *   2003年，InfiniBand 開始轉向計算機集群互聯的應用。
    *   弗吉尼亞理工學院基於 InfiniBand 技术的集群，在全球超級電腦 TOP500 榜單中排名第三。
*   **OFA 聯盟：**
    *   2004年，成立開放Fabrics联盟（OFA），與IBTA 協同工作。
    *   IBTA 負責開發、維護和增強InfiniBand協議標準，OFA 負責開發和維護InfiniBand協議和上層應用API。
*   **存储设备连接：**
    *   2005年，InfiniBand 找到新的應用場景——連接存儲設備（SAN技術）。
*   **市場崛起：**
    *   2009年，TOP500 榜單中已有 181 個系統採用 InfiniBand 技術，但當時千兆以太網仍是主流。
*   **Mellanox 的壯大：**
    *   Mellanox 不斷壯大，成為 InfiniBand 市場的領導者。
    *   2010年，Mellanox 和 Voltaire 合併，InfiniBand 主要供應商只剩下 Mellanox 和 QLogic。
    *   2012年，英特爾收購了 QLogic 的 InfiniBand 技術，重返 InfiniBand 賽道。
*   **超越以太網：**
    *   隨著高性能計算（HPC）需求的增長，InfiniBand 技術持續發展，市場佔有率不斷提升。
    *   2015年，InfiniBand 在 TOP500 榜單中的佔比首次超過以太網，成為超級電腦首選的內部連接技術。
*   **Mellanox 的產業鏈擴張：**
    *   2013年，Mellanox 收購了硅光子技術公司 Kotura 和並行光互連晶片廠商 IPtronics，完善產業布局。
    *   2015年，Mellanox 在全球 InfiniBand 市場上的佔有率達到 80%，業務範圍涵蓋晶片、網卡、交換機、線纜等領域。

**以太網的反擊：RoCE 技術**

*   面對 InfiniBand 的趕超，以太網也沒有停下腳步。
*   2010年，IBTA 發布 RoCE（RDMA over Converged Ethernet）技術，將 InfiniBand 的 RDMA 技術移植到以太網中。
*   2014年，推出更成熟的 RoCE v2 版本。
*   RoCE v2 大幅縮小了以太網和 InfiniBand 之間的性能差距，結合以太網固有的成本和兼容性優勢，開始反擊。
*   2015年開始，25G 及更高速率的以太網崛起，一度壓制了 InfiniBand。

**英偉達收購 Mellanox：**

*   2019年，英偉達以 69 億美元成功收購 Mellanox。
*   英偉達 CEO 黃仁勳表示，這是兩家全球領先高性能計算公司的結合，英偉達專注於加速計算，而 Mellanox 專注於互聯和存儲。
*   AIGC 大模型崛起，對高性能計算和智能計算的需求呈現井噴式增長，高性能計算集群成為支撐龐大算力需求的關鍵，InfiniBand 則是高性能計算集群的最佳選擇。
*   英偉達將 GPU 算力優勢與 Mellanox 的網路優勢結合，打造出強大的“算力引擎”。

**InfiniBand 與高速以太網之爭：**

*   當前，InfiniBand 與高速以太網在高性能網路領域展開激烈競爭。
*   資金充裕的廠商更傾向於選擇 InfiniBand，而追求性價比的則會選擇高速以太網。
*   其他技術，例如 IBM 的 BlueGene、Cray 和 Intel 的 OmniPath，則屬於第二梯隊。

**InfiniBand 的工作原理：**

*   為什麼 InfiniBand 比傳統以太網更強？它的低延遲和高性能是如何實現的？
*   **RDMA（遠程直接數據存取）協議：**
    *   InfiniBand 最突出的優勢是率先引入 RDMA 技術。
    *   傳統 TCP/IP 需要經過核心記憶體的轉換，增加了數據傳輸路徑和 CPU 負擔。
    *   RDMA 允許應用與網卡之間直接讀寫數據，降低延遲至接近 1us，同時減少 CPU 負擔。
    *   RDMA的内存零拷贝机制，允许接收端直接从发送端的内存读取数据，绕开了核心内存的参与。
*   **基於通道的結構：**
    *   InfiniBand 是一種基於通道的結構，主要組成部分包括：
        *   HCA（Host Channel Adapter，主機通道適配器）
        *   TCA（Target Channel Adapter，目標通道適配器）
        *   InfiniBand 連接通道（電纜、光纖或板上鏈路）
        *   InfiniBand 交換機和路由器
    *   通道適配器用於搭建 InfiniBand 通道，所有傳輸均以通道適配器開始或結束，確保安全和 QoS。
*   **子網管理：**
    *   InfiniBand 系統可由多個子網組成，每個子網最大可由 6 萬多個節點組成。
    *   子網內部由 InfiniBand 交換機進行二層處理，子網之間則使用路由器或網橋連接。
    *   每個 InfiniBand 子網都會設一個子網管理器，生成 16 位的本地標識符（LID）。
    *   InfiniBand 交換機根據 LID 將數據包從一個端口轉發到另一個端口，不消耗或生成任何數據包。
    *   Cut-Through 技術將轉發延遲大幅降低至 100ns 以下。
*   **数据包传输：**
    *   InfiniBand 網路中，數據以最大 4KB 的數據包形式串行傳輸。
*   **分層結構：**
    *   InfiniBand 协议采用分层结构，各层相互独立，下层为上层提供服务。
    *   物理層定義比特信號的組成方式，链路层定义数据包格式和操作协议，网络层添加全局路由报头进行路由选择，传输层将数据包传送到指定的 QP（Queue Pair）。
*   **流量控制：**
    *   端到端的流量控制是 InfiniBand 網路數據包發送和接收的基礎，可以實現無損網路。
*   **QP（队列偶）：**
    *   QP 是 RDMA 技術中通信的基本單元，包含發送工作隊列（SQ）和接收工作隊列（RQ）。
    *   用戶調用 API 發送接收數據時，實際上是將數據放入 QP 中，然後以輪詢的方式處理請求。
*   **物理链路：**
    *   InfiniBand 物理鏈路可以使用銅纜或光纜，也可能需要使用專用的 InfiniBand 線纜。
*   **链路速度：**
    *   InfiniBand 在物理層定義了多種鏈路速度，例如 1X、4X、12X。
    *   早期 SDR 規範中，1X 鏈路的原始信號頻寬為 2.5Gbps，4X 鏈路為 10Gbps，12X 鏈路為 30Gbps。
    *   隨著時間的推移，InfiniBand 的網路頻寬不斷升級，從 SDR、DDR、QDR、FDR、EDR、HDR 一路升級到 NDR、XDR、GDR。

**InfiniBand 商用產品：**

*   英伟达收購 Mellanox 後，於 2021 年推出了第七代 NVIDIA InfiniBand 架構——NVIDIA Quantum-2。
*   該平台包括 NVIDIA Quantum-2 系列交換機、NVIDIA ConnectX-7 InfiniBand 適配器、BlueField-3 InfiniBand DPU 以及相關軟體。
*   NVIDIA Quantum-2 系列交換機採用緊湊型的 1U 設計，包括風冷和液冷版本，單晶片擁有 570 億個晶體管，採用 64 個 400 Gbps 端口或 128 個 200 Gbps 端口的靈活搭配，提供總計 51.2T bps 的雙向吞吐量。
*   NVIDIA ConnectX-7 InfiniBand 適配器支持 PCIe Gen4 和 Gen5，提供 400Gbps 的單或雙網路端口。
*   行业预测到 2029 年，InfiniBand 的市场规模将达到 983.7 亿美元，相比于 2021 年增长 14.7 倍，2021-2029 年复合年增长率为 40%。

**總結：**

*   InfiniBand 在高性能計算和人工智能計算的推動下，發展前景令人期待。
*   究竟 InfiniBand 和以太網誰能笑到最後，還需要時間來驗證。

**結語：**

*   感谢大家观看本期视频，我们下期再见。

**整理說明：**

*   **結構化：** 將文稿分成多個主題，每個主題下再細分小點，形成清晰的層級結構。
*   **簡潔化：** 刪除冗餘信息，保留核心內容。
*   **重點突出：** 使用粗體標記關鍵詞和重點句子，方便快速抓取信息。
*   **潤飾語句：** 調整部分語句的表達方式，使其更流暢自然。
*   **口語轉書面語：** 將口語化的表達轉換為更正式的書面語。
*   **增加轉承詞：** 添加“因此”、“然而”、“此外”等轉承詞，使上下文銜接更緊密。

希望這個整理後的版本能更好地呈現 InfiniBand 技術的相關信息。如果您有任何其他需求，請隨時提出。

[model=gemini-2.0-flash,0]
