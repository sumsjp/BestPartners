<details>
<summary>100. [2023-06-12] 【容器】容器管理工具Podman完全安装使用指南 | Docker平替 | 兼容Docker命令 | 如何管理容器、镜像、Pod | Kubernetes</summary><br>

<a href="https://www.youtube.com/watch?v=GYRIhF2FA-g" target="_blank">
    <img src="https://img.youtube.com/vi/GYRIhF2FA-g/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【容器】容器管理工具Podman完全安装使用指南 | Docker平替 | 兼容Docker命令 | 如何管理容器、镜像、Pod | Kubernetes

好的，我幫您整理如下：

**文章主旨：Podman vs. Docker，Podman 的功能及使用教學**

**主要內容：**

1.  **Podman 簡介：**
    *   Podman 是紅帽公司於 2018 年發布的容器管理工具，也是 CentOS 8 上的預設容器管理工具。
    *   Docker 開始收費後，Podman 成為 Docker 的替代品之一。

2.  **Podman 與 Docker 的比較（從日常使用場景）：**
    *   **命令列相容性：** Podman 命令與 Docker 命令基本相同，可用 alias 或 docker-cli 來控制 Podman。
    *   **打包（Build）：** Podman 支持 Dockerfile 和 Containerfile，打包出的鏡像遵循 OCI 標準，可以部署和運行在兼容 OCI 的容器生態中。
    *   **拉取镜像（Pull）：** Podman 預設從 Docker Hub 拉取鏡像，但也支持從其他倉庫拉取，例如 quay.io。
    *   **容器管理（Container Management）：**
        *   Podman 在 Mac 上運行需要 Linux 內核的虛擬機。
        *   Podman 沒有 Daemon 进程，而是直接通过 OCI 运行容器（crun ）。
        *   Podman 提供 `machine` 命令管理虛擬機，例如初始化、啟動、停止、檢視等。
        *   Podman 支持 rootless 模式，以非 root 用戶來運行容器。
        *   可以使用 volume 參數把主機上的文件掛載到虛擬機中，解決文件共享的問題。
        *   Podman 不支援將 network 模式設定成 host，host 模式只能在虛擬機內部進行監聽。

3.  **Podman 的特色功能：**
    *   **Pod：**
        *   Podman 引入了 Pod 的概念，可以將多個容器放到一個 Pod 當中，統一進行管理。
        *   同一 Pod 內部的容器可以通過 localhost 互相訪問。
        *   Pod 創建好以後不能再修改端口映射，需要在創建時先規劃好。

    *   **Podman Compose：**
        *   Podman Compose 用來管理容器。
        *   支持將容器運行在 Pod 中（加上 `--in-pod=1`）。
        *   若 Docker Compose 檔案使用了卷映射，需要先創建該卷，否則 Podman Compose 會报错。

    *   **Kubernetes 整合：**
        *   Podman 提供了 `kube` 命令與 Kubernetes 互動：`apply`、`generate`、`play`、`down`。
        *   Podman 可以代替 Docker 作為底層的容器運行環境。

4.  **Podman 圖形介面（Podman Desktop）：**
    *   Podman Desktop 提供 Podman 的圖形介面，方便管理容器。
    *   主要功能包括容器管理、Pod 管理、鏡像管理、卷管理，以及虛擬機的配置。
    *   Podman Desktop 目前仍有一些小問題和需要優化的點，啟動速度較慢。

5.  **总结：**
    *   Podman 和 Docker 的命令基本兼容。
    *   Podman 可以拉取運行 Docker Hub 中的鏡像，也可以根據 Dockerfile 构建并上传到 Docker Hub。
    *   Podman Desktop 提供了圖形介面，方便管理容器。
    *   Podman Compose 和 Docker Compose V1 基本兼容，還支持在 Pod 中運行。
    *   Podman 需要自己管理虛擬機，支持 rootless 模式。

**重點整理：**

*   Podman 是 Docker 的可行替代方案。
*   Podman 功能强大，与 Docker 兼容性高。
*   Podman 有命令行工具和图形界面工具，方便用户使用。
*   Podman 的 Pod 和 Kubernetes 整合是亮点。

**建議：**

*   文章可增加 Podman 的優缺點總結，方便讀者快速了解。
*   Podman Desktop 的使用體驗可以更詳細描述。

希望以上整理對您有幫助！

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>99. [2023-06-11] 【人工智能】Twitter开源核心推荐系统解读 | 推荐系统架构介绍 | 召回 | 粗排 | 精排 | 重排 | 混排</summary><br>

<a href="https://www.youtube.com/watch?v=KoWUS4P_IGk" target="_blank">
    <img src="https://img.youtube.com/vi/KoWUS4P_IGk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Twitter开源核心推荐系统解读 | 推荐系统架构介绍 | 召回 | 粗排 | 精排 | 重排 | 混排

好的，我將盡力以清晰、簡潔的方式整理這段文稿。

**整理後的文稿：**

**標題：Twitter（推特）推薦系統架構解析**

**簡介：** 本影片講解 Twitter 開源的推薦系統原始碼，涵蓋系統架構、精排模型和圖模型預訓練表徵。

**內容概要：**

1.  **問題定義：**
    *   輸入：由推文、用戶交互行為等構成的超大規模異構圖 (Twitter network)。
    *   輸出：預測用戶與推文/其他用戶交互的概率，從而進行推文/用戶推薦。
    *   重點：社交圖 (social graph) 挖掘，包括圖特徵、圖預訓練、圖召回模型等。

2.  **整體架構：**
    *   **數據層：** 包含社交圖 (用戶、推文、互動等)、用戶交互行為、用戶畫像數據等。 這是推特的核心資產。
    *   **特徵工程：** 關注社交圖的預訓練、聚類、社群發現等。 圖預訓練得到的向量可用於向量召回、精排特徵等。
    *   **推薦系統服務 (Home Mixer)：** 基於 Scala 框架，包含：
        *   **召回 (Candidate Sources)：** 從不同推薦源獲取最佳推文 (類似於推薦系統的召回階段)。核心召回方式是圖召回。
        *   **粗排與精排：** 使用機器學習模型 (Light Ranker 和 Heavy Ranker) 對推文進行打分排序 (分別類比推薦系統的粗排和精排階段)。
        *   **重排與混排：** 運用啟發式規則，例如過濾屏蔽用戶的推文、NSFW 內容、已看過的推文，保證作者多樣性，以及廣告、推文和作者混排等。

3.  **召回 (Candidate Sources)：**
    *   輸入：推文候選池 (億萬級別)。
    *   輸出：
        *   **In-network：** 用戶關注的推文 (約佔50%)，主要通過 Earlybird 搜索引擎檢索，再經過 Light Ranker 粗排。
        *   **Out-of-network：** 用戶未關注的推文 (約佔50%)，通過兩種方法：
            *   **UserTweetEntityGraph (UTEG)：** 協同過濾，分析用戶關注/相似興趣用戶的行為，預測用戶感興趣的推文 (約佔15%)。使用 GraphJet 圖引擎構建和遊走動態圖。Light Ranker 粗排。
            *   **Embedding Spaces (嵌入表徵學習)：** 訓練用戶和推文的表徵向量，計算相似性。 包括稀疏嵌入 (SimClusters，基於社群發現的異構表徵模型) 和稠密嵌入 (TwHIN，基於圖學習的預訓練)。
    *   **CR-Mixer：** 協調層，代理執行 Out-of-Network 的多路召回，並調用底層計算服務 (源信號抽取、召回結果生成、過濾和粗排)。
    *   **推人服務 (Following Recommendation Service, FRS)：** 推薦作者，流程與推文推薦類似，包括召回、排序、過濾、推薦理由等。 排序主要預測關注概率和正向交互概率的加權融合。

4.  **粗排 (Light Ranker)：**
    *   本質：引擎側召回通道的海選粗排。
    *   模型：較舊的邏輯回歸 (LR) 模型，預測用戶與推文交互的概率。 特徵包括用戶側特徵 (tweepcred 模型預估聲譽)、推文特徵 (文本質量、轉發、回覆等) 和上下文特徵 (用戶語言等)。
    *   **RealGraph：** 用於 in-network 召回的粗排模型，預測用戶與用戶交互的概率，基於 RealGraph (帶權重的同構圖) 以及邊的特徵。

5.  **精排 (Heavy Ranker)：**
    *   模型：Parallel MaskNet (新浪微博在 DLP-KDD 2021 發表)，多目標模型，用 48M 參數的神經網路實現。
    *   目標：優化點讚、轉發、回覆等目標，考慮數千個特徵，輸出 10 個 level 的分數，代表交互概率。
    *   融合排序：簡單的加權求和。

6.  **重排與混排：**
    *   **重排：** 啟發式規則導向，主要目的為過濾 (屏蔽推文、作者)、保證作者多樣性、內容平衡性、基於反饋的疲勞內容干預、二跳人脈過濾 (social proof)、推文/回覆上下文展示和更新檢測。
    *   **混排 (Homepage Mixer)：** 負責主頁上的混排，包括推文、廣告、關注的作者、Onboarding prompts 等。

7.  **基礎設施服務：**
    *   **Navi：** 用 Rust 編寫的高性能機器學習模型 Serving 服務。
    *   **Product-mixer：** 用於構建內容 Feed 的軟體框架。
    *   **TWML (Twitter Machine Learning)：** 基於 TF-1 的機器學習訓練框架，主要用於訓練粗排的 Earlybird Light Ranker。

8.  **總結：** Twitter 開源核心演算法是一個大膽的舉措，提供了一個典型的大型推薦系統案例。

**關鍵詞：** Twitter, 推薦系統, 開源, 算法, 架構, 召回, 粗排, 精排, 特徵工程, 圖模型, Embedding, 社交圖, Scala, Machine Learning.

**說明：**

*   我使用了更明確的標題和副標題，以便於理解文章的結構。
*   我簡化了一些術語，並添加了說明，以便不熟悉技術的人也能理解。
*   我使用了關鍵詞，以便於搜索和索引。
*   我盡可能地保留了原稿的重點和信息。

希望以上整理對您有所幫助！

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>98. [2023-06-10] 【预告】2023北京智源大会相关视频 | 四位图灵奖得主 | OpenAI、Midjourney创始人 | 国内众多院士学者 | 悟道3.0发布 | 天鹰、天秤、视界 | 上百场最新研究成果报告和研讨</summary><br>

<a href="https://www.youtube.com/watch?v=0REmtdPnJr4" target="_blank">
    <img src="https://img.youtube.com/vi/0REmtdPnJr4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【预告】2023北京智源大会相关视频 | 四位图灵奖得主 | OpenAI、Midjourney创始人 | 国内众多院士学者 | 悟道3.0发布 | 天鹰、天秤、视界 | 上百场最新研究成果报告和研讨

好的，這是我整理後的文稿，我主要做了以下修改：

*   **修正錯字和語法錯誤：** 修正了一些明顯的錯字和語法問題，使語句更流暢。
*   **調整標點符號：** 調整了標點符號的使用，使其更符合中文的習慣。
*   **分段和組織：** 將文稿分成更小的段落，使內容更易於閱讀和理解。
*   **提煉重點：** 在一些地方做了簡化，使其更加清晰。
*   **加入小標題：** 為了方便閱讀，我將文稿加上了小標題。

以下是整理後的文稿：

---

**大家好，這裡是最佳拍檔，我是大飛。**

**感謝與頻道近況**

首先感謝大家對頻道五月份運營情況影片的肯定和支持。最近頻道分享AI方面的內容比較多，主要是因為相關資訊量太大，我一個人實在無法完全消化並製作成節目。即使每天做四期節目，也講不完每天的新聞。

我希望能盡可能地分享這些資訊，所以只能將自己錄製的影片，連同找到的資料一起分享給大家。最近大佬們的觀點討論非常多，我整理起來吃力，且資訊可能會有誤，所以請大家多聽聽大佬們的原話。

**AI發展的個人觀察**

請大家理解包涵，不是我不錄節目，是真的錄不過來。因為我天天要看大量的AI資訊，從自身感覺來說，這次AI的發展進程跟以往不太一樣。這次科技突破密度高、強度大，而且持續時間長，我以前沒有見過。而且每天都有新的模型、方法、工具出現。

