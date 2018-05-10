.class public Lcom/android/camera/camera_adapter/CameraPadOne;
.super Lcom/android/camera/module/CameraModule;
.source "CameraPadOne.java"


# instance fields
.field private final KEY_AUTO_ROTATE:Ljava/lang/String;

.field private final KEY_FLIP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 16
    const-string/jumbo v0, "Camera"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->TAG:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "jpeg-auto-rotate"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_AUTO_ROTATE:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "jpeg-flip"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_FLIP:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/Camera;
    .param p1, "isBackCamera"    # Z
    .param p2, "isImageCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 66
    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateCameraParametersPreference(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 21
    const-string/jumbo v2, "jpeg-auto-rotate"

    const-string/jumbo v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    .line 24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 25
    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string/jumbo v3, "on"

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 29
    :goto_1
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTimeWatermark="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v4, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "faceBeauty":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStillBeautify="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v1

    .line 36
    .local v1, "showGenderAndAge":Z
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    .line 37
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setShowGenderAndAge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string/jumbo v3, "on"

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "setMultiFaceBeautify=on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->isFrontMirror()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    const-string/jumbo v2, "jpeg-flip"

    const-string/jumbo v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_2
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "jpegHorizontalFlip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "jpeg-flip"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 23
    .end local v0    # "faceBeauty":Ljava/lang/String;
    .end local v1    # "showGenderAndAge":Z
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 27
    :cond_1
    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    .restart local v0    # "faceBeauty":Ljava/lang/String;
    .restart local v1    # "showGenderAndAge":Z
    :cond_2
    const-string/jumbo v2, "jpeg-flip"

    const-string/jumbo v3, "false"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 53
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraPadOne;->updateCameraParametersPreference(Landroid/hardware/Camera$Parameters;)V

    .line 54
    return-void
.end method
