.class public Lcom/android/camera/data/data/global/DataItemGlobal;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/global/DataItemGlobal$IntentType;
    }
.end annotation


# instance fields
.field private mIntentType:I

.field private mIsTimeOut:Ljava/lang/Boolean;

.field private mLastCameraId:I

.field private mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

.field private mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mStartFromKeyguard:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 79
    .local v0, "currentCameraId":I
    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 80
    new-instance v1, Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-direct {v1, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 81
    return-void
.end method

.method private determineTimeOut()Z
    .locals 8

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    .local v0, "currentTime":J
    const-string/jumbo v3, "pref_camera_open_time"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 258
    .local v2, "timeOut":Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const/4 v2, 0x0

    .line 262
    :cond_0
    return v2

    .line 255
    .end local v2    # "timeOut":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "timeOut":Z
    goto :goto_0

    .line 256
    .end local v2    # "timeOut":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "timeOut":Z
    goto :goto_0
.end method

.method private getCurrentCameraId(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 122
    :pswitch_0
    const-string/jumbo v0, "pref_camera_id_key"

    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 110
    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "pref_camera_id_key"

    .line 112
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 114
    :cond_0
    return v1

    .line 119
    :pswitch_2
    return v1

    .line 108
    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentMode(I)I
    .locals 3
    .param p1, "intentType"    # I

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "mode":I
    const/16 v1, 0xa4

    if-ne v1, v0, :cond_0

    .line 163
    const/16 v0, 0xa3

    .line 165
    :cond_0
    return v0
.end method

.method private getDefaultCameraId(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCTACanCollect()Z
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "can_connect_network"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-object v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v0

    return v0
.end method

.method public getDataBackUpKey(I)I
    .locals 2
    .param p1, "mCurrentMode"    # I

    .prologue
    .line 389
    iget v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v1, v1, 0x8

    or-int v0, v1, p1

    .line 390
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eqz v1, :cond_0

    .line 391
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 393
    :cond_0
    return v0
.end method

.method public getDefaultMode(I)I
    .locals 1
    .param p1, "intentType"    # I

    .prologue
    const/16 v0, 0xa3

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 239
    :pswitch_0
    return v0

    .line 230
    :pswitch_1
    return v0

    .line 233
    :pswitch_2
    const/16 v0, 0xa2

    return v0

    .line 236
    :pswitch_3
    const/16 v0, 0xab

    return v0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/global/ComponentGlobalRaw;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    return-object v0
.end method

.method public getIntentType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    return v0
.end method

.method public getLastCameraId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    return v0
.end method

.method public getPortraitZoom()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 398
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string/jumbo v0, "pref_camera_portrait_zoom"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 401
    :cond_0
    return v1
.end method

.method public initAfterCameraOpen()V
    .locals 6

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit()V

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 190
    .local v1, "editor":Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 191
    const-string/jumbo v2, "pref_camera_open_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 194
    const-string/jumbo v2, "open_camera_fail_key"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    .line 198
    .local v0, "currentCameraId":I
    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 199
    const-string/jumbo v2, "pref_camera_id_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 202
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 203
    return-void
.end method

.method public isGlobalSwitchOn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isIntentAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 218
    iget v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public parseIntent(Landroid/content/Intent;ZZ)Landroid/support/v4/util/Pair;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startFromKeyguard"    # Z
    .param p3, "justFetch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "ZZ)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "<unknown>"

    .line 280
    :cond_0
    const-string/jumbo v9, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 282
    invoke-static {p1}, Lcom/android/camera/Util;->isPortraitIntent(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 283
    const/4 v5, 0x5

    .line 343
    .local v5, "newIntentType":I
    :goto_0
    if-eqz v5, :cond_1

    .line 344
    const/4 v9, -0x1

    invoke-static {p1, v9}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/content/Intent;I)I

    move-result v2

    .line 346
    .local v2, "intentCameraId":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    .line 351
    .end local v2    # "intentCameraId":I
    :cond_1
    if-nez v5, :cond_14

    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v8

    .line 352
    :goto_1
    iget v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-ne v9, v5, :cond_2

    iget-boolean v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eq v9, p2, :cond_15

    :cond_2
    const/4 v3, 0x1

    .line 354
    .local v3, "intentChanged":Z
    :goto_2
    if-eqz v3, :cond_16

    const-string/jumbo v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 355
    const/16 v7, 0xa3

    .line 356
    .local v7, "pendingOpenModule":I
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    .line 370
    .local v6, "pendingOpenId":I
    :goto_3
    if-nez p3, :cond_5

    .line 371
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 372
    if-eqz v3, :cond_3

    .line 373
    iput v5, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 374
    iput-boolean p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 375
    iget-object v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v10, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v9, v10}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v9

    if-eq v7, v9, :cond_4

    .line 378
    invoke-virtual {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 379
    invoke-static {v7}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v9

    if-eq v6, v9, :cond_5

    .line 382
    invoke-virtual {p0, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 385
    :cond_5
    new-instance v9, Landroid/support/v4/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    .line 280
    .end local v3    # "intentChanged":Z
    .end local v5    # "newIntentType":I
    .end local v6    # "pendingOpenId":I
    .end local v7    # "pendingOpenModule":I
    :cond_6
    const-string/jumbo v9, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 289
    const/4 v5, 0x2

    .line 290
    .restart local v5    # "newIntentType":I
    goto :goto_0

    .line 280
    .end local v5    # "newIntentType":I
    :cond_7
    const-string/jumbo v9, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 293
    :cond_8
    const/4 v5, 0x3

    .line 294
    .restart local v5    # "newIntentType":I
    goto :goto_0

    .line 280
    .end local v5    # "newIntentType":I
    :cond_9
    const-string/jumbo v9, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "android.media.action.XIAOAI_CONTROL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 296
    const/4 v5, 0x0

    .line 297
    .restart local v5    # "newIntentType":I
    const-string/jumbo v9, "android.intent.extras.CAMERA_MODULE"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 298
    .restart local v7    # "pendingOpenModule":I
    const-string/jumbo v9, "android.intent.extras.MIUI_CAMERA_FACING"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 299
    .restart local v6    # "pendingOpenId":I
    const-string/jumbo v9, "DataItemGlobal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "intent from xiaoai voice assist :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v6, :cond_a

    const/4 v9, 0x1

    if-eq v6, v9, :cond_a

    .line 303
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 304
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v6

    .line 310
    :cond_a
    :goto_4
    const/4 v1, 0x0

    .line 311
    .local v1, "inModuleList":Z
    invoke-static {}, Lcom/android/camera/constant/ModeConstant;->getAllModes()[I

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_5
    if-ge v9, v11, :cond_e

    aget v4, v10, v9

    .line 312
    .local v4, "module":I
    if-ne v4, v7, :cond_b

    .line 313
    const/4 v1, 0x1

    .line 311
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 285
    .end local v1    # "inModuleList":Z
    .end local v4    # "module":I
    .end local v5    # "newIntentType":I
    .end local v6    # "pendingOpenId":I
    .end local v7    # "pendingOpenModule":I
    :cond_c
    const/4 v5, 0x1

    .restart local v5    # "newIntentType":I
    goto/16 :goto_0

    .line 306
    .restart local v6    # "pendingOpenId":I
    .restart local v7    # "pendingOpenModule":I
    :cond_d
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    goto :goto_4

    .line 316
    .restart local v1    # "inModuleList":Z
    :cond_e
    if-nez v1, :cond_f

    .line 318
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 319
    invoke-virtual {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v7

    .line 296
    :cond_f
    :goto_6
    const/4 v9, 0x0

    .line 326
    iput v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 327
    iput-boolean p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 328
    iget-object v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v10, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v9, v10}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    .line 329
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v9

    if-eq v7, v9, :cond_10

    .line 330
    invoke-virtual {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 331
    invoke-static {v7}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 333
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v9

    if-eq v6, v9, :cond_11

    .line 334
    invoke-virtual {p0, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 336
    :cond_11
    new-instance v9, Landroid/support/v4/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    .line 321
    :cond_12
    invoke-direct {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v7

    goto :goto_6

    .line 338
    .end local v1    # "inModuleList":Z
    .end local v5    # "newIntentType":I
    .end local v6    # "pendingOpenId":I
    .end local v7    # "pendingOpenModule":I
    :cond_13
    const/4 v5, 0x0

    .line 339
    .restart local v5    # "newIntentType":I
    goto/16 :goto_0

    .line 351
    :cond_14
    const/4 v8, 0x0

    .local v8, "timeOut":Z
    goto/16 :goto_1

    .line 352
    .end local v8    # "timeOut":Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "intentChanged":Z
    goto/16 :goto_2

    .line 357
    :cond_16
    if-eqz v3, :cond_17

    const-string/jumbo v9, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 358
    const/16 v7, 0xa2

    .line 359
    .restart local v7    # "pendingOpenModule":I
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    .restart local v6    # "pendingOpenId":I
    goto/16 :goto_3

    .line 361
    .end local v6    # "pendingOpenId":I
    .end local v7    # "pendingOpenModule":I
    :cond_17
    if-eqz v8, :cond_18

    .line 362
    invoke-virtual {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v7

    .line 363
    .restart local v7    # "pendingOpenModule":I
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v6

    .restart local v6    # "pendingOpenId":I
    goto/16 :goto_3

    .line 365
    .end local v6    # "pendingOpenId":I
    .end local v7    # "pendingOpenModule":I
    :cond_18
    invoke-direct {p0, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v7

    .line 366
    .restart local v7    # "pendingOpenModule":I
    invoke-direct {p0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v6

    .restart local v6    # "pendingOpenId":I
    goto/16 :goto_3
.end method

.method public provideKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "camera_settings_global"

    return-object v0
.end method

.method public resetTimeOut()V
    .locals 4

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 249
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_open_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 250
    return-void
.end method

.method public setCTACanCollect(Z)V
    .locals 2
    .param p1, "bool"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "can_connect_network"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 211
    return-void
.end method

.method public setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 141
    return-void
.end method

.method public setCameraIdTransient(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 150
    const-string/jumbo v0, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 152
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3
    .param p1, "newMode"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 170
    return-void
.end method

.method public setPortraitZoom(I)V
    .locals 2
    .param p1, "zoom"    # I

    .prologue
    .line 406
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_portrait_zoom"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 409
    :cond_0
    return-void
.end method

.method public setStartFromKeyguard(Z)V
    .locals 0
    .param p1, "mStartFromKeyguard"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 267
    return-void
.end method