因此我個人判斷，這次AI的影響會非常深遠。以前科技進步傳導到大眾需要很長時間，但這次 ChatGPT 改變了這種狀況。雖然史上最快月活一億的數據不一定準確，但肯定規模很大。而且這次熱度持續時間長，快半年了還沒有退燒。

像以前的 AlphaGO、Alpha-Zero，新聞熱度也就是個把月就下去了，但這次不一樣。所以我對這個頻道方向很有信心，雖然現在轉做自媒體，但AI方面的内容足夠我做很久。HuggingFace上的模型，我一天講一個都夠講幾年。

再次感謝大家的支持和鼓勵，至少這個方向我會堅持做下去。當然也希望後續頻道能夠承接和製作更多其他類型的節目和內容，不斷豐富頻道的多樣性，給大家帶來更多更好更有價值的內容。

**北京智源大會**

說回正題，這兩天國內 AI 圈關注度最高的會議，應該就是2023年北京智源大會。它匯集了眾多傳說中的AI大佬，包括四位圖靈獎得主：傑弗里·辛頓、楊立昆、姚期智、約瑟夫·西法斯基，以及 OpenAI 創始人 Sam Altman、Midjourney 創始人大衛·霍爾茨。

還有像 PaLM-E、Meta AI 這些大模型項目的重要參與者，以及張钹、張宏江這些國內外久負盛名的科技圈大佬。即使楊立昆在法國，也在當地時間凌晨四點連線到現場直播並做了演講。

今年是第五屆大會，同時請來了楊立昆和傑弗里·辛頓。其實背後有個小插曲，在第三屆大會時，傑弗里·辛頓本來也想參加，但就在大會前幾天，他發現準備分享的新方法裡出現了 bug，所以只能取消。

本杰奧在2021年的智源大會上介紹過的關於 system 2 的机器学习理论，如今以思維鏈的形式用在了大模型提示工程方面。可以說深度學習的三巨頭都參加過這個大會。

除了三巨頭之外，還有很多圖靈獎得主也到這個大會做客，包括貝氏網路的提出者朱迪亞·珀爾、RISC-V 的掌門人大衛·帕特森、數據結構大師約翰·霍普克羅夫特，他更是擔任會議的學術顧問委員會會員。所以這個大會還是蠻有高度的，無論從中國還是世界範圍來看。

**智源大會的重點發布**

大會從 6 月 9 日開始，到 6 月 10 日結束，地點在中關村國家自主創新示範區的會議中心會展中心。

智源主要宣布了自己的悟道 3.0，有一系列的重磅發布，並且全面開源。其中的悟道天鷹 Aquila 大語言模型系列，支持中英雙語知識、支持商用許可。AquilaChat 不僅可以像 ChatGPT 一樣進行對話、生成命題作文，還可以通過定義可擴展的特殊指令規範，實現對其他模型和工具的調用。比如通過調用圖像生成 API 實現文生圖功能，或者配合 instructorface 這個多步可控的文生圖模型來實現對人臉的一步步編輯，以及調用 Aquila code 代碼模型的能力，在對話中實現文本到代碼的生成，比如說直接生成一個簡單的登錄頁面或者設計一個時鐘程序。

天秤 FlagEval 是一個大語言評測體系及開放平台，可以構建從能力到任務到指標這樣一個三維的評測框架，細粒度地去刻畫模型的認知能力邊界。目前它包括了 22 個主觀和客觀評測的數據集，以及 84,433 道題目，更多維度的評測數據集正在陸續集成，而且給出的評測結果都是可視化的。目前天秤 FlagEval 已經推出了語言大模型評測、多語言文圖大模型評測以及文圖生成評測等工具，並且對各種語言的基礎模型、跨模態基礎模型實現了評測功能。後續它還將全面覆蓋基礎模型、預訓練算法、微調算法等三大評測對象，包括自然語言處理、計算機視覺、音頻以及多模態等等四大評測場景及豐富的下游任務。

开源了悟道视界视觉大模型系列，发布了六个国际领先的成果。首先是视觉的基础模型 EVA，它是一种经过预训练的 vanilla ViT 模型，整体思路是将最强的语义学习 CLIP 模型与最强的几何结构学习 MIM 做了结合，再将标准的 Vit 模型扩大到了 10 亿参数的规模进行训练。其次是 EVA CLIP 模型，它可以显著提高 CLIP 训练的效果和效率。EVA CLIP 结合了表征学习优化和增强的新技术，与之前的 CLIP 模型相比，在具有相同数量参数的情况下，它的训练成本显著更低。据官方称，EVA CLIP 超越了此前最强的 open CLIP 模型，在 imageNet 1K 的零样本 top 1 测试中达到了最高的 82% 的准确率。

第三个是通用的视觉模型 painter，它的最大亮点是首创了上下文视觉学习的技术路径。它的核心思想就是将视觉任务的输出重新定义为图像，并且将任务 prompt 也指定为图像。在推理过程中，可以采用一对来自同一任务的输入和输出图像作为输入条件，来指示要执行的任务。

第四个是基于 painter 模型上衍生的分割一切的模型 SegGPT，它可以通过视觉 prompt 来完成任意分割的任务。与 painter 一样，SegGPT 也具备视觉上的上下文推理功能，只需要给出一个或几个视觉的 prompt，模型就能够理解用户的意图，有样学样地去完成类似的分割任务。

第五个是零样本的视频编辑方法 vid2vid-zero，在无需额外视频训练的情况下，它利用注意力机制动态运算的特点，结合现有的图像扩散模型，实现了可以指定属性的视频编辑。比如说，仅仅通过一句话，就可以换掉视频中的车和背景。

第六个是补全一切的生成式大模型 Emu，它可以接受多模态的输入，预测多模态的输出，支持在文字、图片、视频多模态序列内间进行理解、推理和生成。可以指定任意模态的输入组合，都能够在序列中补全下一项。Emu 的多模态上下文学习可以实现多轮的图文对话视频理解、少样本图文理解、文图生成、图图生成和少样本的文图生成等等。

除了悟道 3.0 本身的内容之外，這次會議的議程設置上，也聚焦了大模型、多模態生成式模型、AI 安全倫理問題和風險防範等最新話題，同時也包含了像自動駕駛、生命科學等專業細分領域的報告和研討。後續幾天會陸續編輯和發布相關的會議影片，供大家學習和討論。

**結尾**

好了，今天的分享就到這裡，感謝大家的觀看，我們下期再見。

---

希望這個整理對您有所幫助！

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>97. 【YouTube】频道五月运营报告 | 关于YPP收入、大陆收pin码和收款的建议 | Youtube油管官方的一些功能更新 | 视频说明搜索优化技巧</summary><br>

<a href="https://www.youtube.com/watch?v=AdLpFwM7epA" target="_blank">
    <img src="https://img.youtube.com/vi/AdLpFwM7epA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【YouTube】频道五月运营报告 | 关于YPP收入、大陆收pin码和收款的建议 | Youtube油管官方的一些功能更新 | 视频说明搜索优化技巧



---

</details>

<details>
<summary>96. [2023-06-08] 【人工智能】Tafi | 全球首个文本生成高质量3D模型平台 | 效果媲美玛雅C4D | 开放测试申请</summary><br>

<a href="https://www.youtube.com/watch?v=bvXw4LVxOwU" target="_blank">
    <img src="https://img.youtube.com/vi/bvXw4LVxOwU/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Tafi | 全球首个文本生成高质量3D模型平台 | 效果媲美玛雅C4D | 开放测试申请

好的，我將這份文稿整理如下，主要目標是讓它更易讀、更結構化：

**標題：AI文本生成3D模型平台：Tafi介紹**

**前言：**

*   大家好，這裡是最佳拍檔，我是大飛。
*   今天嗓子不太舒服，請大家見諒。
*   今天要分享一個網站 (Tafi)，即使是商用收費，也覺得很有意思，想分享給大家。

**背景：**

*   早期AI節目中，有觀眾評論說，文本生成圖片、影片已經很厲害，何時能生成3D模型才算真正突破。
*   現在，一家3D廠商 Tafi 發布了一個可以透過文本直接生成3D角色模型的AI平台。

**Tafi平台簡介：**

*   **核心技術：**
    *   累積20多年，擁有超過500萬件可編輯的3D模型。
    *   獨家AI生成引擎。
    *   可在短時間內完成模型訓練。
*   **亮點：** 全球首個高品質的生成式3D模型平台。
*   **優勢：**
    *   傳統方式訓練AI模型，需要75,000年才能達到高精度、高品質標準。
    *   具備文本提示、高品質、高效率、可視化編輯等技術特性。

**使用方法：**

*   用戶可以通過文本快速創建3D模型。
    *   例如：「創建一個歐洲身材的男性模特，老一點的樣子，穿一套毒液那樣的衣服」。
*   即使沒有3D設計經驗，也能使用，只需要提供創意。
*   生成的3D模型效果逼真，可與瑪雅、C4D等專業軟體媲美。
*   模型可直接導入虛幻引擎 (Unreal)、Unity、Blender、3DMax、瑪雅和C4D等開發平台，進行二次編輯。

**功能與特性：**

*   支持實時可視化，創建、編輯、刪除等操作，提升模型精準度。
*   可直接在虛幻引擎中使用。
    *   生成的角色膚色、體型、五官、動作等全部獨一無二，沒有重複。
    *   設計時間僅需幾分鐘，傳統開發模式可能需要幾天。

**版權：**

*   通過Tafi平台生成的模型可以直接商業化。
*   20多年來，已與專業設計師分享超過2億美元，用於購買3D模型版權。

**Tafi公司介紹：**

*   創立於2000年，總部位於美國猶他州。
*   提供高品質的3D角色模型、場景道具及其他3D資源。
*   應用於遊戲、動畫、Web3、元宇宙、廣告、VR、AR等行業。

**結語：**

*   目前平台處於申請測試階段，有興趣的朋友可以申請試用。
*   今天的分享就到這裡，歡迎訂閱頻道，下期再見。

**重點修改說明：**

*   **分段與標題：** 加入了更清晰的標題和分段，將重點內容突出。
*   **項目符號：** 使用項目符號整理平台特性、優勢和使用方法，讓資訊更易於閱讀。
*   **簡潔語言：** 刪除了一些重複或口語化的詞彙，讓整體表達更精煉。
*   **結論：** 將原文的結論重新編寫，更強調行動呼籲（申請試用）。

這個整理後的版本希望能更清晰、更有條理地呈現原文內容。

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>95. [2023-06-04] 【AIGC】谷歌公开StyleDrop模型论文 | 图像风格定制大师 | LOGO也能轻松生成 | 挑战Midjourney | 基于Muse模型</summary><br>

<a href="https://www.youtube.com/watch?v=Gi8eEanuNY8" target="_blank">
    <img src="https://img.youtube.com/vi/Gi8eEanuNY8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【AIGC】谷歌公开StyleDrop模型论文 | 图像风格定制大师 | LOGO也能轻松生成 | 挑战Midjourney | 基于Muse模型

好的，我將為您整理這段文稿，使其更易於閱讀和理解：

**标题：AIGC 领域新突破：谷歌 StyleDrop 解析**

**概述：**

本期节目介绍谷歌最新发布的 AIGC 工具 StyleDrop。StyleDrop 的核心能力在于其强大的风格迁移功能，仅需一张参考图，即可解构并复刻复杂的艺术风格，并应用于各种图像生成任务。

**StyleDrop 的主要特性：**

*   **强大的风格迁移：** 可根据参考图，创作出梵高风格的画作、卡通风格的物体，甚至设计风格一致的 LOGO。
*   **细节把控：** 能精准地把控原图的细节，例如阴影、笔触、纸张褶皱等。
*   **灵感来源：** 借鉴了 Eyedropper 取色工具，旨在让用户快速、毫不费力地挑选所需样式并生成图案。
*   **内容与风格结合：** 结合 DreamBooth，可定制内容，例如生成梵高风格的小柯基或水彩笔风格的小猫。

**StyleDrop 的技术原理：**

*   **基于 Muse 构建：** Muse 是一种基于掩码生成式 Transformer 的文本生成图像模型。
*   **关键组成部分：** 生成视觉 transformer 的参数有效微调；带反馈的迭代训练。
*   **Muse 包含的模块：**
    *   文本编码器 (T)
    *   Transformer (G)
    *   采样器 (S)
    *   图像编码器 (E)
    *   解码器 (D)
