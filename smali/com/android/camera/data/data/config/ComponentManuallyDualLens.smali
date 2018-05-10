.class public Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyDualLens.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0
    .param p1, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 24
    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 5
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
    const/4 v4, -0x1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 64
    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f022a

    .line 65
    :goto_0
    const-string/jumbo v3, "wide"

    .line 62
    invoke-direct {v2, v4, v4, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 69
    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f022b

    .line 70
    :goto_1
    const-string/jumbo v3, "tele"

    .line 67
    invoke-direct {v2, v4, v4, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0

    .line 64
    :cond_0
    const v1, 0x7f0f0228

    goto :goto_0

    .line 69
    :cond_1
    const v1, 0x7f0f0229

    goto :goto_1
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 47
    const-string/jumbo v0, "wide"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0f0227

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
    .line 53
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->mItems:Ljava/util/List;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 36
    :pswitch_0
    const-string/jumbo v0, "pref_camera_zoom_mode_key"

    return-object v0

    .line 40
    :pswitch_1
    const-string/jumbo v0, "pref_camera_manually_lens"

    return-object v0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
