.class public Lcom/android/camera/module/loader/FunctionCameraPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraPrepare.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base",
        "<",
        "Lcom/android/camera/Camera;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# instance fields
.field private baseModule:Lcom/android/camera/module/BaseModule;

.field private mLastMode:I

.field private mResetType:I


# direct methods
.method public constructor <init>(IIILcom/android/camera/module/BaseModule;)V
    .locals 0
    .param p1, "currentMode"    # I
    .param p2, "lastMode"    # I
    .param p3, "resetType"    # I
    .param p4, "baseModule"    # Lcom/android/camera/module/BaseModule;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    .line 46
    iput p2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    .line 47
    iput p3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    .line 48
    iput-object p4, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    .line 50
    return-void
.end method

.method private reconfigureData()V
    .locals 17

    .prologue
    .line 93
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v11

    .line 94
    .local v11, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v12

    .line 95
    .local v12, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v10

    .line 97
    .local v10, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v12}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v3

    .line 99
    .local v3, "componentConfigFilter":Lcom/android/camera/data/data/config/ComponentConfigFilter;
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    .line 103
    .local v4, "componentConfigFlash":Lcom/android/camera/data/data/config/ComponentConfigFlash;
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v6

    .line 104
    .local v6, "configEditor":Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v9

    .line 107
    .local v9, "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    const-string/jumbo v15, "pref_camera_zoom_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v15

    .line 108
    const-string/jumbo v16, "pref_camera_exposure_key"

    .line 107
    invoke-interface/range {v15 .. v16}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 110
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "flashValue":Ljava/lang/String;
    const-string/jumbo v15, "torch"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 117
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v15

    if-nez v15, :cond_1

    .line 118
    const-string/jumbo v15, "pref_focus_position_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 119
    const-string/jumbo v15, "pref_qc_camera_exposuretime_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 123
    :cond_1
    const-string/jumbo v15, "pref_camera_lab_option_key_visible"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 124
    const-string/jumbo v15, "pref_camera_facedetection_key"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    .line 123
    if-eqz v15, :cond_2

    .line 125
    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v15

    const-string/jumbo v16, "pref_camera_facedetection_key"

    invoke-interface/range {v15 .. v16}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    packed-switch v15, :pswitch_data_0

    .line 285
    :cond_3
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 287
    return-void

    .line 134
    :pswitch_1
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    .line 135
    .local v5, "componentConfigHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 136
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    .line 138
    .local v2, "componentConfigBeauty":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    packed-switch v15, :pswitch_data_1

    .line 152
    :pswitch_2
    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 156
    .local v1, "cameraId":I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v11, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v15

    invoke-interface {v9, v12, v15, v1}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    .line 157
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    packed-switch v15, :pswitch_data_2

    .line 211
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 212
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 217
    :goto_2
    invoke-virtual {v11, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    goto :goto_0

    .line 141
    .end local v1    # "cameraId":I
    :pswitch_4
    const/4 v1, 0x0

    .line 142
    .restart local v1    # "cameraId":I
    goto :goto_1

    .line 144
    .end local v1    # "cameraId":I
    :pswitch_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 145
    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .restart local v1    # "cameraId":I
    goto :goto_1

    .line 147
    .end local v1    # "cameraId":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "cameraId":I
    goto :goto_1

    .line 159
    :pswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 160
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 161
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    .line 165
    :pswitch_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 166
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    if-ne v1, v15, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 168
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    .line 170
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 171
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    .line 178
    :pswitch_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v1, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 180
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 181
    :cond_6
    if-nez v1, :cond_b

    .line 183
    const-string/jumbo v15, "pref_camera_hand_night_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 184
    const-string/jumbo v15, "pref_camera_groupshot_mode_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    .line 183
    if-eqz v15, :cond_8

    .line 185
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 186
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 187
    :cond_8
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v15

    const/16 v16, 0xc2

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 188
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isLastOn(I)Z

    move-result v15

    .line 187
    if-eqz v15, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 190
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 191
    :cond_9
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v15

    const/16 v16, 0xef

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isLastOn(I)Z

    move-result v15

    .line 191
    if-eqz v15, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 194
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 196
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 197
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 200
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 201
    const-string/jumbo v15, "pref_camera_hand_night_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 202
    const-string/jumbo v15, "pref_camera_groupshot_mode_key"

    invoke-virtual {v12, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v15

    .line 201
    if-eqz v15, :cond_d

    .line 203
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 205
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_2

    .line 222
    .end local v1    # "cameraId":I
    .end local v2    # "componentConfigBeauty":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .end local v5    # "componentConfigHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    :pswitch_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 223
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 224
    const-string/jumbo v15, "pref_camera_face_beauty_key"

    invoke-interface {v6, v15}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 225
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/effect/BeautyParameters;->resetBeautyLevel()V

    .line 228
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "currentFlashValue":Ljava/lang/String;
    const-string/jumbo v15, "auto"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 231
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 235
    :cond_f
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    .line 236
    .restart local v5    # "componentConfigHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, "hdrValue":Ljava/lang/String;
    const-string/jumbo v15, "auto"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string/jumbo v15, "off"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_10

    .line 238
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v5, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 242
    :cond_10
    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->clearFilterSelected(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 245
    invoke-virtual {v12}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetAll()V

    .line 246
    invoke-interface {v9}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    goto/16 :goto_0

    .line 255
    .end local v5    # "componentConfigHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .end local v8    # "currentFlashValue":Ljava/lang/String;
    .end local v14    # "hdrValue":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v11, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v15

    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v12, v15, v0}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    .line 256
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    .line 258
    .restart local v8    # "currentFlashValue":Ljava/lang/String;
    const-string/jumbo v15, "torch"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 259
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    invoke-virtual {v4, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 261
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0xab

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0xa7

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 268
    :cond_12
    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v7

    .line 269
    .local v7, "configHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 270
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0xab

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 271
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual {v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 272
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto/16 :goto_0

    .line 274
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto/16 :goto_0

    .line 281
    .end local v7    # "configHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .end local v8    # "currentFlashValue":Ljava/lang/String;
    :pswitch_b
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "use switch prepare"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_9
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0xa6
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 157
    :pswitch_data_2
    .packed-switch 0xa3
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/Camera;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "cameraNullHolder":Lcom/android/camera/module/loader/NullHolder;, "Lcom/android/camera/module/loader/NullHolder<Lcom/android/camera/Camera;>;"
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const/16 v1, 0xe8

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    .line 64
    :cond_0
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const/16 v1, 0xe5

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 70
    .local v0, "cameraActivity":Lcom/android/camera/Camera;
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const/16 v1, 0xe9

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 79
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    const/16 v2, 0xe1

    invoke-static {v1, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reconfigureData()V

    .line 88
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-static {v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v0

    return-object v0
.end method