*   **流程：**
    1.  T 将文本提示映射到连续嵌入空间。
    2.  G 处理文本嵌入，生成视觉 token 序列的对数。
    3.  S 通过迭代解码，从对数中提取到视觉 token 的序列。
    4.  D 将离散的 token 序列映射到像素空间。
*   **参数高效微调：** StyleDrop 对 Muse Transformer 层的架构进行了简化，以支持参数高效微调。
*   **模板化文本提示：** 使用简单的模板化方法构建文本提示，包括内容描述和风格描述。
*   **带有反馈的迭代训练：** 使用 CLIP 得分和 HF 人工反馈两种方法。
    *   **CLIP 得分：** 测量图像和文本的对齐程度，评估生成图像的质量。
    *   **HF 人工反馈：** 将用户的意图直接注入到合成图像质量评估中，弥补 CLIP 得分无法捕捉的微妙风格属性。

**实验与评估：**

*   **实验方案：** 收集几十张不同风格的图片，包括水彩、油画、平面插画、3D 渲染和不同材质的雕塑等。
*   **调优：** 使用适配器进行调优，更新 1000 步的适配器权度，学习速率为 0.00003。
*   **评估：** 基于 CLIP 衡量风格一致性和文本对齐，并进行用户偏好研究。

**实验结果：**

StyleDrop 能够捕捉各种样式的纹理、阴影和结构的细微差别，对颜色偏移层次和锐角的细粒度把控也更好。

**总结：**

StyleDrop 在 AIGC 领域取得了重要突破，其强大的风格迁移能力和细节把控能力，为图像生成带来了更多可能性。然而，其对设计师职业的影响也值得关注。

**结束语：**

感谢大家的观看，欢迎订阅本频道，我们下期再见。

**修改说明：**

*   增加了标题和概述，方便读者快速了解内容。
*   使用了分点和分层结构，使内容更清晰。
*   对技术细节进行了精简和解释，使其更易于理解。
*   调整了语句结构，使语言更流畅。
*   更正了一些口语化的表达方式，使其更书面化。
*   补充了一些关键信息，例如实验结果。
*   保留了原稿的主要信息和观点。

希望以上整理后的文稿对您有所帮助。

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>94. [2023-06-03] 【人工智能】回顾人工智能十年发展历程 | 2013-2023 | AlexNet | GAN | Transformer | Resnet | GNN | GPT | Stable Diffusion</summary><br>

<a href="https://www.youtube.com/watch?v=Tj7xI5yVMSM" target="_blank">
    <img src="https://img.youtube.com/vi/Tj7xI5yVMSM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】回顾人工智能十年发展历程 | 2013-2023 | AlexNet | GAN | Transformer | Resnet | GNN | GPT | Stable Diffusion

好的，以下是我整理後的文件，我將其分為幾個部分，使其更易於閱讀和理解。

**標題:** 人工智慧 (AI) 十年發展歷程回顧 (2013-2023)

**摘要:**

本影片回顧過去十年 (2013-2023) 人工智慧 (AI) 領域的關鍵性突破，從深度學習的興起，到生成式模型的爆發，以及大語言模型 (LLM) 的快速發展。影片涵蓋了重要的模型、技術和事件，並探討了 AI 對各個領域的影響，以及對未來發展的展望。

**主要里程碑與技術突破:**

*   **2012: AlexNet (深度卷積神經網路 CNN)**
    *   在 ImageNet 大規模視覺識別挑戰賽 (ILSVRC) 中取得突破性成果，證明深度學習在圖像識別中的潛力。
    *   採用深度 CNN 架构，使用 ReLU 激活函數，並利用 GPU 進行平行訓練。
*   **2013: 深度學習成熟元年**
    *   變分自動編碼器 (VAE) 的出現，為生成式建模和數據生成開闢了新的路徑。
*   **2014: 生成式對抗網路 (GAN)**
    *   透過生成器和鑑別器的對抗訓練，能夠生成與訓練數據相似的新數據樣本，應用於圖像、視頻、音樂和藝術創作等領域。
*   **2015: ResNet (殘差神經網路)**
    *   透過添加快捷方式解決梯度消失問題，讓訓練更深層的網路成為可能，提升了圖像分類和對象識別任務的表現。
    *   循環神經網路 (RNN) 和長短期記憶 (LSTM) 模型的改進，提升了在語言翻譯、文本生成和情感分析等任務中的表現，為大語言模型發展鋪路。
*   **2016: AlphaGo**
    *   AlphaGo 擊敗圍棋世界冠軍李世石，證明機器智能在複雜項目中也能擊敗人類。AlphaGo採用深度強化學習加蒙特卡洛樹搜尋。
*   **2017: Transformer 架構**
    *   《Attention Is All You Need》論文介紹了 Transformer 架構，利用自注意力機制處理順序輸入數據，解決了 RNN 架构的挑戰，成為大語言模型開發的關鍵組成部分。
*   **2018: GPT-1 和 BERT**
    *   OpenAI 的 GPT-1 證明了無監督預訓練的有效性。
    *   Google 的 BERT 實現了深度的雙向文本理解，在自然語言處理任務中表現出色。
    *   圖神經網路 (GNN) 的出現，專門用於處理圖形數據，應用於社交網路分析、推薦系統和藥物發現等領域。
*   **2019: GPT-2 和 BigGAN**
    *   GPT-2 在自然語言處理任務中表現出色，並能生成極為順暢的文本。
    *   DeepMind 的 BigGAN 生成的高質量圖像幾乎與真實圖像沒有任何區別。
*   **2020: GPT-3**
    *   GPT-3 在規模和能力上實現了重大飛躍，能夠根據不同提示和任務生成連續的文本，並在各種自然語言處理場景下表現出令人印象深刻的性能。
*   **2021: AlphaFold 2、DALL-E 和 GitHub Copilot**
    *   AlphaFold 2 解决了蛋白质折叠问题，对药物发现和生物工程具有巨大潜力。
    *   OpenAI 的 DALL-E 能够利用文本描述創造出高質量的圖像。
    *   GitHub Copilot 利用 Codex 模型，根據代码注释生成代码建議。
*   **2022: ChatGPT 和 Stable Diffusion**
    *   OpenAI 的 ChatGPT 是一款聊天機器人，能夠生成連續且與上下文相關的回應，並具備極強的查詢和提示適應能力。
    *   Stability AI 的 Stable Diffusion 能夠按照文本描述生成逼真的圖像。
*   **2023: LLaMA, GPT-4, Alpaca, Bard, PaLM-2 和其他 LLM 應用**
    *   Meta AI 的 LLaMA 和其他 LLM 模型在多項基準測試中成功反超 GPT-3。
    *   OpenAI 發布了 GPT-4，比 GPT-3 體量更大更強的多模態版本。
    *   越來越多的企業將語言模型融入到產品中，例如 Dolingo Max 和 Slack GPT。
    *   AI 聊天機器人開始推動心理治療師的大眾化普及，例如 Replika。
    *   微軟基於 GPT-4，將 Bing 打造成了 Web 版的 Copilot，對搜索業務進行了定制。

**未來展望:**

*   模型的主要改進重點將放在提高模型的能力、實用性和安全性上。
*   對 AI 安全性的重視，確保這些工具安全可靠，且符合人類的利益和福祉。

**總結:**

過去十年，AI 領域取得了巨大的進展，對我們的生活、工作和互動方式產生了深遠的影響。隨著技術的持續發展，我們需要謹慎行事，確保 AI 的發展能夠造福人類。

**補充說明:**

*   我已將文稿整理成更結構化的格式，方便理解和記憶。
*   我簡化了一些描述，但盡可能保留了原意。
*   您可以根據需要進一步修改或調整此整理後的版本。
*   我使用粗體字來強調重點詞彙。

希望這個整理對您有幫助！

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>93. [2023-06-02] 【AIGC】开源复刻版DragGAN模型 | 中国团队李白实验室 | 点击拖拽即可修图</summary><br>

<a href="https://www.youtube.com/watch?v=h4oyJykxCQQ" target="_blank">
    <img src="https://img.youtube.com/vi/h4oyJykxCQQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【AIGC】开源复刻版DragGAN模型 | 中国团队李白实验室 | 点击拖拽即可修图

好的，我幫您整理了一下這篇文稿，使其更易讀、更清晰，並且突出重點：

**標題：DragGAN 搶先體驗：李白實驗室復現版，輕鬆操控圖片！**

**開場：**

大家好，這裡是最佳拍檔！我是大飛。

之前我們介紹了最新的 GAN 模型 DragGAN，它允許用戶通過簡單的點擊和拖拽來修改圖片。許多網友都想體驗 DragGAN，最近王道控股旗下的李白實驗室算法團隊搶先重現了 DragGAN 的效果，而且可以直接使用！

**DragGAN 功能與特色：**

*   **輕鬆掌控：**  掌控圖片中的人物和動物，調整位置、形狀、姿勢等。
*   **Hugging Face 直接使用：**  無需程式碼，即可在 Hugging Face 上體驗。
*   **表情調整：**  修改微笑弧度，將嚴肅照片變成甜美笑容。
*   **美顏功能：**  放大眼睛、一鍵瘦臉，效果自然。
*   **修飾功能：**  給貓咪拉大臉龐、拯救髮際線、改變髮型。
*   **簡單原理：**
    *   基於特徵的運動監控，驅動手柄點向目標點移動。
    *   新的點跟蹤方法，利用鑒別性發生器的特點定位手柄點。
*   **區域編輯：**  選擇感興趣區域進行特定編輯，無需依賴其他網路。
*   **快速生成：**  只需幾秒鐘即可完成效果。
*   **迭代控制：**  調整迭代步數，步數越多效果越誇張，但生成時間也越長。
*   **優於傳統 PS：**  保留圖片原始屬性，應用範圍更廣。
*   **應用範例：**  改變圖中車輛位置、大小、輪胎形狀等。

**李白實驗室：**

*   **年輕團隊：**  一個非常年輕的人工智能技術團隊。
*   **創始人：**  唐勇博士，畢業於美國賓夕法尼亞州立大學。
*   **團隊成員：**  畢業於清華、北大、浙大、英國皇家理工、美國常春藤等知名高校。
*   **唐勇經歷：**  曾於美國知名研究機構及世界 500 強企業工作，主導並參與眾多社會、環境、能源相關項目。
*   **研究方向：**  運用數學物理模型、高性能計算、多目標優化及人工智能技術，解決現實世界中的大尺度、多模態、多變量複雜問題。
*   **成立李白實驗室原因：**  現實問題複雜，難以完全理解數學物理機理，希望通過人工智能提升模型泛化能力。

**郭銘濤：**

*   **主創人員：**  與團隊共同攻堅克難，復現 DragGAN。
*   **學歷背景：**  來自四川大學圖像所，目前在讀博士一年級。
*   **研究方向：**  深度生成模型。
*   **獎項：**  CVPR 2023 工業圖像缺陷生成競賽冠軍。

**李白實驗室的成就：**

*   **技術積累：**  在智能圖像生成方面有深厚積累。
*   **功能：**  實現了圖像分割、圖像修復增強、視頻處理等實用功能。
*   **圖像背景分割算法：**  在全球圖像分割 alphamatting.com 的模型比評比中獲得全球第一。
*   **專利：**  獲得國內外近 30 項學術和研究成果專利，80% 為發明專利。
*   **產品：**
    *   PicUP.Ai 皮卡智能項目 (2019)：海外同步上線 cutout.pro 項目，月活超過千萬，躋身圖像編輯工具分類前十。
    *   神采 PromeAI (2023)：通過算法優化升級，可應用於建築、室內、產品、遊戲、動漫場景設計，一鍵生成效果圖、線稿、電商產品圖等，實現 AIGC 從玩具到工具的轉變。

**李白實驗室的願景：**

*   **開源精神：**  开源復刻版 DragGAN，讓普通用戶也能簡單使用。
*   **技術普惠：**  將 AI 技術革新的成功帶到普通用戶身邊。
*   **未來展望：**  DragGAN 與圖像生成工具結合，可能誕生下一代內容革新技術產品。

**結尾：**

對 DragGAN 有興趣的小夥伴們，可以從 Github 下載他們的源代碼，試用看看效果如何。

歡迎大家訂閱我們的頻道，我們下期再見！

**總結:**

我把原文中比較口語化的部分修正了，使它更像一篇正式的文章。我也簡化了一些句子，讓重點更突出，並添加了標題和段落標題，方便讀者快速了解內容。 此外，我將實驗室的成就和願景單獨拉出來做重點，讓聽眾了解這個團隊的價值和意義。

