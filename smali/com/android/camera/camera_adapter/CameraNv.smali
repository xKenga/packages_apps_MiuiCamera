.class public Lcom/android/camera/camera_adapter/CameraNv;
.super Lcom/android/camera/module/CameraModule;
.source "CameraNv.java"


# static fields
.field private static RAW_META_DATA:I

.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNSLBurstCount:I

.field private mPreviewPausedDisabled:Z

.field private mRawBuffer:[B

.field private mRawBufferSize:I

.field private mSetAohdrLater:Z

.field private mSkipSetNSLAfterMultiShot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const v0, 0xf4240

    sput v0, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    .line 25
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 16
    const-string/jumbo v0, "CameraNv"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 15
    return-void
.end method

.method private allocRawBufferIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    sget v2, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    const v3, 0x190aa00

    add-int v1, v2, v3

    .line 261
    .local v1, "sizeWanted":I
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    if-ge v2, v1, :cond_1

    .line 263
    :cond_0
    :try_start_0
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 264
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    iput-object v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 267
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 268
    const-string/jumbo v2, "CameraNv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Raw OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNSLBuffersNeededCount()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v1, :cond_0

    .line 298
    return v4

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getZSL()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0141

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    return v3

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 305
    if-nez v1, :cond_2

    .line 307
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    :cond_2
    return v3

    .line 308
    :cond_3
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00de

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 305
    if-nez v1, :cond_2

    .line 309
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    .line 305
    if-nez v1, :cond_2

    .line 312
    :cond_4
    return v4
.end method

.method private getPreviewPausedDisabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 279
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 283
    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreviewPausedDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string/jumbo v2, " "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    const-string/jumbo v2, " "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string/jumbo v2, " "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    const-string/jumbo v2, " "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    return v0

    .line 280
    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00de

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 279
    if-nez v0, :cond_0

    .line 281
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    .line 279
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method private updateNvCameraParametersPreference()V
    .locals 15

    .prologue
    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, "saturationStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 32
    .local v6, "saturation":I
    const/16 v11, -0x64

    if-lt v6, v11, :cond_0

    const/16 v11, 0x64

    if-gt v6, v11, :cond_0

    .line 33
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 35
    :cond_0
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saturation="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "contrastStr":Ljava/lang/String;
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "contrast="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v9

    .line 44
    .local v9, "sharpnessStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 45
    .local v8, "sharpness":I
    const/16 v11, -0x64

    if-lt v8, v11, :cond_1

    const/16 v11, 0x64

    if-gt v8, v11, :cond_1

    .line 46
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v8}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V

    .line 48
    :cond_1
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sharpness="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAutoRotation(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 51
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V

    .line 55
    :cond_2
    const v11, 0x7f0f00d5

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "defaultISO":Ljava/lang/String;
    const-string/jumbo v11, "pref_qc_camera_iso_key"

    invoke-virtual {p0, v11, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "iso":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 58
    const v11, 0x7f0b002d

    invoke-static {v5, v11}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 57
    if-eqz v11, :cond_3

    .line 59
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invalid iso "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    move-object v5, v2

    .line 62
    :cond_3
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pictureISO="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v11, "pref_qc_camera_exposuretime_key"

    .line 67
    const v12, 0x7f0f0171

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 66
    invoke-virtual {p0, v11, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "exposureTime":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, "exposure":I
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 70
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "exposureTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 74
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 75
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v11

    if-nez v11, :cond_d

    .line 76
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 77
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 78
    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "handNight=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4
    :goto_0
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    if-eqz v11, :cond_5

    .line 118
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 122
    :cond_5
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v11

    iput v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 123
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getNSLBuffersNeededCount()I

    move-result v0

    .line 124
    .local v0, "NSLBuffersNeeded":I
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v11, :cond_7

    iget v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eq v11, v0, :cond_7

    .line 125
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 126
    if-nez v0, :cond_6

    .line 127
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 128
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 129
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 131
    :cond_6
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 132
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 133
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v11

    iput v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 134
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "NSLNumBuffers="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_7
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v11, :cond_11

    .line 139
    iget v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v11, :cond_10

    .line 140
    if-lez v0, :cond_10

    .line 141
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "shot2shot"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 145
    :goto_1
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 146
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v13, Lcom/android/camera/camera_adapter/CameraNv;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 161
    :goto_2
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    if-eqz v11, :cond_9

    .line 164
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 165
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 166
    const-string/jumbo v11, "off"

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 167
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "off"

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 168
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 169
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 176
    :cond_8
    :goto_3
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    .line 177
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 178
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 181
    :cond_9
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getPreviewPausedDisabled()Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 182
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "previewDisabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v14, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v14}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v11

    :goto_4
    if-nez v11, :cond_15

    .line 185
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v11

    .line 184
    if-eqz v11, :cond_15

    .line 186
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 190
    :goto_5
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setTimeWatermark="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v14, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v14}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->setBeautyParams()V

    .line 195
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v10

    .line 196
    .local v10, "showGenderAndAge":Z
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v11, v10}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    .line 197
    const-string/jumbo v11, "CameraNv"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setShowGenderAndAge="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "setMultiFaceBeautify=on"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 79
    .end local v0    # "NSLBuffersNeeded":I
    .end local v10    # "showGenderAndAge":Z
    :cond_a
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 80
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    .line 81
    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "rawData=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->allocRawBufferIfNeeded()V

    goto/16 :goto_0

    .line 83
    :cond_b
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 84
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 87
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 88
    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "aoHDR=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :cond_c
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 91
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 92
    const-string/jumbo v11, "CameraNv"

    const-string/jumbo v12, "morphoHDR=true"

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    :cond_d
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v11, :cond_e

    .line 101
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 102
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 103
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 105
    :cond_e
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 106
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    .line 107
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 108
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    .line 111
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 112
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 114
    :cond_f
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 143
    .restart local v0    # "NSLBuffersNeeded":I
    :cond_10
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 148
    :cond_11
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v11, :cond_12

    .line 149
    iget v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v11, :cond_12

    .line 150
    if-lez v0, :cond_12

    .line 151
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v11

    .line 148
    if-eqz v11, :cond_12

    .line 152
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 153
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 158
    :goto_6
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 155
    :cond_12
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 156
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_6

    .line 170
    :cond_13
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v11

    if-eqz v11, :cond_8

    .line 171
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 172
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 173
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 174
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v11}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_3

    .line 184
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 188
    :cond_15
    sget-object v11, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "off"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 236
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 242
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v3, :cond_2

    .line 250
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 249
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->resetMutexModeManually()V

    .line 325
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onPause()V

    .line 326
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    const-string/jumbo v0, "pref_focus_position_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "horizontal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 210
    :goto_0
    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "jpegHorizontalFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 215
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->updateNvCameraParametersPreference()V

    .line 216
    return-void
.end method
