.class final Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;
.super Ljava/lang/Object;
.source "DataProviderMgr.java"

# interfaces
.implements Lcom/android/camera/data/provider/DataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/provider/DataProviderMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataProviderImpl"
.end annotation


# instance fields
.field private mDataGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

.field private mDataItemConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/data/data/config/DataItemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mDataRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mTimeOut:Z

.field final synthetic this$0:Lcom/android/camera/data/provider/DataProviderMgr;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/provider/DataProviderMgr;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/data/provider/DataProviderMgr;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->this$0:Lcom/android/camera/data/provider/DataProviderMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-direct {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-direct {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 31
    return-void
.end method


# virtual methods
.method public dataConfig()Lcom/android/camera/data/data/config/DataItemConfig;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataConfig(II)Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    return-object v0
.end method

.method public dataConfig(II)Lcom/android/camera/data/data/config/DataItemConfig;
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "intentType"    # I

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v0

    .line 36
    .local v0, "localId":I
    iget-object v1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/camera/data/data/config/DataItemConfig;

    iget-boolean v3, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mTimeOut:Z

    invoke-direct {v2, p1, p2, v3}, Lcom/android/camera/data/data/config/DataItemConfig;-><init>(IIZ)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/DataItemConfig;

    return-object v1
.end method

.method public bridge synthetic dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataConfig(II)Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    return-object v0
.end method

.method public dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    return-object v0
.end method

.method public bridge synthetic dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    return-object v0
.end method

.method public dataRunning()Lcom/android/camera/data/data/runing/DataItemRunning;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    return-object v0
.end method

.method public bridge synthetic dataRunning()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOut(Z)V
    .locals 3
    .param p1, "timeOut"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mTimeOut:Z

    .line 60
    iget-object v2, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 63
    .local v1, "item":Lcom/android/camera/data/data/config/DataItemConfig;
    if-eqz v1, :cond_0

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->setTimeOut(Z)V

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/camera/data/data/config/DataItemConfig;
    :cond_1
    return-void
.end method