希望這樣的整理對您有幫助!

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>92. [2023-06-01] 【人工智能】医疗开源大模型 | HuatuoGPT | 华佗GPT | 港中文大学联合深圳大数据 | ChatGPT蒸馏数据+真实医生数据 | 效果超GPT3.5</summary><br>

<a href="https://www.youtube.com/watch?v=taSuUARydjk" target="_blank">
    <img src="https://img.youtube.com/vi/taSuUARydjk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】医疗开源大模型 | HuatuoGPT | 华佗GPT | 港中文大学联合深圳大数据 | ChatGPT蒸馏数据+真实医生数据 | 效果超GPT3.5

好的，我幫你整理了這篇文稿，主要分成以下幾個部分，並且加入了一些更清晰的段落劃分和重點標示：

**標題：HuatuoGPT：結合 ChatGPT 與醫生數據的開源醫療大模型**

**引言：大語言模型在醫療領域的應用**

*   目前各行各業都在探索如何結合大語言模型，醫療行業也不例外。
*   儘管像 ChatGPT 這樣的語言模型可以生成內容詳實、表達流暢的回覆，但在醫學方面，尤其是在回應患者症狀時，仍缺乏專業性和對患者輸入的精確解讀。
*   ChatGPT 的回覆通常包含多種可能性，且以抽象建議呈現，缺少深入的上下文理解，無法具體幫助患者。

**背景：傳統醫療數據的局限性**

*   現實世界中，醫生與患者的互動數據能更準確反映醫療情況的複雜性，並提供準確的診斷建議。
*   但因時間限制，醫生的回覆常常過於簡潔，甚至不連貫。
*   僅依賴這些數據訓練模型，難以流暢應對各種指令或對話，生成的回覆短小、表述不佳，訊息含糊不清，對患者不友善。

**HuatuoGPT：解決方案**

*   香港中文大學（深圳）和深圳市大數據研究院王本友教授團隊，利用指令微調和強化學習，在 ChatGPT 和醫生回覆中找到結合點，訓練並開源了一個新的醫療大模型 HuatuoGPT。
*   **目標：** 融合 ChatGPT 生成的蒸餾數據以及真實世界醫生回覆的數據，使模型具備醫生般的診斷能力，同時保持用戶交互的流暢性和內容的豐富性。

**HuatuoGPT 的訓練數據集：**

HuatuoGPT 使用了四種不同的数据集:

1.  **蒸餾後的 ChatGPT 指令数据集**：
    *   靈感來自 Alpaca 模型創建指令集的方法，從 ChatGPT 中提煉醫療相關指令。
    *   加入了科室和角色的資訊，根據採樣的科室或角色生成符合條件的指令数据集。
2.  **真實的醫生指令数据集**：
    *   來源於真實的醫生和患者之間的問答。
    *   醫生的回覆通常簡潔且口語化，因此通過這個方法可以進行潤色，提高可讀性。
3.  **蒸餾後的 ChatGPT 對話数据集**：
    *   為兩個 ChatGPT 模型提供共享的對話背景，讓它們分別模仿醫生和患者進行對話。
4.  **真實的醫生對話数据集**：
    *   來源於真實醫生的對話。
    *   對醫生的回覆使用了模型進行潤色。

*   這些數據集共同為模型提供統一的語言模式、醫生診斷能力以及指令跟隨能力。

**HuatuoGPT 的強化學習：**

*   HuatuoGPT 使用了基於 AI 反饋的強化學習技術 (RLAIF)。
*   使用 ChatGPT 對模型生成的内容進行評分，考慮内容的用户友好程度。
*   結合醫生的回答作為參考，將醫生回覆的品質納入考量。
*   利用 PPO 算法調整模型的生成偏好，使其與醫生和用戶之間的一致性更高。
*   增强模型生成豐富詳盡正確的診斷的能力。

**HuatuoGPT 的性能評估：**

*   採用自動評估和人工評估兩種方式相互驗證。
*   在單輪問答場景和多輪交互式診斷場景中分別進行評估。

**1. 自動評估：**

*   **單輪問答：**
    *   收集了涵蓋 10 個醫療領域意圖的 100 個問題。
    *   利用 GPT-4 進行自動評估：提供兩個模型對同一個問題生成回復，然後使用 GPT-4 對每個模型的回覆進行分析和打分。
    *   結果顯示，HuatuoGPT 的表現優於基於 LLaMA 和 ChatGLM 的開源中文醫療模型。
    *   優勢歸功於 HuatuoGPT 同時使用了從 ChatGPT 蒸餾的數據以及真實世界數據進行訓練，並借助 ChatGPT 和專業醫生的混合反饋進行優化。
    *   HuatuoGPT 在總體性能上甚至超過了 GPT 3.5 Turbo。
*   **多輪問診：**
    *   收集了涵蓋 20 個科室的 100 個多輪對話進行評估。
    *   HuatuoGPT 不僅全面優於目前的開源中文醫療模型，而且在大部分科室的表現上均優於 GPT 3.5 Turbo。
    *   證明 HuatuoGPT 在處理更複雜的多輪問診場景中有更優異的性能。

**2. 人工評估：**

*   邀請專業醫生對模型的輸出結果進行人工評估，同樣分為單輪問答場景和多輪問診場景。
*   無論單輪還是多輪評測，結果都與自動評估結果保持一致。
*   充分驗證了模型性能評估的一致性和可靠性。

**Huatuo-26M 醫療問答數據集：**

*   團隊還開放了 HuatuoGPT 的前置工作 Huatuo-26M 醫療問答數據集（2600 萬醫療問答數據），全部開源到 HuggingFace。
*   如果需要清理好的乾淨數據，可以發郵件申請（註明單位和承諾只用於科學目的）。
*   對於包括 Huatuo-26M 在内的三個公開的醫療問答數據集，HuatuoGPT 的 Zero shot 性能都超過了 GPT 3.5 Turbo、ChatGLM 和已有的醫療 GBT，甚至遠好於全微調的中等大小的 T5 和 GPT。

**總結：**

*   HuatuoGPT 结合了 ChatGPT 的数据和真实医生的数据，实现了更好的医疗问答性能。
*   希望精通醫學的朋友能深度體驗，並分享感受。

我希望這個整理版本更清晰易懂。 如果您需要進一步的修改或調整，請隨時告訴我。

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>91. [2023-05-31] 【人物】中国人工智能的摇篮 | 上海交大ACM班传奇故事 | 余勇 | 林晨曦 | 戴文渊 | 胡哲人 | 李磊 | 李沐 | 陈天奇 | 王敏捷 | 张伟楠 | 郑曌</summary><br>

<a href="https://www.youtube.com/watch?v=9WdPG4KAbGY" target="_blank">
    <img src="https://img.youtube.com/vi/9WdPG4KAbGY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人物】中国人工智能的摇篮 | 上海交大ACM班传奇故事 | 余勇 | 林晨曦 | 戴文渊 | 胡哲人 | 李磊 | 李沐 | 陈天奇 | 王敏捷 | 张伟楠 | 郑曌

好的，我將根據您的要求，對文稿進行整理，使其更易於閱讀和理解。

**整理後文稿：**

**引言**

大家好，這裡是最佳拍檔。我是大飛。今天要講述一個傳奇的班集體——上海交大的ACM班，以及這個班級裡同學們的故事。ACM班成立時僅用了三天，不僅直接推動了中國計算機技術的發展，更被譽為「人工智能CTO搖籃」。

**ACM班的創立**

*   **創始人余勇：** 提出這個設想的創始人是當時剛過40歲的余勇。
*   **成立背景：** 2002年6月16日，擔任上海交通大學ACM國際大學生設計程序競賽（ACM ICPC）總教練六年後，余勇心中埋藏已久的夙願終於迎來曙光，那就是培養屬於中國自己的計算機科學家。
*   **申請與批復：** 余勇找到主管教學的校長，提出成立ACM班的申請，隔天（18日）就獲得上海交大的批復。
*   **時代背景：** 當時國內沒有可以借鑒的參考，清華姚班也是在三年後的2005年秋季才發布招生計畫。
*   **快速批復的原因：** 2002年3月，交大學生林晨曦、陸靖、周健組隊代表中國獲得第一個ACM ICPC冠軍。

**余勇的教育情結**

*   **華東師範大學的影響：** 余勇大學時就讀於華東師範大學，有兩個人對他產生深刻的影響。
    *   **劉佛年校長：** 劉佛年強調做老師不只要教好書，還要懂教育。
    *   **張東韓主任：** 張東韓的報告會，讓余勇更加堅定傳道授業解惑的追求。
*   **上海交大的教學生涯：** 1986年從華東師大碩士畢業後，余勇選擇到上海交大任教，至今已36年。

**ACM班的成立與成功**

*   **ACM ICPC的契機：** 1996年ACM ICPC進入中國，余勇開始組隊參賽。
*   **天才少年的精誠合作：** 2002年，交大獲得世界冠軍，余勇得以成立ACM班。
    *   **林晨曦：** 依圖科技聯合創始人，原為材料專業學生，被余勇挖掘。
    *   **陸靖：** 天才少年，但經歷失敗後明白團隊合作的重要性。
    *   **周健：** 團隊成員，與林晨曦、陸靖一同奪得世界冠軍。
*   **ACM班的傳奇故事：** ACM班開啟了上海交大在計算機、人工智能、深度學習領域的傳奇故事。

**ACM班的影響**

*   **培養人才：** ACM班培養了戴文淵、李沐、陳天奇、李磊、鄭曌等人工智能領域的大神級人物。
*   **多元發展：** ACM班學生不僅在學術研究上有所成就，也參與創立了一批知名公司，如餓了么、依圖科技、第四範式等。

**ACM班的文化**

*   **核心價值：** 超越，探索有中國特色的拔尖人才培養模式。
*   **課程特色：**
    *   **學子講壇：** 余勇講授非計算機類的文學、時政等內容。
    *   **教學實踐：** 高年級學生擔任低年級課程助教，傳承ACM班的傳統。

**戴文淵的故事**

*   **選擇交大：** 戴文淵放棄清華保送資格，選擇進入交大ACM班。
*   **再奪冠軍：** 2005年，戴文淵帶隊奪得ACM ICPC世界冠軍。
*   **加入百度：** 參與百度鳳巢建設，獲得「最佳百度人」稱號。
*   **創立第四範式：** 離開百度後，創立第四範式，致力於企業服務。

**羅宇龍的故事**

*   **創業的選擇：** 羅宇龍放棄直研選擇創業，受到余勇批評。
*   **餓了么的成功：** 參與創立餓了么，成為資深副總裁。

**陳雨強的故事**

*   **加入百度：** 加入百度，參與搭建世界上第一個商用的深度學習系統。
*   **加入第四範式：** 應戴文淵邀請，參與第四範式的創業。

**鄭曌的故事**

*   **加入谷歌：** 在谷歌工作多年。
*   **加入第四範式：** 應戴文淵邀請，回國參與第四範式的工作。

**ACM班的其他傑出人才**

*   **胡哲人：** 流利說創始人，第一個IPO成功的ACM班學生。
*   **李磊：** 獲得ACL2021最佳論文，任職加州大學聖巴巴拉分校助理教授。
*   **李沐：** 在百度創建分布式的機器學習廣告系統，YouTube頻道「跟李沐學AI」。
*   **陳天奇：** XGBoost的作者，MXNet的共同創始人。

**MXNet的誕生**

*   **團隊合作：** 李沐、陳天奇、王敏捷共同創建MXNet。
*   **影響力：** MXNet成為深度學習領域最主流的開源代碼之一。

**余勇的教育理念**

*   **保持好奇心：** 希望學生始終保持好奇心，不要給自己打標籤。
*   **多元發展：** ACM班學生來自不同領域，基礎紮實，容易在各個方向取得成就。

**余勇的伯禹教育**

*   **創立伯禹教育：** 面向全國所有願意學習人工智能計算機的學生。
*   **彌補教育資源差距：** 積極參與各種交流活動，為不同學校的學生提供幫助。

**結語**

20年後，余勇面臨的問題更多也更加複雜，但仍致力於培養圖靈獎得主。希望在未來的20年，ACM班能探索更多新的領域。

**文稿調整說明：**

