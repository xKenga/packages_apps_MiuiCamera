.class Lcom/android/camera/module/CameraModule$MainHandler;
.super Landroid/os/Handler;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$MainHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "-this1"    # Lcom/android/camera/module/CameraModule$MainHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 463
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    return-void

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->mAbandoned:Z

    if-eqz v0, :cond_1

    .line 468
    return-void

    .line 471
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 829
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 475
    const/16 v1, 0x80

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 483
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getScreenDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 488
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->initializeFirstTime()V

    goto :goto_0

    .line 495
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    .line 505
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->checkActivityOrientation()V

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get12(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 516
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v12, v0, Lcom/android/camera/module/CameraModule;->mIgnoreFocusChanged:Z

    .line 517
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto :goto_0

    .line 522
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap25(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 527
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    goto/16 :goto_0

    .line 532
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap16(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 537
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    goto/16 :goto_0

    .line 552
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onCameraException()V

    goto/16 :goto_0

    .line 557
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v12}, Lcom/android/camera/module/CameraModule;->-set11(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_0

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v2, :cond_2

    .line 561
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get10(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    const-wide/16 v4, 0x320

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    .line 559
    if-eqz v0, :cond_2

    .line 563
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_6

    .line 564
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 566
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v12}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    goto/16 :goto_0

    .line 573
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get14(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 574
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set11(Lcom/android/camera/module/CameraModule;Z)Z

    .line 575
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_7

    .line 576
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 578
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v12}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    .line 580
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap1(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->isMainIntentActivityLaunched()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 582
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "should not do later release to avoid release the camera hold by main activity"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 584
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    goto/16 :goto_0

    .line 591
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap3(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 594
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v12, v2}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 595
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getTriggerMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    .line 596
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto/16 :goto_0

    .line 598
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get4(Lcom/android/camera/module/CameraModule;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 599
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get4(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set3(Lcom/android/camera/module/CameraModule;I)I

    .line 600
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retry do-capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get4(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 614
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 619
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_c

    .line 620
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 621
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 625
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    .line 626
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 622
    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isSquareModeChange()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 623
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    goto :goto_1

    .line 631
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_d

    .line 632
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 633
    .local v10, "message":Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 634
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, v10, Landroid/os/Message;->arg2:I

    .line 635
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    iget v1, v10, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioCaptureManager;->setDelayStep(I)V

    .line 636
    iget v0, v10, Landroid/os/Message;->arg2:I

    int-to-long v0, v0

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/camera/module/CameraModule$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 637
    iget v0, v10, Landroid/os/Message;->arg1:I

    if-ge v0, v2, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    goto/16 :goto_0

    .line 642
    .end local v10    # "message":Landroid/os/Message;
    :cond_d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 643
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 644
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setTriggerMode(I)V

    .line 646
    :cond_e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->-wrap19(Lcom/android/camera/module/CameraModule;J)V

    goto/16 :goto_0

    .line 651
    :pswitch_12
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->showObjectTrackHint()V

    goto/16 :goto_0

    .line 656
    :pswitch_13
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v12, v12}, Lcom/android/camera/module/CameraModule;->-wrap28(Lcom/android/camera/module/CameraModule;ZZ)V

    .line 659
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v0

    if-nez v0, :cond_f

    .line 660
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 661
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap8(Lcom/android/camera/module/CameraModule;)V

    .line 664
    :cond_f
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 665
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 666
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->-set8(Lcom/android/camera/module/CameraModule;J)J

    goto/16 :goto_0

    .line 672
    :pswitch_14
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->isBusy()Z

    move-result v0

    if-nez v0, :cond_10

    .line 673
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    goto/16 :goto_0

    .line 675
    :cond_10
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1e

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 682
    :pswitch_15
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 684
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onClick()V

    goto/16 :goto_0

    .line 690
    :pswitch_16
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap0(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 691
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap18(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 693
    :cond_11
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 694
    new-instance v1, Lcom/android/camera/module/CameraModule$JpegPictureCallback;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 693
    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_0

    .line 700
    :pswitch_17
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap20(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 705
    :pswitch_18
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap9(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 710
    :pswitch_19
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->-wrap21(Lcom/android/camera/module/CameraModule;II)V

    goto/16 :goto_0

    .line 715
    :pswitch_1a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_13

    const/4 v7, 0x1

    .line 716
    .local v7, "enterFBMode":Z
    :goto_2
    if-eqz v7, :cond_14

    .line 717
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v0, :cond_12

    .line 718
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/Camera$FaceDetectionListener;

    .line 719
    .local v9, "listener":Landroid/hardware/Camera$FaceDetectionListener;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v9}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 721
    .end local v9    # "listener":Landroid/hardware/Camera$FaceDetectionListener;
    :cond_12
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v12, v12}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto/16 :goto_0

    .line 715
    .end local v7    # "enterFBMode":Z
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "enterFBMode":Z
    goto :goto_2

    .line 723
    :cond_14
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_15

    .line 725
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    goto/16 :goto_0

    .line 728
    :cond_15
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto/16 :goto_0

    .line 735
    .end local v7    # "enterFBMode":Z
    :pswitch_1b
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_16

    move v0, v12

    :goto_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-lez v3, :cond_17

    :goto_4
    invoke-static {v2, v0, v12}, Lcom/android/camera/module/CameraModule;->-wrap15(Lcom/android/camera/module/CameraModule;ZZ)V

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_3

    :cond_17
    move v12, v1

    goto :goto_4

    .line 740
    :pswitch_1c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v12}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 741
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto/16 :goto_0

    .line 746
    :pswitch_1d
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No continuous shot callback!"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto/16 :goto_0

    .line 752
    :pswitch_1e
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_LYING_FLAG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 757
    :pswitch_1f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    :cond_18
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x6

    .line 759
    const v2, 0x7f0f0223

    .line 758
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 766
    :pswitch_20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->disableSwitchAnimationOnce()V

    .line 768
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->onCameraPickerClicked(I)Z

    goto/16 :goto_0

    .line 774
    :pswitch_21
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/camera/Thumbnail;

    .line 775
    .local v11, "thumbnail":Lcom/android/camera/Thumbnail;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v11, v12, v12}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto/16 :goto_0

    .line 779
    .end local v11    # "thumbnail":Lcom/android/camera/Thumbnail;
    :pswitch_22
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x4

    .line 781
    const v2, 0x7f0f0224

    .line 780
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 788
    :pswitch_23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    .line 789
    const/16 v1, 0xa4

    .line 788
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 790
    .local v6, "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    if-nez v6, :cond_19

    .line 791
    return-void

    .line 793
    :cond_19
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v8

    .line 794
    .local v8, "isFaceBeautyOn":Z
    if-eqz v8, :cond_1a

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v0

    if-nez v0, :cond_1a

    .line 795
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap27(Lcom/android/camera/module/CameraModule;)V

    .line 802
    :goto_5
    invoke-interface {v6, v8}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->conflictWithBeauty(Z)V

    goto/16 :goto_0

    .line 796
    :cond_1a
    if-nez v8, :cond_1b

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 797
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap12(Lcom/android/camera/module/CameraModule;)V

    .line 798
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    goto :goto_5

    .line 800
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_5

    .line 806
    .end local v6    # "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    .end local v8    # "isFaceBeautyOn":Z
    :pswitch_24
    iput-boolean v12, p0, Lcom/android/camera/module/CameraModule$MainHandler;->mAbandoned:Z

    .line 807
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 809
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-object v4, v0, Lcom/android/camera/module/CameraModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    goto/16 :goto_0

    .line 814
    :pswitch_25
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animatePortraitZoomBefore()V

    .line 815
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 818
    :pswitch_26
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap11(Lcom/android/camera/module/CameraModule;)V

    .line 821
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 824
    :pswitch_27
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 825
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v12}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 826
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    goto/16 :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_f
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_23
        :pswitch_2
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method
