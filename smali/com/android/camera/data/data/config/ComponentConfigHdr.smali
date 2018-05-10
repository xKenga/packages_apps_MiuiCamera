.class public Lcom/android/camera/data/data/config/ComponentConfigHdr;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHdr.java"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 5
    .param p1, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;

    .prologue
    const v4, 0x7f02008d

    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 49
    const-string/jumbo v2, "off"

    const v3, 0x7f0f01ef

    .line 47
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method private getDefaultFromConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->getHDRDefaultValue(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    const-string/jumbo v0, "off"

    return-object v0

    .line 94
    :pswitch_0
    const-string/jumbo v0, "on"

    return-object v0

    .line 96
    :pswitch_1
    const-string/jumbo v0, "auto"

    return-object v0

    .line 98
    :pswitch_2
    const-string/jumbo v0, "live"

    return-object v0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static initForBackCaptureMode(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    const v6, 0x7f02008d

    const v5, 0x7f02008b

    const v4, 0x7f02008a

    const v3, 0x7f02008c

    .line 217
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 219
    const-string/jumbo v1, "off"

    const v2, 0x7f0f01ef

    .line 217
    invoke-direct {v0, v6, v6, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 224
    const-string/jumbo v1, "auto"

    const v2, 0x7f0f01ee

    .line 222
    invoke-direct {v0, v4, v4, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 229
    :cond_1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 231
    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f4

    .line 229
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_0
    return-void

    .line 235
    :cond_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_3

    .line 236
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 238
    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f0

    .line 236
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 243
    const-string/jumbo v1, "live"

    const v2, 0x7f0f01f1

    .line 241
    invoke-direct {v0, v5, v5, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static initForCaptureMode(Ljava/util/List;I)V
    .locals 1
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    invoke-static {p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForFrontCaptureMode(Ljava/util/List;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForBackCaptureMode(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static initForFrontCaptureMode(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    const v5, 0x7f02008d

    const v4, 0x7f02008c

    const v3, 0x7f02008a

    .line 198
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 201
    const-string/jumbo v1, "off"

    const v2, 0x7f0f01ef

    .line 199
    invoke-direct {v0, v5, v5, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 206
    const-string/jumbo v1, "auto"

    const v2, 0x7f0f01ee

    .line 204
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 211
    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f4

    .line 209
    invoke-direct {v0, v4, v4, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    return-void
.end method

.method private static isFrontCamera(I)Z
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 186
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string/jumbo v0, "off"

    return-object v0

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentValueWithOutClose(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "currentMode"    # I

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultFromConfig()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "hdrDefaultValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 81
    .local v1, "item":Lcom/android/camera/data/data/ComponentDataItem;
    iget-object v3, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    return-object v0

    .line 85
    .end local v1    # "item":Lcom/android/camera/data/data/ComponentDataItem;
    :cond_1
    const-string/jumbo v3, "off"

    return-object v3

    .line 87
    .end local v0    # "hdrDefaultValue":Ljava/lang/String;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :pswitch_1
    const-string/jumbo v3, "off"

    return-object v3

    .line 76
    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0f016a

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
    .line 133
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 62
    :pswitch_0
    const-string/jumbo v0, "pref_camera_hdr_key"

    return-object v0

    .line 67
    :pswitch_1
    const-string/jumbo v0, "pref_video_hdr_key"

    return-object v0

    .line 70
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unspecified hdr"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const v2, 0x7f02008c

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const v1, 0x7f02008d

    return v1

    .line 260
    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const v1, 0x7f02008a

    return v1

    .line 262
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    return v2

    .line 264
    :cond_2
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const v1, 0x7f02008b

    return v1

    .line 266
    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    return v2

    .line 270
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const v1, 0x7f0f0117

    return v1

    .line 283
    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const v1, 0x7f0f0118

    return v1

    .line 285
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const v1, 0x7f0f0119

    return v1

    .line 287
    :cond_2
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    const v1, 0x7f0f011a

    return v1

    .line 289
    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    const v1, 0x7f0f011b

    return v1

    .line 293
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public isClosed(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isLastOn(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reInit(II)Ljava/util/List;
    .locals 6
    .param p1, "currentMode"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f02008d

    const v4, 0x7f02008c

    .line 140
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    .line 146
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForCaptureMode(Ljava/util/List;I)V

    .line 182
    :cond_0
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    return-object v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 159
    :pswitch_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 162
    const-string/jumbo v2, "off"

    const v3, 0x7f0f01f3

    .line 160
    invoke-direct {v1, v5, v5, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 166
    const-string/jumbo v2, "on"

    const v3, 0x7f0f01f4

    .line 164
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setClosed(ZI)V
    .locals 1
    .param p1, "close"    # Z
    .param p2, "mode"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 42
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 129
    return-void
.end method