*   **分點整理：** 將冗長的文字分為小段落，並使用項目符號（*）或數字編號，使重點更突出，層次更分明。
*   **添加標題與副標題：** 增加標題與副標題，方便讀者快速瞭解文章結構和內容。
*   **提煉關鍵資訊：** 將每個部分的核心信息提煉出來，用簡潔的語言概括，方便讀者快速抓取重點。
*   **修改部分語句：** 調整部分語句，使其更流暢易懂，更符合閱讀習慣。
*   **簡化表達：** 刪除一些重複或不必要的描述，使文章更精煉。
*   **內容歸納：** 將相似內容合併，避免重複敘述。

希望這個整理後的文稿能更符合您的需求！

[model=gemini-2.0-flash,0]


---

</details>

<details>
<summary>90. 【对话】SmartDeer创始人庞律 | 解读中国企业出海香港政策 | 香港人才引进计划 | 四类人才签证究竟有什么不同 | 如何拿到香港永居签证和公民身份 | 香港投资移民最新进展</summary><br>

<a href="https://www.youtube.com/watch?v=J7U1Vg6pOLQ" target="_blank">
    <img src="https://img.youtube.com/vi/J7U1Vg6pOLQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【对话】SmartDeer创始人庞律 | 解读中国企业出海香港政策 | 香港人才引进计划 | 四类人才签证究竟有什么不同 | 如何拿到香港永居签证和公民身份 | 香港投资移民最新进展



---

</details>

<details>
<summary>89. 【人工智能】全新AI智能体Voyager | 自己学会玩minecraft | 全场景终身学习 | 性能完胜AutoGPT | 英伟达Nvidia最新发布 | NPC取代人类玩家</summary><br>

<a href="https://www.youtube.com/watch?v=KbfP543LLNw" target="_blank">
    <img src="https://img.youtube.com/vi/KbfP543LLNw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】全新AI智能体Voyager | 自己学会玩minecraft | 全场景终身学习 | 性能完胜AutoGPT | 英伟达Nvidia最新发布 | NPC取代人类玩家



---

</details>

<details>
<summary>88. 【人工智能】开源类ChatGPT模型 | BLOOMChat | 1760亿参数 | 可支持中文在内46种语言 | Apache 2.0许可可商用 | SambaNova和Together联合推出</summary><br>

<a href="https://www.youtube.com/watch?v=IiHY1Mit4wM" target="_blank">
    <img src="https://img.youtube.com/vi/IiHY1Mit4wM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】开源类ChatGPT模型 | BLOOMChat | 1760亿参数 | 可支持中文在内46种语言 | Apache 2.0许可可商用 | SambaNova和Together联合推出



---

</details>

<details>
<summary>87. 【商业】OPPO缘何梦碎哲库ZEKU | 失败的原因究竟是什么 | 美国制裁还是没钱 | 亦或是对行业缺少敬畏 | 造芯片究竟有多难</summary><br>

<a href="https://www.youtube.com/watch?v=8zusGXL86UU" target="_blank">
    <img src="https://img.youtube.com/vi/8zusGXL86UU/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】OPPO缘何梦碎哲库ZEKU | 失败的原因究竟是什么 | 美国制裁还是没钱 | 亦或是对行业缺少敬畏 | 造芯片究竟有多难



---

</details>

<details>
<summary>86. 【Google】谷歌推出免费AI编程神器Colab，欲将Copilot拉下神坛</summary><br>

<a href="https://www.youtube.com/watch?v=k35Ihh0tFW8" target="_blank">
    <img src="https://img.youtube.com/vi/k35Ihh0tFW8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Google】谷歌推出免费AI编程神器Colab，欲将Copilot拉下神坛



---

</details>

<details>
<summary>85. 【AIGC】从此告别繁琐修图，Clipdrop带你体验“无痛修图”！ 八大功能 ： 橡皮擦、一键删除背景、打灯、超分、文生图、背景替换、文本去除器、变体图</summary><br>

<a href="https://www.youtube.com/watch?v=jcFJnB6tjZo" target="_blank">
    <img src="https://img.youtube.com/vi/jcFJnB6tjZo/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【AIGC】从此告别繁琐修图，Clipdrop带你体验“无痛修图”！ 八大功能 ： 橡皮擦、一键删除背景、打灯、超分、文生图、背景替换、文本去除器、变体图



---

</details>

<details>
<summary>84. 【AIGC】GAN模型出新花样 | DragGAN模型 | 点点拖拽就能生成新图像 | 让狗转头让狮子开口让人眨眼 | MIT谷歌马普所多团队联手打造 | 第一作者华人</summary><br>

<a href="https://www.youtube.com/watch?v=3Rx1-FrldSc" target="_blank">
    <img src="https://img.youtube.com/vi/3Rx1-FrldSc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【AIGC】GAN模型出新花样 | DragGAN模型 | 点点拖拽就能生成新图像 | 让狗转头让狮子开口让人眨眼 | MIT谷歌马普所多团队联手打造 | 第一作者华人



---

</details>

<details>
<summary>83. 【商业】领英中国溃败史 | 为何多次战略失误 | 打输三场关键战役 | 做了9年之后行业排名垫底 | 关闭赤兔和领英职场等服务</summary><br>

<a href="https://www.youtube.com/watch?v=iWXGTnxUUow" target="_blank">
    <img src="https://img.youtube.com/vi/iWXGTnxUUow/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】领英中国溃败史 | 为何多次战略失误 | 打输三场关键战役 | 做了9年之后行业排名垫底 | 关闭赤兔和领英职场等服务



---

</details>

<details>
<summary>82. 【人工智能】《未来简史》作者赫拉利最新演讲 | AI无需意识和身体即可毁灭人类文明 | AI 已经破解了人类文明的操作系统 | 通过建立亲密关系影响人类 | AI比核武器更强大 | 为人类制造幻境</summary><br>

<a href="https://www.youtube.com/watch?v=V9BT4Kjb9is" target="_blank">
    <img src="https://img.youtube.com/vi/V9BT4Kjb9is/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】《未来简史》作者赫拉利最新演讲 | AI无需意识和身体即可毁灭人类文明 | AI 已经破解了人类文明的操作系统 | 通过建立亲密关系影响人类 | AI比核武器更强大 | 为人类制造幻境



---

</details>

<details>
<summary>81. 【人工智能】ImageBind：一种跨感官“链接”人工智能的新方法  |  Meta 最新黑科技 | 多模态模型</summary><br>

<a href="https://www.youtube.com/watch?v=COEWCL9OFdA" target="_blank">
    <img src="https://img.youtube.com/vi/COEWCL9OFdA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】ImageBind：一种跨感官“链接”人工智能的新方法  |  Meta 最新黑科技 | 多模态模型



---

</details>

<details>
<summary>80. 【OpenAI】萨姆奥特曼 Sam Altman出席国会听证会 | 积极拥抱政府监管 | AI企业要上牌照 | 建议成立国际组织 | AI将创造更多就业 | 不为赚钱只因热爱</summary><br>

<a href="https://www.youtube.com/watch?v=CW4T5dQiViY" target="_blank">
    <img src="https://img.youtube.com/vi/CW4T5dQiViY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【OpenAI】萨姆奥特曼 Sam Altman出席国会听证会 | 积极拥抱政府监管 | AI企业要上牌照 | 建议成立国际组织 | AI将创造更多就业 | 不为赚钱只因热爱



---

</details>

<details>
<summary>79. 【Google】2023 Google IO大会精彩集锦 |  谷歌三个最新AI黑科技 ，《帮我写》《魔法橡皮擦》《沉浸式地图》</summary><br>

<a href="https://www.youtube.com/watch?v=_fXNupKOXy0" target="_blank">
    <img src="https://img.youtube.com/vi/_fXNupKOXy0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Google】2023 Google IO大会精彩集锦 |  谷歌三个最新AI黑科技 ，《帮我写》《魔法橡皮擦》《沉浸式地图》



---

</details>

<details>
<summary>78. 【人工智能】把个人理财全都交给GPT-4 + AutoGPT | 一天赚了217.85美元 | 退款发律师函还能讨价还价 | DoNotPay CEO Joshua Browder</summary><br>

<a href="https://www.youtube.com/watch?v=zwOuJcvL6Kk" target="_blank">
    <img src="https://img.youtube.com/vi/zwOuJcvL6Kk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】把个人理财全都交给GPT-4 + AutoGPT | 一天赚了217.85美元 | 退款发律师函还能讨价还价 | DoNotPay CEO Joshua Browder



---

</details>

