.class public Lcom/android/camera/module/FunModule$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FunModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->mCancelled:Z

    .line 2471
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    .line 2476
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 2477
    return-void

    .line 2479
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->openCamera()V

    .line 2481
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2482
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->onCameraException()V

    .line 2483
    return-void

    .line 2485
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_2

    .line 2486
    return-void

    .line 2489
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetZoom()V

    .line 2490
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2491
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->onCameraOpened()V

    .line 2492
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    .line 2493
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap6(Lcom/android/camera/module/FunModule;)V

    .line 2494
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_3

    .line 2495
    return-void

    .line 2497
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->startPreview()V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {v0}, Lcom/android/camera/module/FunModule;->-wrap3(Lcom/android/camera/module/FunModule;)V

    .line 2499
    iget-object v0, p0, Lcom/android/camera/module/FunModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v0, v0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2500
    return-void
.end method
