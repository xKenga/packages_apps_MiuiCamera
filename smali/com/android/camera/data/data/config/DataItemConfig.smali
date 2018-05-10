.class public Lcom/android/camera/data/data/config/DataItemConfig;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemConfig.java"


# instance fields
.field private mCameraId:I

.field private mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

.field private mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

.field private mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

.field private mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

.field private mIntentType:I

.field private mIsTimeOut:Z

.field private mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

.field private mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "intentType"    # I
    .param p3, "timeOut"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    .line 59
    iput p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    .line 60
    iput-boolean p3, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    .line 62
    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    .line 63
    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    .line 64
    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    .line 65
    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    .line 66
    return-void
.end method

.method public static provideLocalId(II)I
    .locals 1
    .param p0, "cameraId"    # I
    .param p1, "intentType"    # I

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    return p0

    .line 72
    :cond_0
    add-int/lit8 v0, p0, 0x64

    return v0
.end method


# virtual methods
.method public getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    return-object v0
.end method

.method public getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    return-object v0
.end method

.method public getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    return-object v0
.end method

.method public getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    return-object v0
.end method

.method public getLastSelect()I
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "pref_camera_lastselect_beauty_hdr_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    return-object v0
.end method

.method public getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    return-object v0
.end method

.method public getSupportedExtraConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 128
    iget v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {p1, v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedExtraConfigs(II)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {p1, p0, v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedTopConfigs(ILcom/android/camera/data/data/config/DataItemConfig;I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0
.end method

.method public initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "currentMode"    # I
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->reInit(IILandroid/hardware/Camera$Parameters;)Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(II)Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)Ljava/util/List;

    .line 91
    return-void
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    iget v2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-static {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reConfigBokehIfHdrChanged(ILjava/lang/String;)Z
    .locals 2
    .param p1, "currentMode"    # I
    .param p2, "newHdrValue"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    .line 227
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reConfigFlashIfHdrChanged(ILjava/lang/String;)Z
    .locals 3
    .param p1, "currentMode"    # I
    .param p2, "newHdrValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 154
    const-string/jumbo v1, "off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    return v2

    .line 156
    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "currentFlash":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 158
    if-eqz v1, :cond_3

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    const-string/jumbo v2, "auto"

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 164
    .end local v0    # "currentFlash":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "currentFlash":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 172
    :cond_3
    return v2
.end method

.method public reConfigHdrIfBokehChanged(ILjava/lang/String;)Z
    .locals 2
    .param p1, "currentMode"    # I
    .param p2, "newBokehValue"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reConfigHdrIfFlashChanged(ILjava/lang/String;)Z
    .locals 6
    .param p1, "currentMode"    # I
    .param p2, "newFlashValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "currentHdr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, "newHdrValue":Ljava/lang/String;
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    const-string/jumbo v2, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    const-string/jumbo v2, "live"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    if-eqz v2, :cond_1

    .line 183
    :cond_0
    iget v2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v5

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    const-string/jumbo v1, "auto"

    .line 197
    .end local v1    # "newHdrValue":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    :cond_2
    return v4

    .restart local v1    # "newHdrValue":Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 183
    goto :goto_0

    .line 184
    :cond_4
    const-string/jumbo v1, "off"

    .local v1, "newHdrValue":Ljava/lang/String;
    goto :goto_1

    .line 186
    .local v1, "newHdrValue":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "on"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    const-string/jumbo v1, "off"

    .local v1, "newHdrValue":Ljava/lang/String;
    goto :goto_1

    .line 190
    .local v1, "newHdrValue":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    const-string/jumbo v2, "live"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 191
    if-eqz v2, :cond_1

    .line 193
    const-string/jumbo v1, "off"

    .local v1, "newHdrValue":Ljava/lang/String;
    goto :goto_1

    .line 200
    .end local v1    # "newHdrValue":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 203
    return v4

    .line 205
    :cond_8
    return v3
.end method

.method public resetTimeOut()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    .line 216
    return-void
.end method

.method public setLastSelect(I)V
    .locals 1
    .param p1, "lastSelect"    # I

    .prologue
    .line 249
    const-string/jumbo v0, "pref_camera_lastselect_beauty_hdr_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 250
    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0
    .param p1, "timeOut"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    .line 220
    return-void
.end method

.method public supportBokeh(II)Z
    .locals 1
    .param p1, "currentMode"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)Ljava/util/List;

    .line 142
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportFlash()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportHdr(II)Z
    .locals 1
    .param p1, "currentMode"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(II)Ljava/util/List;

    .line 137
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
