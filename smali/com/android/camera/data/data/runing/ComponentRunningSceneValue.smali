.class public Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningSceneValue.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 1
    .param p1, "dataItemBase"    # Lcom/android/camera/data/data/runing/DataItemRunning;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    .line 28
    return-void
.end method

.method private filterUnsupportItems(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedSceneModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "supportedScene":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 60
    return-void

    .line 62
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .local v2, "sceneModes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/data/data/ComponentDataItem;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 68
    .local v0, "dataItem":Lcom/android/camera/data/data/ComponentDataItem;
    iget-object v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 72
    .end local v0    # "dataItem":Lcom/android/camera/data/data/ComponentDataItem;
    :cond_3
    return-void
.end method

.method private initItems()V
    .locals 10

    .prologue
    const v9, 0x7f020120

    const v8, 0x7f02011e

    const v7, 0x7f02011c

    const v6, 0x7f02011a

    const v4, 0x7f020118

    .line 75
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 79
    const-string/jumbo v2, "auto"

    const v3, 0x7f0f00c8

    .line 78
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 81
    const-string/jumbo v2, "portrait"

    .line 80
    const v3, 0x7f020128

    const v4, 0x7f020128

    .line 81
    const v5, 0x7f0f00c9

    .line 80
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 83
    const-string/jumbo v2, "landscape"

    .line 82
    const v3, 0x7f020122

    const v4, 0x7f020122

    .line 83
    const v5, 0x7f0f00ca

    .line 82
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 85
    const-string/jumbo v2, "sports"

    .line 84
    const v3, 0x7f02012c

    const v4, 0x7f02012c

    .line 85
    const v5, 0x7f0f00d1

    .line 84
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 87
    const-string/jumbo v2, "night"

    .line 86
    const v3, 0x7f020124

    const v4, 0x7f020124

    .line 87
    const v5, 0x7f0f00cb

    .line 86
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 89
    const-string/jumbo v2, "night-portrait"

    .line 88
    const v3, 0x7f020125

    const v4, 0x7f020125

    .line 89
    const v5, 0x7f0f00cc

    .line 88
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 91
    const-string/jumbo v2, "beach"

    const v3, 0x7f0f00cd

    .line 90
    invoke-direct {v1, v7, v7, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 93
    const-string/jumbo v2, "snow"

    .line 92
    const v3, 0x7f02012a

    const v4, 0x7f02012a

    .line 93
    const v5, 0x7f0f00ce

    .line 92
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 95
    const-string/jumbo v2, "sunset"

    .line 94
    const v3, 0x7f02012e

    const v4, 0x7f02012e

    .line 95
    const v5, 0x7f0f00cf

    .line 94
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 97
    const-string/jumbo v2, "fireworks"

    const v3, 0x7f0f00d0

    .line 96
    invoke-direct {v1, v8, v8, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 99
    const-string/jumbo v2, "backlight"

    const v3, 0x7f0f00d2

    .line 98
    invoke-direct {v1, v6, v6, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 101
    const-string/jumbo v2, "flowers"

    const v3, 0x7f0f00d3

    .line 100
    invoke-direct {v1, v9, v9, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 42
    const-string/jumbo v0, "auto"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0f00c6

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 37
    const-string/jumbo v0, "pref_camera_scenemode_key"

    return-object v0
.end method

.method public init(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->initItems()V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->filterUnsupportItems(Landroid/hardware/Camera$Parameters;)V

    .line 53
    return-void
.end method
