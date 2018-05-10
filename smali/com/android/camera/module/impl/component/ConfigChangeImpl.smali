.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 59
    return-void
.end method

.method private applyConfig(II)V
    .locals 1
    .param p1, "selectedItem"    # I
    .param p2, "checkType"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showFilter()V

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch()V

    goto :goto_0

    .line 136
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSoundSwitch(I)V

    goto :goto_0

    .line 140
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto :goto_0

    .line 144
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto :goto_0

    .line 148
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configHHTSwitch(I)V

    goto :goto_0

    .line 152
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicFocusSwitch()V

    goto :goto_0

    .line 156
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGroupSwitch(I)V

    goto :goto_0

    .line 160
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V

    goto :goto_0

    .line 164
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSlow()V

    goto :goto_0

    .line 168
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoFast()V

    goto :goto_0

    .line 172
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicMirrorSwitch(I)V

    goto :goto_0

    .line 176
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch()V

    goto :goto_0

    .line 180
    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPortraitSwitch(I)V

    goto :goto_0

    .line 184
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGenderAgeSwitch(I)V

    goto :goto_0

    .line 188
    :pswitch_11
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto :goto_0

    .line 192
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualWaterMarkSwitch()V

    goto :goto_0

    .line 196
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBeautySwitch(I)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private conflictWithFlashAndHdrAndBeauty()Z
    .locals 5

    .prologue
    .line 760
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 761
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    const/4 v1, 0x0

    .line 762
    .local v1, "isChanged":Z
    const-string/jumbo v3, "pref_camera_hand_night_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    const-string/jumbo v3, "pref_camera_hand_night_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 764
    const/4 v1, 0x1

    .line 766
    :cond_0
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 767
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 768
    const/4 v1, 0x1

    .line 770
    :cond_1
    if-eqz v1, :cond_2

    .line 772
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    .line 773
    const/16 v4, 0xaf

    .line 772
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 774
    .local v2, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    .line 776
    .end local v2    # "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    :cond_2
    return v1
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1
    .param p0, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 1
    .param p1, "checkType"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 686
    packed-switch p1, :pswitch_data_0

    .line 688
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 691
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 694
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x0

    return v0

    .line 686
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideTipMessage(I)V
    .locals 3
    .param p1, "tokenResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 789
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 790
    .local v0, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    if-lez p1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    .line 793
    :cond_1
    return-void
.end method

