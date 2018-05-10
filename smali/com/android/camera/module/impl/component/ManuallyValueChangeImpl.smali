.class public Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
.super Ljava/lang/Object;
.source "ManuallyValueChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 43
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
    .locals 1
    .param p0, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private trackAwbChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "awb"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u767d\u5e73\u8861"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_awb_changed"

    .line 156
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method private trackExposureTimeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "exposureTime"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u5feb\u95e8"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_exposure_time_changed"

    .line 166
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method private trackIsoChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u611f\u5149\u5ea6"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_iso_changed"

    .line 176
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method private trackLensChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "lens"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u955c\u5934"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "manual_lens_changed"

    .line 186
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    return-void
.end method


# virtual methods
.method public getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    return-object v0
.end method

.method public onDualLensNotifyToTele()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 127
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_2

    .line 128
    return-void

    .line 130
    :cond_2
    const-string/jumbo v1, "optical-zoom-to-tele"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 132
    return-void
.end method

.method public onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
    .locals 4
    .param p1, "componentData"    # Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
    .param p2, "module"    # I

    .prologue
    .line 136
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "currentValue":Ljava/lang/String;
    const-string/jumbo v2, "wide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const-string/jumbo v1, "tele"

    .line 139
    .local v1, "newValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p2, v1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->setComponentValue(ILjava/lang/String;)V

    .line 141
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackLensChanged(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/module/BaseModule;->onCameraPickerClicked(I)Z

    .line 143
    return-void

    .line 138
    .end local v1    # "newValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "wide"

    .restart local v1    # "newValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public onDualZoomValueChanged(IZ)V
    .locals 1
    .param p1, "newValueRatio"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomRatioChanged(IZ)V

    .line 148
    return-void
.end method

.method public onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V
    .locals 2
    .param p1, "componentData"    # Lcom/android/camera/data/data/config/ComponentManuallyET;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackExposureTimeChanged(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "componentData"    # Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc7

    const/16 v7, 0xa7

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "currentFocusMode":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "targetFocusMode":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 74
    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 76
    .local v2, "switchMode":Z
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 82
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xac

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 83
    .local v4, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeConfigItem(I)V

    .line 86
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 97
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa6

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;

    .line 98
    .local v1, "indicator":Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;
    if-eqz v1, :cond_1

    .line 99
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFocusMode()V

    .line 103
    .end local v1    # "indicator":Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;
    .end local v2    # "switchMode":Z
    .end local v4    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v5

    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 104
    return-void

    .line 88
    .restart local v2    # "switchMode":Z
    .restart local v4    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_2
    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->insertConfigItem(I)V

    .line 89
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    .line 90
    const-string/jumbo v6, "pref_camera_peak_key"

    .line 89
    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0
.end method

.method public onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V
    .locals 2
    .param p1, "componentData"    # Lcom/android/camera/data/data/config/ComponentManuallyISO;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackIsoChanged(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "componentData"    # Lcom/android/camera/data/data/config/ComponentManuallyWB;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "isCustomValue"    # Z

    .prologue
    .line 61
    if-eqz p3, :cond_1

    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    .line 63
    .local v0, "key":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    const-string/jumbo p2, "manual"

    .end local p2    # "newValue":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackAwbChanged(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 65
    return-void

    .line 62
    .end local v0    # "key":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getKey(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerProtocol()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 52
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 57
    return-void
.end method
