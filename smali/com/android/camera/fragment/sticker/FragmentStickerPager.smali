.class public Lcom/android/camera/fragment/sticker/FragmentStickerPager;
.super Landroid/support/v4/app/Fragment;
.source "FragmentStickerPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;,
        Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;,
        Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

.field private mDefaultDownloadHelper:Lcom/android/camera/network/resource/DownloadHelper;

.field private mDownloadListener:Lcom/android/camera/network/resource/OnDownloadListener;

.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/sticker/StickerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Lcom/android/camera/fragment/sticker/StickerAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Lcom/android/camera/network/resource/DownloadHelper;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mDefaultDownloadHelper:Lcom/android/camera/network/resource/DownloadHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/sticker/FragmentStickerPager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;
    .param p1, "sticker"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->persistSticker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/fragment/sticker/FragmentStickerPager;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;
    .param p1, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/fragment/sticker/FragmentStickerPager;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/sticker/FragmentStickerPager;
    .param p1, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->refreshDownloadState(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 176
    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager$1;-><init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mDownloadListener:Lcom/android/camera/network/resource/OnDownloadListener;

    .line 194
    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;-><init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager$3;-><init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mDefaultDownloadHelper:Lcom/android/camera/network/resource/DownloadHelper;

    .line 39
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 64
    const v1, 0x7f0a006b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 66
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v1, Lcom/android/camera/fragment/sticker/StickerAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/sticker/StickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

    .line 68
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

    new-instance v2, Lcom/android/camera/fragment/sticker/FragmentStickerPager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager$4;-><init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/sticker/StickerAdapter;->setItemSelectChangeListener(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;)V

    .line 108
    invoke-static {}, Lcom/android/camera/network/resource/ResourceDownloadManager;->getInstance()Lcom/android/camera/network/resource/ResourceDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mDownloadListener:Lcom/android/camera/network/resource/OnDownloadListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/network/resource/ResourceDownloadManager;->addDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V

    .line 109
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->loadData()V

    .line 110
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/android/camera/network/resource/StickerResourceRequest;

    invoke-direct {v0}, Lcom/android/camera/network/resource/StickerResourceRequest;-><init>()V

    .line 130
    .local v0, "request":Lcom/android/camera/network/resource/StickerResourceRequest;
    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentStickerPager$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager$5;-><init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/network/resource/StickerResourceRequest;->execute(Lcom/android/camera/network/net/base/ResponseListener;)V

    .line 145
    return-void
.end method

.method private persistSticker(Ljava/lang/String;)V
    .locals 2
    .param p1, "sticker"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 59
    .local v0, "editor":Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    const-string/jumbo v1, "pref_sticker_path_key"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 60
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 61
    return-void
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/sticker/StickerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/sticker/StickerInfo;>;"
    invoke-static {}, Lcom/android/camera/sticker/StickerHelper;->getInstance()Lcom/android/camera/sticker/StickerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/sticker/StickerHelper;->getLocalStick()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mList:Ljava/util/List;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/sticker/StickerAdapter;->setList(Ljava/util/List;)V

    .line 171
    invoke-direct {p0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->setSelectItem()V

    .line 172
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    return-void
.end method

.method private refreshDownloadState(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/sticker/StickerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/sticker/StickerInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sticker/StickerInfo;

    .line 161
    .local v0, "data":Lcom/android/camera/sticker/StickerInfo;
    invoke-static {}, Lcom/android/camera/network/resource/ResourceDownloadManager;->getInstance()Lcom/android/camera/network/resource/ResourceDownloadManager;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/camera/sticker/StickerInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/network/resource/ResourceDownloadManager;->getDownloadState(J)I

    move-result v2

    iput v2, v0, Lcom/android/camera/sticker/StickerInfo;->downloadState:I

    goto :goto_0

    .line 163
    .end local v0    # "data":Lcom/android/camera/sticker/StickerInfo;
    :cond_0
    return-void
.end method

.method private setSelectItem()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getCurrentSticker()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "currentSticker":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/sticker/StickerInfo;

    invoke-virtual {v2}, Lcom/android/camera/sticker/StickerInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mAdapter:Lcom/android/camera/fragment/sticker/StickerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/sticker/StickerAdapter;->initSelectItem(I)V

    .line 117
    return-void

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->initView(Landroid/view/View;)V

    .line 54
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 125
    invoke-static {}, Lcom/android/camera/network/resource/ResourceDownloadManager;->getInstance()Lcom/android/camera/network/resource/ResourceDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mDownloadListener:Lcom/android/camera/network/resource/OnDownloadListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/network/resource/ResourceDownloadManager;->removeDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V

    .line 126
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 153
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 154
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method