<details>
<summary>77. 【人物】陈皓  (网名左耳朵耗子） | MegaEase创始人 | 资深技术专家 | 骨灰级程序员 | 上周六突发心梗逝世年仅47岁 | InfoQ二叉树人物纪录片《初心》</summary><br>

<a href="https://www.youtube.com/watch?v=uYzUyLBe-UQ" target="_blank">
    <img src="https://img.youtube.com/vi/uYzUyLBe-UQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人物】陈皓  (网名左耳朵耗子） | MegaEase创始人 | 资深技术专家 | 骨灰级程序员 | 上周六突发心梗逝世年仅47岁 | InfoQ二叉树人物纪录片《初心》



---

</details>

<details>
<summary>76. 【人工智能】解读Meta Toolformer论文 | 可以自学使用工具的大语言模型 | 如何让机器自己学会调用API | 如何对API进行采样和过滤</summary><br>

<a href="https://www.youtube.com/watch?v=6bcJ3qrXSIY" target="_blank">
    <img src="https://img.youtube.com/vi/6bcJ3qrXSIY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】解读Meta Toolformer论文 | 可以自学使用工具的大语言模型 | 如何让机器自己学会调用API | 如何对API进行采样和过滤



---

</details>

<details>
<summary>75. 【分享】5月7日 | 陆奇 | 《新范式 新时代 新机会》| 官方完整高清字幕版 | 奇绩创坛</summary><br>

<a href="https://www.youtube.com/watch?v=-LECKZqygzk" target="_blank">
    <img src="https://img.youtube.com/vi/-LECKZqygzk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【分享】5月7日 | 陆奇 | 《新范式 新时代 新机会》| 官方完整高清字幕版 | 奇绩创坛



---

</details>

<details>
<summary>74. 【芯片】5月12日 | OPPO宣布关停旗下芯片子公司哲库科技ZEKU | 全员会议现场宣布关停解散</summary><br>

<a href="https://www.youtube.com/watch?v=196No6_qiJk" target="_blank">
    <img src="https://img.youtube.com/vi/196No6_qiJk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【芯片】5月12日 | OPPO宣布关停旗下芯片子公司哲库科技ZEKU | 全员会议现场宣布关停解散



---

</details>

<details>
<summary>73. 【AI】Caryn AI | 美国女网红把自己做成虚拟女友 | 同时交往近千名男友 | 年入估计六千万美元 | AI赚钱新思路  | 虚拟伴侣能否解决情感寄托 | 电影《her》真实版</summary><br>

<a href="https://www.youtube.com/watch?v=BlED3pXO5NQ" target="_blank">
    <img src="https://img.youtube.com/vi/BlED3pXO5NQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【AI】Caryn AI | 美国女网红把自己做成虚拟女友 | 同时交往近千名男友 | 年入估计六千万美元 | AI赚钱新思路  | 虚拟伴侣能否解决情感寄托 | 电影《her》真实版



---

</details>

<details>
<summary>72. 【ChatGPT】国内访问ChatGPT神器Pandora | 完整安装使用教程 | Github开源 | 一次性解决ChatGPT的封号、人机验证、拒绝访问、高负载、中断卡顿等使用问题 | 无需翻墙</summary><br>

<a href="https://www.youtube.com/watch?v=QjAmFHqsQbw" target="_blank">
    <img src="https://img.youtube.com/vi/QjAmFHqsQbw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【ChatGPT】国内访问ChatGPT神器Pandora | 完整安装使用教程 | Github开源 | 一次性解决ChatGPT的封号、人机验证、拒绝访问、高负载、中断卡顿等使用问题 | 无需翻墙



---

</details>

<details>
<summary>71. 【商业】OpenAI首席执行官Sam Altman | OpenAI可能将融资1000亿美元 | 可能成为硅谷历史上融资最多的公司</summary><br>

<a href="https://www.youtube.com/watch?v=QA3x2jIQ2o0" target="_blank">
    <img src="https://img.youtube.com/vi/QA3x2jIQ2o0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】OpenAI首席执行官Sam Altman | OpenAI可能将融资1000亿美元 | 可能成为硅谷历史上融资最多的公司



---

</details>

<details>
<summary>70. 【Github】全球最大源代码平台Github全面开放新的代码搜索引擎 |  Code Search和Code View | 提升软件开发效率 | 自动补全 | 搜索结果智能分类</summary><br>

<a href="https://www.youtube.com/watch?v=yCZIlEdhrQ4" target="_blank">
    <img src="https://img.youtube.com/vi/yCZIlEdhrQ4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【Github】全球最大源代码平台Github全面开放新的代码搜索引擎 |  Code Search和Code View | 提升软件开发效率 | 自动补全 | 搜索结果智能分类



---

</details>

<details>
<summary>69. 【微软】Microsoft 365 Copilot新增8大功能 | 语义索引 | 白板Copilot | PPT DALL-E | OneNote Loop Viva Copilot</summary><br>

<a href="https://www.youtube.com/watch?v=Q_j1dOzxKdY" target="_blank">
    <img src="https://img.youtube.com/vi/Q_j1dOzxKdY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【微软】Microsoft 365 Copilot新增8大功能 | 语义索引 | 白板Copilot | PPT DALL-E | OneNote Loop Viva Copilot



---

</details>

<details>
<summary>68. 【独家】5月7日 | 陆奇 | 《新范式 新时代 新机会》完整精修字幕版 | 奇绩创坛北京分享会 | 最新前沿技术趋势 | 深入分析OpenAI爆发成因 | 全面讲解大模型时代诞生的新场景和新机遇</summary><br>

<a href="https://www.youtube.com/watch?v=H48R3xq7IRI" target="_blank">
    <img src="https://img.youtube.com/vi/H48R3xq7IRI/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【独家】5月7日 | 陆奇 | 《新范式 新时代 新机会》完整精修字幕版 | 奇绩创坛北京分享会 | 最新前沿技术趋势 | 深入分析OpenAI爆发成因 | 全面讲解大模型时代诞生的新场景和新机遇



---

</details>

<details>
<summary>67. 【投资】沃伦·巴菲特 查理·芒格 | 伯克希尔哈撒韦最新股东大会 | 五个半小时精华要点解读 | 对人工智能的发展感到恐惧和疑惑</summary><br>

<a href="https://www.youtube.com/watch?v=PVU6JptWsmA" target="_blank">
    <img src="https://img.youtube.com/vi/PVU6JptWsmA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【投资】沃伦·巴菲特 查理·芒格 | 伯克希尔哈撒韦最新股东大会 | 五个半小时精华要点解读 | 对人工智能的发展感到恐惧和疑惑



---

</details>

<details>
<summary>66. 【人工智能】Google内部文件泄露 | Google没有壁垒 OpenAI也没有 | 开源大语言模型LLM终将战胜所有人 | 巨头之间的AI竞争竟然被Meta LLaMA偷了家</summary><br>

<a href="https://www.youtube.com/watch?v=h7Vn_AfsM_k" target="_blank">
    <img src="https://img.youtube.com/vi/h7Vn_AfsM_k/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Google内部文件泄露 | Google没有壁垒 OpenAI也没有 | 开源大语言模型LLM终将战胜所有人 | 巨头之间的AI竞争竟然被Meta LLaMA偷了家



---

</details>

<details>
<summary>65. 【人工智能】全网独家首发 | 目前最完整MiniGPT-4本地安装部署中文教程 + 不完全避坑指南 | 开源版GPT-4 | 多模态图文识别和问答</summary><br>

<a href="https://www.youtube.com/watch?v=cJ_50TPJLBU" target="_blank">
    <img src="https://img.youtube.com/vi/cJ_50TPJLBU/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】全网独家首发 | 目前最完整MiniGPT-4本地安装部署中文教程 + 不完全避坑指南 | 开源版GPT-4 | 多模态图文识别和问答



---

</details>

<details>
<summary>64. 【人工智能】解读微软Microsoft TaskMatrix.AI | 多模态对话基础模型MCFM + 海量API | 可能是大语言模型LLM的另一个未来发展方向</summary><br>

<a href="https://www.youtube.com/watch?v=pdD6tPx4Maw" target="_blank">
    <img src="https://img.youtube.com/vi/pdD6tPx4Maw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】解读微软Microsoft TaskMatrix.AI | 多模态对话基础模型MCFM + 海量API | 可能是大语言模型LLM的另一个未来发展方向



---

</details>

<details>
<summary>63. 【人工智能】AdeptAI | 你的贾维斯Javis | 通用人工智能助手 |  Action Transformer ACT-1 | 用AI来操作计算机上的软件。</summary><br>

<a href="https://www.youtube.com/watch?v=1A3ETR0zFJY" target="_blank">
    <img src="https://img.youtube.com/vi/1A3ETR0zFJY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】AdeptAI | 你的贾维斯Javis | 通用人工智能助手 |  Action Transformer ACT-1 | 用AI来操作计算机上的软件。



---

</details>

<details>
<summary>62. 【人物】AI教父杰弗里辛顿Geoffrey Hinto离职Google | 对毕生工作感到后悔和恐惧 | Google为什么在AI竞争中处于下风 | Sundar Pichai面临哪些挑战</summary><br>

<a href="https://www.youtube.com/watch?v=THNNsuQUMb0" target="_blank">
    <img src="https://img.youtube.com/vi/THNNsuQUMb0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人物】AI教父杰弗里辛顿Geoffrey Hinto离职Google | 对毕生工作感到后悔和恐惧 | Google为什么在AI竞争中处于下风 | Sundar Pichai面临哪些挑战



---

</details>

<details>
<summary>61. 【人工智能】Meta的觉醒 | 告别元宇宙，拥抱AIGC | 马克·扎克伯格 |  元宇宙实验室Reality Labs | Segment Anything Model | DINO V2 |</summary><br>

<a href="https://www.youtube.com/watch?v=vJNjg6TE2YU" target="_blank">
    <img src="https://img.youtube.com/vi/vJNjg6TE2YU/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Meta的觉醒 | 告别元宇宙，拥抱AIGC | 马克·扎克伯格 |  元宇宙实验室Reality Labs | Segment Anything Model | DINO V2 |



---

</details>

<details>
<summary>60. 【商业】Midjourney如何战胜StabilityAI，从AIGC大战中脱颖而出？一个年营收1亿美元公司，竟然只有11个人，研发人员一半还都是实习生？没拿过一分钱融资，竟然免费要了1W块GPU？</summary><br>

<a href="https://www.youtube.com/watch?v=cQZNOWlYuWE" target="_blank">
    <img src="https://img.youtube.com/vi/cQZNOWlYuWE/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】Midjourney如何战胜StabilityAI，从AIGC大战中脱颖而出？一个年营收1亿美元公司，竟然只有11个人，研发人员一半还都是实习生？没拿过一分钱融资，竟然免费要了1W块GPU？



---

</details>

<details>
<summary>59. 【商业】王小川与李彦宏的20年恩怨</summary><br>

<a href="https://www.youtube.com/watch?v=94kLTkCPA0M" target="_blank">
    <img src="https://img.youtube.com/vi/94kLTkCPA0M/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】王小川与李彦宏的20年恩怨



---

</details>

<details>
<summary>58. 【人工智能】10个问题感受Vicuna-13B(小羊驼)超强的AI写作能力 | Vicuna-13B | 地表最强开源大语言模型没有之一 | 300美元你值得拥有！</summary><br>

<a href="https://www.youtube.com/watch?v=DOgjiV75VLM" target="_blank">
    <img src="https://img.youtube.com/vi/DOgjiV75VLM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】10个问题感受Vicuna-13B(小羊驼)超强的AI写作能力 | Vicuna-13B | 地表最强开源大语言模型没有之一 | 300美元你值得拥有！



---

</details>

<details>
<summary>57. 【人工智能】陆奇的大模型世界观 | 万字长文演讲20分钟精华版 | 附65页精彩PPT | 如何看待OpenAI/ChatGPT/大模型LLM所带来的历史拐点 | 奇绩创坛最新演讲分享</summary><br>

<a href="https://www.youtube.com/watch?v=LQaPKC4nRKo" target="_blank">
    <img src="https://img.youtube.com/vi/LQaPKC4nRKo/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】陆奇的大模型世界观 | 万字长文演讲20分钟精华版 | 附65页精彩PPT | 如何看待OpenAI/ChatGPT/大模型LLM所带来的历史拐点 | 奇绩创坛最新演讲分享



---

</details>

<details>
<summary>56. 【人工智能】10分钟带你了解HuggingGPT是如何工作的 | HuggingGPT aka JARVIS | 微软与浙江大学完成</summary><br>

<a href="https://www.youtube.com/watch?v=TLqOfceh9Kc" target="_blank">
    <img src="https://img.youtube.com/vi/TLqOfceh9Kc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】10分钟带你了解HuggingGPT是如何工作的 | HuggingGPT aka JARVIS | 微软与浙江大学完成



---

</details>

<details>
<summary>55. 【人工智能】如何安装Anaconda | AI程序开发必备 | 最好用的开源python发行版本</summary><br>

<a href="https://www.youtube.com/watch?v=iI94ed5Jn84" target="_blank">
    <img src="https://img.youtube.com/vi/iI94ed5Jn84/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】如何安装Anaconda | AI程序开发必备 | 最好用的开源python发行版本



---

</details>

<details>
<summary>54. 【人工智能】15分钟Auto-GPT保姆级安装教程 | 如何用Docker在MacOS下安装AutoGPT</summary><br>

<a href="https://www.youtube.com/watch?v=Oke225G7_4s" target="_blank">
    <img src="https://img.youtube.com/vi/Oke225G7_4s/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】15分钟Auto-GPT保姆级安装教程 | 如何用Docker在MacOS下安装AutoGPT



---

</details>

<details>
<summary>53. 【人工智能】​Segment-and-Track Anything |  SAM-Track | 视频版SAM来了，分割/跟踪/编辑一切 | 现已开源 | 浙江大学计算机学院ReLER实验室</summary><br>

<a href="https://www.youtube.com/watch?v=uBYydYp7BB0" target="_blank">
    <img src="https://img.youtube.com/vi/uBYydYp7BB0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】​Segment-and-Track Anything |  SAM-Track | 视频版SAM来了，分割/跟踪/编辑一切 | 现已开源 | 浙江大学计算机学院ReLER实验室



---

</details>

<details>
<summary>52. 【编程】JDK新增史上最无用提案！竟然是为了简化Hello World？</summary><br>

<a href="https://www.youtube.com/watch?v=HwWsWrd3hyE" target="_blank">
    <img src="https://img.youtube.com/vi/HwWsWrd3hyE/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【编程】JDK新增史上最无用提案！竟然是为了简化Hello World？



---

</details>

<details>
<summary>51. 【人工智能】开源多模态模型MiniGPT-4发布 | 提前感受GPT-4的识图能力 | 基于Vicuna构建的LLM | 能够生成图片描述 | 根据手写文本指令构建网站</summary><br>

<a href="https://www.youtube.com/watch?v=-2OSLGL48Os" target="_blank">
    <img src="https://img.youtube.com/vi/-2OSLGL48Os/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】开源多模态模型MiniGPT-4发布 | 提前感受GPT-4的识图能力 | 基于Vicuna构建的LLM | 能够生成图片描述 | 根据手写文本指令构建网站



---

</details>

<details>
<summary>50. 【人工智能】Meta开源Animated Drawings项目算法 | 用AI让儿童涂鸦手绘人物动起来 | 32种动作多种配置参数任你选择</summary><br>

<a href="https://www.youtube.com/watch?v=RoGBzsOeiz0" target="_blank">
    <img src="https://img.youtube.com/vi/RoGBzsOeiz0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Meta开源Animated Drawings项目算法 | 用AI让儿童涂鸦手绘人物动起来 | 32种动作多种配置参数任你选择



---

</details>

<details>
<summary>49. 【安全】PassGAN | 新型AI密码破解工具 | 基于生成式对抗网络GAN | 51%的密码可在1分钟破解 | 破解7位数密码只需要6分钟 | 提高密码安全性的三个方法</summary><br>

<a href="https://www.youtube.com/watch?v=QNRUttmNVKM" target="_blank">
    <img src="https://img.youtube.com/vi/QNRUttmNVKM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【安全】PassGAN | 新型AI密码破解工具 | 基于生成式对抗网络GAN | 51%的密码可在1分钟破解 | 破解7位数密码只需要6分钟 | 提高密码安全性的三个方法



---

</details>

<details>
<summary>48. 【人工智能】15分钟通俗讲解AutoGPT | 基本原理和流程</summary><br>

<a href="https://www.youtube.com/watch?v=iO6j7WfQeo8" target="_blank">
    <img src="https://img.youtube.com/vi/iO6j7WfQeo8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】15分钟通俗讲解AutoGPT | 基本原理和流程



---

</details>

<details>
<summary>47. 【人物】为何计算机传奇大神 Linus ，能写出Linux如此牛逼的操作系统？</summary><br>

<a href="https://www.youtube.com/watch?v=QxMojTT5ahw" target="_blank">
    <img src="https://img.youtube.com/vi/QxMojTT5ahw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人物】为何计算机传奇大神 Linus ，能写出Linux如此牛逼的操作系统？



---

</details>

<details>
<summary>46. 【人工智能】十分钟讲清楚如何选择、安装和使用AutoGPT | 本地安装 | AgentGPT | Cognosys</summary><br>

<a href="https://www.youtube.com/watch?v=_xejoN8H-U4" target="_blank">
    <img src="https://img.youtube.com/vi/_xejoN8H-U4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】十分钟讲清楚如何选择、安装和使用AutoGPT | 本地安装 | AgentGPT | Cognosys



---

</details>

<details>
<summary>45. 【电影】对话资深影评人“法兰西胶片” |《宇宙探索编辑部》| 年度华语第一佳片 |《超级马力欧兄弟大电影》| 打破影史动画电影最高票房纪录</summary><br>

<a href="https://www.youtube.com/watch?v=Bc60jKMJHtM" target="_blank">
    <img src="https://img.youtube.com/vi/Bc60jKMJHtM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【电影】对话资深影评人“法兰西胶片” |《宇宙探索编辑部》| 年度华语第一佳片 |《超级马力欧兄弟大电影》| 打破影史动画电影最高票房纪录



---

</details>

<details>
<summary>44. 【人工智能】斯坦福大学推出生成式代理人GA | 用GPT技术为游戏NPC带来智能涌现，我们会不会也是子孙后代构建的NPC？</summary><br>

<a href="https://www.youtube.com/watch?v=U5-GVEQKjF0" target="_blank">
    <img src="https://img.youtube.com/vi/U5-GVEQKjF0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】斯坦福大学推出生成式代理人GA | 用GPT技术为游戏NPC带来智能涌现，我们会不会也是子孙后代构建的NPC？



---

</details>

<details>
<summary>43. 【AIGC】25分钟爆肝7千字，一口气讲清AI如何绘画，白话讲解通俗易懂。如何让计算机生成接近真实的图片？如何让模型知道我们想要什么样子？CLIP/Diffusion/ControlNet都是什么？</summary><br>

<a href="https://www.youtube.com/watch?v=eTveYJzC2ZA" target="_blank">
    <img src="https://img.youtube.com/vi/eTveYJzC2ZA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【AIGC】25分钟爆肝7千字，一口气讲清AI如何绘画，白话讲解通俗易懂。如何让计算机生成接近真实的图片？如何让模型知道我们想要什么样子？CLIP/Diffusion/ControlNet都是什么？



---

</details>

<details>
<summary>42. 【人工智能】Meta发布史上最强抠图模型 | Segment Anything Model | 零样本学习可分割一切物体 | 计算机视觉迎来GPT-3时刻</summary><br>

<a href="https://www.youtube.com/watch?v=SUehMu5yEiM" target="_blank">
    <img src="https://img.youtube.com/vi/SUehMu5yEiM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】Meta发布史上最强抠图模型 | Segment Anything Model | 零样本学习可分割一切物体 | 计算机视觉迎来GPT-3时刻



---

</details>

<details>
<summary>41. 【人工智能】国内大语言模型进展究竟如何，看阿里AI专家怎么说？ | 距离GPT-3还有一年半的差距 | 百度文心一言也仅仅相当于GPT-2.5 | 国内算力储备如何 | 百度腾讯华为360都在干什么？</summary><br>

<a href="https://www.youtube.com/watch?v=YfTxWcBmKWA" target="_blank">
    <img src="https://img.youtube.com/vi/YfTxWcBmKWA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】国内大语言模型进展究竟如何，看阿里AI专家怎么说？ | 距离GPT-3还有一年半的差距 | 百度文心一言也仅仅相当于GPT-2.5 | 国内算力储备如何 | 百度腾讯华为360都在干什么？



---

</details>

<details>
<summary>40. 【人工智能】马斯克开源推特Twitter推荐算法 | 核心排序加权规则快速解读 | 究竟哪些指标对推荐影响最大 | 如何让你的推文更被系统推荐 | 不会编程也能看得懂</summary><br>

<a href="https://www.youtube.com/watch?v=tYuJKVnEO0w" target="_blank">
    <img src="https://img.youtube.com/vi/tYuJKVnEO0w/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】马斯克开源推特Twitter推荐算法 | 核心排序加权规则快速解读 | 究竟哪些指标对推荐影响最大 | 如何让你的推文更被系统推荐 | 不会编程也能看得懂



---

</details>

<details>
<summary>39. 【人工智能】微软 154 页论文7万字浓缩精华版 | 首次揭示 GPT-4 超能力 | 智能水平已非常接近人类水平 | 为何是通用人工智能 (AGI) 的早期版本</summary><br>

<a href="https://www.youtube.com/watch?v=RX2TdJz79ig" target="_blank">
    <img src="https://img.youtube.com/vi/RX2TdJz79ig/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】微软 154 页论文7万字浓缩精华版 | 首次揭示 GPT-4 超能力 | 智能水平已非常接近人类水平 | 为何是通用人工智能 (AGI) 的早期版本



---

</details>

<details>
<summary>38. 【人工智能】微软推出Security Copilot | 内置GPT-4 | 自动抵御65万亿个网络安全威胁 | 可与微软Sentinel/Defender/Intune集成 | 生成式AI安全时代</summary><br>

<a href="https://www.youtube.com/watch?v=rSXqpzWz5_4" target="_blank">
    <img src="https://img.youtube.com/vi/rSXqpzWz5_4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】微软推出Security Copilot | 内置GPT-4 | 自动抵御65万亿个网络安全威胁 | 可与微软Sentinel/Defender/Intune集成 | 生成式AI安全时代



---

</details>

<details>
<summary>37. 【人工智能】千名科技大佬发布公开信，联名呼吁立即暂停大模型AI训练，人工智能正处于失控前夕？埃隆马斯克为何对一手投资的OpenAI不满，他和萨姆奥特曼为何结下个人恩怨，究竟是理念不同还是嫉妒眼红？</summary><br>

<a href="https://www.youtube.com/watch?v=SStBYZ4TZsc" target="_blank">
    <img src="https://img.youtube.com/vi/SStBYZ4TZsc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】千名科技大佬发布公开信，联名呼吁立即暂停大模型AI训练，人工智能正处于失控前夕？埃隆马斯克为何对一手投资的OpenAI不满，他和萨姆奥特曼为何结下个人恩怨，究竟是理念不同还是嫉妒眼红？



---

</details>

<details>
<summary>36. 【人工智能】用AI复活了去世的奶奶 | ChatGPT + Midjourney + Baidu PaddlePaddle TTS + D-ID | 人类永生？or 虚拟现实？</summary><br>

<a href="https://www.youtube.com/watch?v=4o_0QQw7zDY" target="_blank">
    <img src="https://img.youtube.com/vi/4o_0QQw7zDY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】用AI复活了去世的奶奶 | ChatGPT + Midjourney + Baidu PaddlePaddle TTS + D-ID | 人类永生？or 虚拟现实？



---

</details>

<details>
<summary>35. 【商业】马云回国 | 张勇宣布阿里巴巴成立24年来最大组织调整 | 1+6+N 组织架构 | 子公司可独立融资和上市 | 附完整版张勇问答实录</summary><br>

<a href="https://www.youtube.com/watch?v=E-U_JKKQFUk" target="_blank">
    <img src="https://img.youtube.com/vi/E-U_JKKQFUk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【商业】马云回国 | 张勇宣布阿里巴巴成立24年来最大组织调整 | 1+6+N 组织架构 | 子公司可独立融资和上市 | 附完整版张勇问答实录



---

</details>

<details>
<summary>34. 【ChatGPT】OpenAI针对之前的全球服务宕机事件，发布了事故分析报告，事故导致部分用户聊天记录和支付记录数据被泄露，原因是Redis开源库的一个bug导致。</summary><br>

<a href="https://www.youtube.com/watch?v=NnxE9aM6eQ4" target="_blank">
    <img src="https://img.youtube.com/vi/NnxE9aM6eQ4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【ChatGPT】OpenAI针对之前的全球服务宕机事件，发布了事故分析报告，事故导致部分用户聊天记录和支付记录数据被泄露，原因是Redis开源库的一个bug导致。



---

</details>

<details>
<summary>33. 【ChatGPT】《ChatGPT 提示的艺术：如何使用清晰有效的提示》| 三分钟精华内容解读 | 如何写出有效ChatGPT提示语 | 需要避免哪些错误方式 | 什么是角色扮演大法 | 大量示例参考</summary><br>

<a href="https://www.youtube.com/watch?v=jBP5U-eQmZQ" target="_blank">
    <img src="https://img.youtube.com/vi/jBP5U-eQmZQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【ChatGPT】《ChatGPT 提示的艺术：如何使用清晰有效的提示》| 三分钟精华内容解读 | 如何写出有效ChatGPT提示语 | 需要避免哪些错误方式 | 什么是角色扮演大法 | 大量示例参考



---

</details>

<details>
<summary>32. 【编程工具】首个接入 GPT-4的开源代码编辑器Cursor，比GitHub Copilot还好用的IDE，实例演示如何用对话实现一个爬虫程序</summary><br>

<a href="https://www.youtube.com/watch?v=9XzEuEZlji0" target="_blank">
    <img src="https://img.youtube.com/vi/9XzEuEZlji0/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【编程工具】首个接入 GPT-4的开源代码编辑器Cursor，比GitHub Copilot还好用的IDE，实例演示如何用对话实现一个爬虫程序



---

</details>

<details>
<summary>31. 【人工智能】日本第一部正式出版的AI作画漫画单行本《赛博朋克桃太郎》，基于Midjourney V3 AI作画，人人都能当漫画家的时代来临</summary><br>

<a href="https://www.youtube.com/watch?v=72_XPwPhv4I" target="_blank">
    <img src="https://img.youtube.com/vi/72_XPwPhv4I/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】日本第一部正式出版的AI作画漫画单行本《赛博朋克桃太郎》，基于Midjourney V3 AI作画，人人都能当漫画家的时代来临



---

</details>

<details>
<summary>30. How did Shou Zi Chew become the CEO of TikTok from a military officer?</summary><br>

<a href="https://www.youtube.com/watch?v=Nrdj9Vfo_rQ" target="_blank">
    <img src="https://img.youtube.com/vi/Nrdj9Vfo_rQ/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# How did Shou Zi Chew become the CEO of TikTok from a military officer?



---

</details>

<details>
<summary>29. ChatGPT release integration with third-party plug-ins</summary><br>

<a href="https://www.youtube.com/watch?v=8RCzEeaPVh4" target="_blank">
    <img src="https://img.youtube.com/vi/8RCzEeaPVh4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# ChatGPT release integration with third-party plug-ins



---

</details>

<details>
<summary>28. 【人工智能】GitHub 官方发布Copilot X | 新一代基于 AI 驱动的代码编辑器  | 集成了 GPT-4 聊天功能 | 动动嘴就能写代码</summary><br>

<a href="https://www.youtube.com/watch?v=XSkyl7P03D8" target="_blank">
    <img src="https://img.youtube.com/vi/XSkyl7P03D8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】GitHub 官方发布Copilot X | 新一代基于 AI 驱动的代码编辑器  | 集成了 GPT-4 聊天功能 | 动动嘴就能写代码



---

</details>

<details>
<summary>27. Tencent 2022 Financial Report Quick Read</summary><br>

<a href="https://www.youtube.com/watch?v=IYsY2E5AN3k" target="_blank">
    <img src="https://img.youtube.com/vi/IYsY2E5AN3k/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Tencent 2022 Financial Report Quick Read



---

</details>

<details>
<summary>26. 【人工智能】巨头开启AI对决，为了应战微软和OpenAI，谷歌开放了Bard公测，目前仅面向英美成年用户，初始版本只能对文本响应，因为之前Bard有过翻车经历，所以这次谷歌显得非常谨慎</summary><br>

<a href="https://www.youtube.com/watch?v=JhMe0fk7zlA" target="_blank">
    <img src="https://img.youtube.com/vi/JhMe0fk7zlA/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】巨头开启AI对决，为了应战微软和OpenAI，谷歌开放了Bard公测，目前仅面向英美成年用户，初始版本只能对文本响应，因为之前Bard有过翻车经历，所以这次谷歌显得非常谨慎



---

</details>

<details>
<summary>25. 【ChatGPT】昨晚ChatGPT全球范围大崩溃 | 宕机超12小时 | OpenAI修复时间长达5个小时 | 连DALL-E也一起遭殃 | 打工人已经不能没有ChatGPT</summary><br>

<a href="https://www.youtube.com/watch?v=K5itlOKMiYc" target="_blank">
    <img src="https://img.youtube.com/vi/K5itlOKMiYc/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【ChatGPT】昨晚ChatGPT全球范围大崩溃 | 宕机超12小时 | OpenAI修复时间长达5个小时 | 连DALL-E也一起遭殃 | 打工人已经不能没有ChatGPT



---

</details>

<details>
<summary>24. Kai-fu Lee announced that he will personally organize Project AI2.0, personally serve as the CEO.</summary><br>

<a href="https://www.youtube.com/watch?v=cHCQ-2JDrPg" target="_blank">
    <img src="https://img.youtube.com/vi/cHCQ-2JDrPg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Kai-fu Lee announced that he will personally organize Project AI2.0, personally serve as the CEO.



---

</details>

<details>
<summary>23. The latest regulations of the U.S. Copyright Office: AIGC works a are not protected by copyright law</summary><br>

<a href="https://www.youtube.com/watch?v=nPbLL1-MQho" target="_blank">
    <img src="https://img.youtube.com/vi/nPbLL1-MQho/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# The latest regulations of the U.S. Copyright Office: AIGC works a are not protected by copyright law



---

</details>

<details>
<summary>22. Microsoft 365 Copilot  latest function preview</summary><br>

<a href="https://www.youtube.com/watch?v=Uw3don_yKz4" target="_blank">
    <img src="https://img.youtube.com/vi/Uw3don_yKz4/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Microsoft 365 Copilot  latest function preview



---

</details>

<details>
<summary>21. 【电影】对话国内资深影评人“法兰西胶片”| 沙赞2为何垃圾 | 中国观众是否需要好莱坞电影 | DC和漫威宇宙的未来 | 2023奥斯卡获奖影片 | 《瞬息全宇宙》《西线无战事》《报丧女妖》《塔尔》</summary><br>

<a href="https://www.youtube.com/watch?v=6Ub1aAUx56k" target="_blank">
    <img src="https://img.youtube.com/vi/6Ub1aAUx56k/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【电影】对话国内资深影评人“法兰西胶片”| 沙赞2为何垃圾 | 中国观众是否需要好莱坞电影 | DC和漫威宇宙的未来 | 2023奥斯卡获奖影片 | 《瞬息全宇宙》《西线无战事》《报丧女妖》《塔尔》



---

</details>

<details>
<summary>20. Microsoft and Google have released office AI products, Office 365 Copilot and Workspace AI</summary><br>

<a href="https://www.youtube.com/watch?v=wRJZ9oNhxvs" target="_blank">
    <img src="https://img.youtube.com/vi/wRJZ9oNhxvs/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Microsoft and Google have released office AI products, Office 365 Copilot and Workspace AI



---

</details>

<details>
<summary>19. 【人工智能】百度今天发布了对标ChatGPT的大语言模型“文心一言”，但是令人失望，来说一说其中的原因。</summary><br>

<a href="https://www.youtube.com/watch?v=bch-ZhF_uxw" target="_blank">
    <img src="https://img.youtube.com/vi/bch-ZhF_uxw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】百度今天发布了对标ChatGPT的大语言模型“文心一言”，但是令人失望，来说一说其中的原因。



---

</details>

<details>
<summary>18. The former Google director predicted  AIGC will end the programming industry within 3 years</summary><br>

<a href="https://www.youtube.com/watch?v=QF_8dvfMYws" target="_blank">
    <img src="https://img.youtube.com/vi/QF_8dvfMYws/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# The former Google director predicted  AIGC will end the programming industry within 3 years



---

</details>

<details>
<summary>17. GPT-4 is coming | Support multi-modality | OpenAI Evals | new Bing search engine adopts GPT-4</summary><br>

<a href="https://www.youtube.com/watch?v=UcvzsuJtTjM" target="_blank">
    <img src="https://img.youtube.com/vi/UcvzsuJtTjM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# GPT-4 is coming | Support multi-modality | OpenAI Evals | new Bing search engine adopts GPT-4



---

</details>

<details>
<summary>16. Michelle Yeoh |2023 Oscar Best Actress Contender| From a martial arts actor to a global movie queen</summary><br>

<a href="https://www.youtube.com/watch?v=o_2-dIowryg" target="_blank">
    <img src="https://img.youtube.com/vi/o_2-dIowryg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Michelle Yeoh |2023 Oscar Best Actress Contender| From a martial arts actor to a global movie queen



---

</details>

<details>
<summary>15. Google launches the largest visual language model in history - PaLM-E | 562 billion parameters</summary><br>

<a href="https://www.youtube.com/watch?v=u78TTkmojaE" target="_blank">
    <img src="https://img.youtube.com/vi/u78TTkmojaE/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Google launches the largest visual language model in history - PaLM-E | 562 billion parameters



---

</details>

<details>
<summary>14. 【人物】莫娣·刘易斯 | Maud Lewis，加拿大传奇民间女画家，幼年患疾，失去父母，被哥哥抛弃，却遇到脾气古怪的埃弗雷特并相伴一生，即便命运悲惨，依然用手中的画笔绘尽生活的美好和幸福。</summary><br>

<a href="https://www.youtube.com/watch?v=SB7V4JRQtnk" target="_blank">
    <img src="https://img.youtube.com/vi/SB7V4JRQtnk/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人物】莫娣·刘易斯 | Maud Lewis，加拿大传奇民间女画家，幼年患疾，失去父母，被哥哥抛弃，却遇到脾气古怪的埃弗雷特并相伴一生，即便命运悲惨，依然用手中的画笔绘尽生活的美好和幸福。



---

</details>

<details>
<summary>13. 【ChatGPT】The real creator of AI | 35-year-old CTO of OpenAI | Godmother of ChatGPT | Mira Murati</summary><br>

<a href="https://www.youtube.com/watch?v=iqK4Rz35SQg" target="_blank">
    <img src="https://img.youtube.com/vi/iqK4Rz35SQg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【ChatGPT】The real creator of AI | 35-year-old CTO of OpenAI | Godmother of ChatGPT | Mira Murati



---

</details>

<details>
<summary>12. 【chatGPT】Uncover the AI dream team behind ChatGPT. There are only 87 members in the team.</summary><br>

<a href="https://www.youtube.com/watch?v=yIaOBUYZ884" target="_blank">
    <img src="https://img.youtube.com/vi/yIaOBUYZ884/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【chatGPT】Uncover the AI dream team behind ChatGPT. There are only 87 members in the team.



---

</details>

<details>
<summary>11. Zheng Linghua, a young girl who was suffered from depression just because she dyed her pink hair</summary><br>

<a href="https://www.youtube.com/watch?v=LW50f31U-L8" target="_blank">
    <img src="https://img.youtube.com/vi/LW50f31U-L8/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Zheng Linghua, a young girl who was suffered from depression just because she dyed her pink hair



---

</details>

<details>
<summary>10. How accurate are the prophecies of The Simpsons?How did the prophecy become popular on the Internet?</summary><br>

<a href="https://www.youtube.com/watch?v=7oXah5aH_6A" target="_blank">
    <img src="https://img.youtube.com/vi/7oXah5aH_6A/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# How accurate are the prophecies of The Simpsons?How did the prophecy become popular on the Internet?



---

</details>

<details>
<summary>9. 【传说】八仙过海，各显神通。八仙的传说是从何处起源，人物是如何确定，以及这八个人都是何来历呢？</summary><br>

<a href="https://www.youtube.com/watch?v=gKitUAS8ebg" target="_blank">
    <img src="https://img.youtube.com/vi/gKitUAS8ebg/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【传说】八仙过海，各显神通。八仙的传说是从何处起源，人物是如何确定，以及这八个人都是何来历呢？



---

</details>

<details>
<summary>8. Liu Wenzheng, the first superstar in the history of Chinese pop music</summary><br>

<a href="https://www.youtube.com/watch?v=zCiLGi6roQY" target="_blank">
    <img src="https://img.youtube.com/vi/zCiLGi6roQY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Liu Wenzheng, the first superstar in the history of Chinese pop music



---

</details>

<details>
<summary>7. Three websites you can play GBA/FC/arcade/DOS games online for free, classic games are fun to play</summary><br>

<a href="https://www.youtube.com/watch?v=jnpFqIwsLjw" target="_blank">
    <img src="https://img.youtube.com/vi/jnpFqIwsLjw/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# Three websites you can play GBA/FC/arcade/DOS games online for free, classic games are fun to play



---

</details>

<details>
<summary>6. 【人工智能】ChatGPT最强竞争对手Claude横空出世，六大能力PK实测早知道</summary><br>

<a href="https://www.youtube.com/watch?v=SQEA4oRXR_w" target="_blank">
    <img src="https://img.youtube.com/vi/SQEA4oRXR_w/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【人工智能】ChatGPT最强竞争对手Claude横空出世，六大能力PK实测早知道



---

</details>

<details>
<summary>5. The only consortium family in China,  three generations are the richest men in China</summary><br>

<a href="https://www.youtube.com/watch?v=AZCe6u0FvJM" target="_blank">
    <img src="https://img.youtube.com/vi/AZCe6u0FvJM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# The only consortium family in China,  three generations are the richest men in China



---

</details>

<details>
<summary>4. 【酷站】个人专属卡通头像（avatar）生成器！简单好用，透明背景，近百个选项，还可以导出PNG、SVG！</summary><br>

<a href="https://www.youtube.com/watch?v=fuze2Bro_WY" target="_blank">
    <img src="https://img.youtube.com/vi/fuze2Bro_WY/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【酷站】个人专属卡通头像（avatar）生成器！简单好用，透明背景，近百个选项，还可以导出PNG、SVG！



---

</details>

<details>
<summary>3. 【ChatGPT】ChatGPT怎么用 | ChatGPT使用教程  | 产品经理教你如何使用ChatGPT |  ChatGPT实战教程 | ChatGPT 7种提升工作效率的用法 | OpenAI</summary><br>

<a href="https://www.youtube.com/watch?v=t4yDJ2KSLFM" target="_blank">
    <img src="https://img.youtube.com/vi/t4yDJ2KSLFM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【ChatGPT】ChatGPT怎么用 | ChatGPT使用教程  | 产品经理教你如何使用ChatGPT |  ChatGPT实战教程 | ChatGPT 7种提升工作效率的用法 | OpenAI



---

</details>

<details>
<summary>2. 【酷站】免费好用的阿里云盘搜索引擎，无需注册，不用付费，拒绝套路! Free aliyun cloud disk search engine</summary><br>

<a href="https://www.youtube.com/watch?v=66xTXBhlnWM" target="_blank">
    <img src="https://img.youtube.com/vi/66xTXBhlnWM/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【酷站】免费好用的阿里云盘搜索引擎，无需注册，不用付费，拒绝套路! Free aliyun cloud disk search engine



---

</details>

<details>
<summary>1. 【酷站】无需下载，重温怀旧经典DOS游戏，玩到停不下来！</summary><br>

<a href="https://www.youtube.com/watch?v=rXst12-0200" target="_blank">
    <img src="https://img.youtube.com/vi/rXst12-0200/maxresdefault.jpg" 
        alt="[Youtube]" width="200">
</a>

# 【酷站】无需下载，重温怀旧经典DOS游戏，玩到停不下来！



---

</details>

