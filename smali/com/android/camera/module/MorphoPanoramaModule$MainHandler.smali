.class Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;
.super Landroid/os/Handler;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mAbandoned:Z

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p2, "-this1"    # Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x80

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 233
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->mAbandoned:Z

    if-eqz v1, :cond_1

    .line 238
    return-void

    .line 241
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 311
    :cond_2
    :goto_0
    return-void

    .line 243
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 249
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 252
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->getScreenDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 257
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 261
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->onCameraException()V

    goto :goto_0

    .line 264
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 265
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get11(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get10(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    .line 264
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    .line 266
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap3(Lcom/android/camera/module/MorphoPanoramaModule;)V

    goto :goto_0

    .line 269
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 270
    const-wide/16 v2, 0x64

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get11(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get10(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 272
    .local v0, "style":I
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mUIStyle:I

    if-eq v0, v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput v0, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mUIStyle:I

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap4(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 276
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    goto/16 :goto_0

    .line 280
    .end local v0    # "style":I
    :sswitch_6
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 286
    :sswitch_7
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap9(Lcom/android/camera/module/MorphoPanoramaModule;)V

    goto/16 :goto_0

    .line 291
    :sswitch_8
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->switchCameraDone()V

    .line 292
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-boolean v2, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mSwitchingCamera:Z

    goto/16 :goto_0

    .line 297
    :sswitch_9
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get8(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap7(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    goto/16 :goto_0

    .line 301
    :sswitch_a
    iput-boolean v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->mAbandoned:Z

    .line 302
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 304
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-object v5, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mHandlerFinishEmitter:Lio/reactivex/CompletableEmitter;

    goto/16 :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_1
        0x2d -> :sswitch_a
    .end sparse-switch
.end method