.method private isAlive()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showTips(I)V
    .locals 7
    .param p1, "fromSupportedConfigFactory"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 934
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 936
    .local v2, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 937
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 938
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v3

    .line 937
    if-eqz v3, :cond_2

    .line 938
    if-eqz v0, :cond_2

    .line 939
    const v3, 0x7f0a00ea

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v3

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 940
    .local v1, "isFrontBeautyOpened":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 941
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 942
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 944
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 956
    :goto_1
    return-void

    .line 939
    .end local v1    # "isFrontBeautyOpened":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isFrontBeautyOpened":Z
    goto :goto_0

    .line 937
    .end local v1    # "isFrontBeautyOpened":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isFrontBeautyOpened":Z
    goto :goto_0

    .line 947
    :sswitch_0
    if-eqz v1, :cond_3

    const v3, 0x7f0f0277

    .line 946
    :goto_2
    invoke-interface {v2, v6, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_1

    .line 947
    :cond_3
    const v3, 0x7f0f0278

    goto :goto_2

    .line 952
    :sswitch_1
    const v3, 0x7f0f0279

    invoke-interface {v2, v6, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_1

    .line 944
    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_1
        0xeb -> :sswitch_0
    .end sparse-switch
.end method

.method private trackBeautyChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 890
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 891
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v3, "\u524d\u540e\u6444"

    .line 893
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    const-string/jumbo v2, "\u524d\u6444"

    .line 892
    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string/jumbo v2, "\u7f8e\u989c"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "beauty_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 897
    return-void

    .line 894
    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "on"    # Z
    .param p4, "trackCameraMode"    # Z
    .param p5, "trackCameraId"    # Z

    .prologue
    .line 862
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 866
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    .line 867
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 868
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .end local v0    # "mode":I
    :cond_1
    if-eqz p5, :cond_2

    .line 871
    const-string/jumbo v3, "\u524d\u540e\u6444"

    .line 872
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 873
    const-string/jumbo v2, "\u524d\u6444"

    .line 871
    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :cond_2
    if-eqz p3, :cond_4

    const-string/jumbo v2, "on"

    :goto_1
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string/jumbo v2, "counter"

    invoke-static {v2, p1, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 877
    return-void

    .line 873
    :cond_3
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0

    .line 875
    :cond_4
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method private trackDualWaterMarkChanged(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 880
    const-string/jumbo v1, "settings"

    .line 881
    const-string/jumbo v2, "pref_dualcamera_watermark"

    .line 882
    if-eqz p1, :cond_0

    const-string/jumbo v0, "on"

    .line 880
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-void

    .line 882
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 856
    const-string/jumbo v1, "manual_focus_peak_changed"

    .line 857
    const-string/jumbo v2, "\u5cf0\u503c\u5bf9\u7126"

    move-object v0, p0

    move v3, p1

    move v5, v4

    .line 856
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 858
    return-void
.end method

.method private trackGenderAgeChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 846
    const-string/jumbo v1, "gender_age_changed"

    .line 847
    const-string/jumbo v2, "\u5e74\u9f84\u68c0\u6d4b"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 846
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 848
    return-void
.end method

.method private trackGotoSettings()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 229
    .local v0, "module":Lcom/android/camera/module/BaseModule;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    .line 232
    :cond_0
    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 832
    const-string/jumbo v1, "gradienter_changed"

    .line 833
    const-string/jumbo v2, "\u6c34\u5e73\u4eea"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 832
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 834
    return-void
.end method

.method private trackGroupChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 837
    const-string/jumbo v1, "group_shot_changed"

    .line 838
    const-string/jumbo v2, "\u5408\u5f71\u4f18\u9009"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 837
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 839
    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 842
    const-string/jumbo v1, "hht_changed"

    const-string/jumbo v2, "HHT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 843
    return-void
.end method

.method private trackMagicMirrorChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 851
    const-string/jumbo v1, "magic_mirror_changed"

    .line 852
    const-string/jumbo v2, "\u9b54\u955c"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 851
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 853
    return-void
.end method

.method private trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    return-void

    .line 823
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 824
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 825
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v2, "\u79fb\u8f74"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "tiltshift_changed"

    .line 827
    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 829
    return-void
.end method

.method private trackTimerChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 806
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    return-void

    .line 809
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 810
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 811
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string/jumbo v3, "\u524d\u540e\u6444"

    .line 813
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    const-string/jumbo v2, "\u524d\u6444"

    .line 812
    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string/jumbo v2, "\u5012\u8ba1\u65f6"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "timer_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 817
    return-void

    .line 814
    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackVideoModeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoMode"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    return-void

    .line 799
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 800
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "video_mode_changed"

    .line 801
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 803
    return-void
.end method

.method private updateComponentFilter(Z)V
    .locals 7
    .param p1, "close"    # Z

    .prologue
    .line 738
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 740
    .local v1, "currentMode":I
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v0

    .line 743
    .local v0, "configFilter":Lcom/android/camera/data/data/config/ComponentConfigFilter;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 744
    .local v2, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 745
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    .line 748
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 749
    return-void

    .line 752
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    .line 753
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->filterUiChange()V

    .line 755
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 756
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc4

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 757
    return-void
.end method

.method private updateComponentFlash(Z)V
    .locals 7
    .param p1, "close"    # Z

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 704
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 705
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 706
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 708
    .local v1, "currentMode":I
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 709
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 710
    :cond_0
    return-void

    .line 713
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 714
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc1

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 715
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    .line 716
    return-void
.end method

.method private updateComponentHdr(Z)Z
    .locals 9
    .param p1, "close"    # Z

    .prologue
    const/16 v8, 0xc2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 720
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 721
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 722
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 724
    .local v1, "currentMode":I
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 725
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 726
    :cond_0
    return v6

    .line 728
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "off"

    if-eq v4, v5, :cond_2

    .line 729
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 731
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 732
    new-array v4, v7, [I

    aput v8, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 733
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 734
    return v7
.end method

.method private updateTipMessage(III)V
    .locals 3
    .param p1, "tipType"    # I
    .param p2, "stringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 783
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 784
    .local v0, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    .line 785
    return-void
.end method


# virtual methods
.method public configBeautySwitch(I)V
    .locals 9
    .param p1, "checkType"    # I

    .prologue
    const/16 v8, 0xef

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-eq v4, v5, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa5

    if-eq v4, v5, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/CameraModule;

    .line 665
    .local v1, "cameraModule":Lcom/android/camera/module/CameraModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 666
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    .line 667
    .local v0, "beautyConfig":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, "nextValue":Ljava/lang/String;
    if-ne v7, p1, :cond_1

    .line 669
    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    .line 670
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackBeautyChanged(Ljava/lang/String;)V

    .line 673
    :cond_1
    sget-object v4, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    .line 674
    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 673
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 675
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 676
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 683
    :goto_0
    return-void

    .line 678
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 679
    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 681
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_0
.end method

.method public configBokeh(Ljava/lang/String;)V
    .locals 1
    .param p1, "newConfig"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 269
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateBokehPreference()V

    .line 270
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 271
    return-void
.end method

.method public configDualWaterMarkSwitch()V
    .locals 4

    .prologue
    .line 634
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    .line 635
    .local v1, "switchOn":Z
    xor-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackDualWaterMarkChanged(Z)V

    .line 637
    sget-boolean v2, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0f027d

    .line 638
    .local v0, "hintResource":I
    :goto_0
    if-eqz v1, :cond_1

    .line 639
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 641
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    .line 650
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 651
    return-void

    .line 637
    .end local v0    # "hintResource":I
    :cond_0
    const v0, 0x7f0f027c

    .restart local v0    # "hintResource":I
    goto :goto_0

    .line 643
    :cond_1
    const/4 v2, 0x4

    .line 644
    const/4 v3, 0x2

    .line 643
    invoke-direct {p0, v2, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    .line 646
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    goto :goto_1
.end method

.method public configFlash(Ljava/lang/String;)V
    .locals 1
    .param p1, "newConfig"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    .line 254
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 255
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    .line 256
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 257
    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 3
    .param p1, "checkType"    # I

    .prologue
    .line 620
    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 621
    .local v0, "switchOn":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 622
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackFocusPeakChanged(Z)V

    .line 625
    :cond_0
    if-nez v0, :cond_2

    .line 626
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 630
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    const-string/jumbo v1, "manual"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0
.end method

.method public configGenderAgeSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    .line 595
    const-string/jumbo v4, "pref_camera_show_gender_age_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    .line 596
    .local v3, "switchOn":Z
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 597
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGenderAgeChanged(Z)V

    .line 601
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 602
    const/16 v5, 0xa6

    .line 601
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 603
    .local v1, "mainContentProtocol":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    .line 605
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 607
    if-eqz v3, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 609
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0183

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "age":Ljava/lang/String;
    const-string/jumbo v4, "xiaomi-face-watermark-format-string"

    invoke-virtual {v2, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 616
    .end local v0    # "age":Ljava/lang/String;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 2
    .param p1, "checkType"    # I

    .prologue
    .line 280
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 281
    .local v0, "switchOn":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 282
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/CameraModule;->onGradienterSwitched(Z)V

    .line 285
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawGradienter(Z)V

    .line 286
    return-void
.end method

.method public configGroupSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 402
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v2

    .line 403
    .local v2, "switchOn":Z
    if-ne v4, p1, :cond_0

    .line 404
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGroupChanged(Z)V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/CameraModule;

    .line 408
    .local v0, "cameraModule":Lcom/android/camera/module/CameraModule;
    if-eqz v2, :cond_1

    .line 409
    const/16 v3, 0xeb

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    .line 410
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getGroupShotNum()I

    move-result v1

    .line 411
    .local v1, "maxImage":I
    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    .line 412
    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    .line 413
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 414
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 415
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    .line 422
    .end local v1    # "maxImage":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 423
    return-void

    .line 417
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 418
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 419
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    .line 420
    const v3, 0x7f0f0278

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    goto :goto_0
.end method

.method public configHHTSwitch(I)V
    .locals 5
    .param p1, "checkType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 290
    const-string/jumbo v2, "pref_camera_hand_night_key"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    .line 291
    .local v1, "switchOn":Z
    if-ne v3, p1, :cond_0

    .line 292
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackHHTChanged(Z)V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v0

    .line 296
    .local v0, "mutexModeManager":Lcom/android/camera/MutexModeManager;
    if-eqz v1, :cond_1

    .line 297
    const/16 v2, 0xe6

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    .line 298
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    .line 299
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 300
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 301
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    .line 311
    :goto_0
    return-void

    .line 303
    :cond_1
    const v2, 0x7f0f0279

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 304
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    .line 305
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    .line 306
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 307
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_0
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 1
    .param p1, "newConfig"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 263
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 264
    return-void
.end method

.method public configMagicFocusSwitch()V
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 396
    const-string/jumbo v2, "pref_camera_ubifocus_key"

    .line 395
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    .line 397
    .local v0, "switchOn":Z
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    .line 398
    return-void
.end method

.method public configMagicMirrorSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    .line 558
    const-string/jumbo v4, "pref_camera_magic_mirror_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    .line 559
    .local v3, "switchOn":Z
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 560
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    .line 564
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 565
    const/16 v5, 0xa6

    .line 564
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 566
    .local v0, "mainContentProtocol":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowMagicMirror(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 570
    if-eqz v3, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 573
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0184

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "score":Ljava/lang/String;
    const-string/jumbo v4, "xiaomi-face-watermark-format-string"

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 577
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v2    # "score":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public configPortraitSwitch(I)V
    .locals 2
    .param p1, "checkType"    # I

    .prologue
    .line 588
    const-string/jumbo v1, "pref_camera_portrait_mode_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 590
    .local v0, "switchOn":Z
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 591
    return-void
.end method

.method public configRawSwitch()V
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    move-result-object v0

    .line 584
    .local v0, "componentGlobalRaw":Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    return-void
.end method

.method public configScene(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    .line 428
    const-string/jumbo v2, "pref_camera_scenemode_setting_key"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    .line 430
    .local v1, "switchOn":Z
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 431
    const/16 v4, 0xb5

    .line 430
    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 433
    .local v0, "manuallyAdjust":Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
    if-eqz v1, :cond_0

    .line 435
    new-instance v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    .line 434
    invoke-interface {v0, v3, v5, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 454
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 455
    return-void

    .line 448
    :cond_0
    if-ne p1, v5, :cond_1

    move v2, v3

    .line 451
    :goto_1
    const/4 v4, 0x0

    .line 447
    invoke-interface {v0, v3, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    .line 450
    :cond_1
    const/4 v2, 0x3

    goto :goto_1
.end method

.method public configSoundSwitch(I)V
    .locals 7
    .param p1, "checkType"    # I

    .prologue
    .line 316
    const-string/jumbo v5, "pref_audio_capture"

    invoke-direct {p0, p1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v4

    .line 317
    .local v4, "switchOn":Z
    if-eqz v4, :cond_0

    .line 318
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 319
    .local v2, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v1

    .line 320
    .local v1, "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->switchOff()V

    .line 323
    .end local v1    # "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    .end local v2    # "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/CameraModule;

    .line 324
    .local v0, "cameraModule":Lcom/android/camera/module/CameraModule;
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    .line 330
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    .line 331
    const/16 v6, 0xa2

    .line 330
    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 332
    .local v3, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    .line 333
    return-void
.end method

.method public configTiltSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    const/16 v5, 0xa0

    .line 337
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 338
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 339
    .local v1, "switchOn":Z
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    .line 340
    .local v2, "tiltValue":Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    packed-switch p1, :pswitch_data_0

    .line 371
    .end local v1    # "switchOn":Z
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3, v1}, Lcom/android/camera/module/CameraModule;->onTiltShiftSwitched(Z)V

    .line 372
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    .line 373
    return-void

    .line 342
    .restart local v1    # "switchOn":Z
    :pswitch_1
    const/4 v1, 0x0

    .line 343
    .local v1, "switchOn":Z
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .local v1, "switchOn":Z
    :pswitch_2
    if-nez v1, :cond_0

    .line 351
    const/4 v1, 0x1

    .line 352
    .local v1, "switchOn":Z
    const-string/jumbo v3, "circle"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v3, "circle"

    .line 354
    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 357
    .local v1, "switchOn":Z
    :cond_0
    const-string/jumbo v3, "circle"

    .line 358
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    const-string/jumbo v3, "parallel"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v3, "parallel"

    .line 360
    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_1
    const-string/jumbo v3, "off"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x0

    .local v1, "switchOn":Z
    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public configTimerSwitch()V
    .locals 6

    .prologue
    .line 377
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 378
    .local v1, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    const-string/jumbo v4, "pref_audio_capture"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    const-string/jumbo v4, "pref_audio_capture"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 382
    const/16 v5, 0xa2

    .line 381
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 383
    .local v3, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    .line 386
    .end local v3    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 387
    .local v0, "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getNextValue()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "nextValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTimerChanged(Ljava/lang/String;)V

    .line 390
    const/16 v4, 0xa0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->setComponentValue(ILjava/lang/String;)V

    .line 391
    return-void
.end method

.method public configVideoFast()V
    .locals 10

    .prologue
    const v9, 0x7f0f027a

    const/16 v8, 0xa2

    const/4 v7, 0x0

    const/16 v6, 0xa9

    const/4 v5, 0x1

    .line 459
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 460
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 462
    .local v1, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 464
    .local v2, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 465
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 466
    const-string/jumbo v3, "fast"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 473
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 475
    invoke-virtual {v0, v6}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 477
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 481
    const/4 v3, 0x4

    .line 482
    const/4 v4, 0x2

    .line 481
    invoke-direct {p0, v3, v9, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :goto_0
    move-object v3, v0

    .line 503
    check-cast v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    .line 505
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 506
    return-void

    .line 485
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 487
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 488
    const-string/jumbo v3, "normal"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 493
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 495
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 498
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 499
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public configVideoSlow()V
    .locals 10

    .prologue
    const v9, 0x7f0f027b

    const/16 v8, 0xa2

    const/4 v7, 0x0

    const/16 v6, 0xa8

    const/4 v5, 0x1

    .line 510
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 511
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 512
    .local v1, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 514
    .local v2, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 515
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 516
    const-string/jumbo v3, "slow"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 522
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 524
    invoke-virtual {v0, v6}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 526
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 530
    const/4 v3, 0x4

    .line 531
    const/4 v4, 0x2

    .line 530
    invoke-direct {p0, v3, v9, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :goto_0
    move-object v3, v0

    .line 551
    check-cast v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    .line 553
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 554
    return-void

    .line 533
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 535
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 536
    const-string/jumbo v3, "normal"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 541
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 544
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 547
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 548
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public conflictWithBeauty(Z)V
    .locals 4
    .param p1, "isOpen"    # Z

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "isChangeMutex":Z
    if-eqz p1, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    move-result v0

    .line 908
    .local v0, "isChangeMutex":Z
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 909
    .local v1, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 910
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    .line 913
    .end local v0    # "isChangeMutex":Z
    .end local v1    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 916
    :cond_1
    return-void
.end method

.method public getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    return-object v0
.end method

.method public onConfigChanged(I)V
    .locals 6
    .param p1, "selectedItem"    # I

    .prologue
    .line 83
    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 85
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget v1, v3, v2

    .line 86
    .local v1, "mutexItem":I
    if-ne v1, p1, :cond_1

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    .line 94
    .end local v1    # "mutexItem":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 97
    .end local v0    # "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    .line 98
    return-void
.end method

.method public reCheckMutexConfigs()V
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 107
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 108
    .local v1, "mutexItem":I
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    .line 115
    .end local v1    # "mutexItem":I
    :cond_1
    return-void

    .line 107
    .restart local v1    # "mutexItem":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerProtocol()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 68
    return-void
.end method

.method public showFilter()V
    .locals 4

    .prologue
    .line 237
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 238
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    if-nez v0, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 243
    const/16 v3, 0xa2

    .line 242
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 244
    .local v1, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    .line 246
    const v2, 0x7f0a00ea

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_1

    .line 247
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 249
    :cond_1
    return-void
.end method

.method public showSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v3, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v2, "from_where"

    .line 207
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    .line 206
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    .line 211
    .local v1, "intentType":I
    if-ne v1, v5, :cond_0

    .line 212
    const-string/jumbo v2, "IsCaptureIntent"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    :cond_0
    const-string/jumbo v2, ":miui:starting_window_label"

    .line 216
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string/jumbo v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2, v0}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 222
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 224
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGotoSettings()V

    .line 225
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 73
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 74
    return-void
.end method

.method public updateComponentBeauty(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    .line 923
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 924
    .local v1, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 926
    .local v0, "currentMode":I
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 927
    return-void

    .line 929
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 930
    return-void
.end method
