.class public Lcom/android/camera/ProximitySensorLock;
.super Ljava/lang/Object;
.source "ProximitySensorLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final SHORTCUT_UNLOCK:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFromVolumeKey:Z

.field private mHintView:Landroid/view/View;

.field private volatile mJudged:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mProximityNear:Ljava/lang/Boolean;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private volatile mResumeCalled:Z

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ProximitySensorLock;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ProximitySensorLock;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ProximitySensorLock;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ProximitySensorLock;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ProximitySensorLock;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->doShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->exit()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ProximitySensorLock;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ProximitySensorLock;->trackExit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/ProximitySensorLock;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ProximitySensorLock;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->trackSensorDelay()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 73
    sput v0, Lcom/android/camera/ProximitySensorLock;->SHORTCUT_UNLOCK:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    .line 79
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 80
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 82
    .local v0, "flags":I
    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    .line 87
    .end local v0    # "flags":I
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 88
    iput-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 89
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "Proximity sensor lock"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v2, Lcom/android/camera/ProximitySensorLock$1;

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ProximitySensorLock$1;-><init>(Lcom/android/camera/ProximitySensorLock;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    .line 117
    return-void

    .restart local v0    # "flags":I
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    move v2, v3

    .line 82
    goto :goto_0

    .line 85
    .end local v0    # "flags":I
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    goto :goto_1
.end method

.method private doShow()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v8, 0x1f4

    .line 285
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    return-void

    .line 292
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 293
    .local v3, "content":Landroid/widget/FrameLayout;
    if-nez v3, :cond_2

    .line 294
    return-void

    .line 296
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    if-nez v4, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->inflateHint()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    .line 299
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v10, v6, v7

    aput v11, v6, v12

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 302
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 303
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 305
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 306
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 307
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 308
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 309
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 311
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 312
    .local v1, "animationView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 314
    iget-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v12, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    return-void
.end method

.method public static enabled()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isProximityLockOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    return-void

    .line 361
    :cond_1
    const-string/jumbo v0, "ProximitySensorLock"

    const-string/jumbo v1, "Finish activity, exiting."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 363
    return-void
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 194
    sparse-switch p0, :sswitch_data_0

    .line 209
    const/4 v0, 0x1

    return v0

    .line 197
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 199
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 201
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 203
    :sswitch_3
    const/16 v0, 0x10

    return v0

    .line 205
    :sswitch_4
    const/16 v0, 0x20

    return v0

    .line 207
    :sswitch_5
    const/16 v0, 0x40

    return v0

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/ProximitySensorLock$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ProximitySensorLock$3;-><init>(Lcom/android/camera/ProximitySensorLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    :cond_1
    return-void
.end method

.method private inflateHint()Landroid/view/View;
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040037

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isFromSnap()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private judge()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v1, "Psensor\u97f3\u91cf\u952e"

    invoke-direct {p0, v1}, Lcom/android/camera/ProximitySensorLock;->trackEnter(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 174
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->exit()V

    .line 181
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 182
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    .local v0, "quit":Z
    goto :goto_0

    .line 175
    .end local v0    # "quit":Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    const-string/jumbo v1, "Psensor\u9501\u5c4f\u8fdb\u5165"

    invoke-direct {p0, v1}, Lcom/android/camera/ProximitySensorLock;->trackEnter(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->show()V

    goto :goto_1

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    goto :goto_1
.end method

.method private resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    .line 319
    iput v0, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    .line 320
    return-void
.end method

.method private shouldBeBlocked(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 225
    const/4 v0, 0x1

    return v0

    .line 223
    :sswitch_0
    return v1

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private show()V
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/ProximitySensorLock$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ProximitySensorLock$2;-><init>(Lcom/android/camera/ProximitySensorLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    :cond_2
    return-void
.end method

.method private stopWatching()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    const-string/jumbo v1, "ProximitySensorLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopWatching proximity sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 248
    .local v0, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 249
    iput-object v4, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    .line 252
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWorkerThread()V

    .line 253
    return-void
.end method

.method private stopWorkerThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 262
    :goto_0
    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    .line 264
    :cond_0
    iput-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    .line 265
    iput-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 266
    iput-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 267
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method

.method public static supported()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/android/camera/Device;->isSupportPSensorPocketMode()Z

    move-result v0

    return v0
.end method

.method private trackEnter(Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v0, "counter"

    .line 413
    const-string/jumbo v1, "pocket_mode_enter"

    .line 412
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 413
    const-string/jumbo v3, "\u65b9\u5f0f"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 412
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private trackExit(Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string/jumbo v0, "counter"

    .line 418
    const-string/jumbo v1, "pocket_mode_keyguard_exit"

    .line 417
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 418
    const-string/jumbo v3, "\u65b9\u5f0f"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 417
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private trackSensorDelay()V
    .locals 2

    .prologue
    .line 422
    const-string/jumbo v0, "counter"

    .line 423
    const-string/jumbo v1, "pocket_mode_sensor_delay"

    .line 422
    invoke-static {v0, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method


# virtual methods
.method public active()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mHintView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    const-string/jumbo v0, "ProximitySensorLock"

    const-string/jumbo v1, "destroying"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 346
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 347
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWorkerThread()V

    .line 348
    iput-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 349
    iput-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    .line 351
    return-void
.end method

.method public intercept(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ProximitySensorLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    return v4

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    .line 137
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 138
    .local v2, "keyCode":I
    invoke-static {v2}, Lcom/android/camera/ProximitySensorLock;->getKeyBitmask(I)I

    move-result v1

    .line 139
    .local v1, "keyBitMask":I
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    if-nez v3, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->resetKeyStatus()V

    .line 142
    :cond_2
    if-eqz v0, :cond_5

    .line 143
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    .line 144
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    .line 148
    :goto_1
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressed:I

    sget v4, Lcom/android/camera/ProximitySensorLock;->SHORTCUT_UNLOCK:I

    if-ne v3, v4, :cond_3

    .line 149
    const-string/jumbo v3, "\u9501\u5c4f\u624b\u52a8\u89e3\u9664"

    invoke-direct {p0, v3}, Lcom/android/camera/ProximitySensorLock;->trackExit(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 151
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->stopWatching()V

    .line 153
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 136
    .end local v0    # "down":Z
    .end local v1    # "keyBitMask":I
    .end local v2    # "keyCode":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 146
    .restart local v1    # "keyBitMask":I
    .restart local v2    # "keyCode":I
    :cond_5
    iget v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    not-int v4, v1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ProximitySensorLock;->mKeyPressing:I

    goto :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 409
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 157
    const-string/jumbo v0, "ProximitySensorLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFromVolumeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mProximityNear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 163
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 164
    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    .line 167
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 367
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 369
    .local v2, "firstCallback":Z
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 370
    .local v1, "far":Z
    :goto_1
    const-string/jumbo v3, "ProximitySensorLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSensorChanged near "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", values "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", max "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    xor-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    .line 373
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    if-nez v3, :cond_3

    .line 375
    return-void

    .line 367
    .end local v1    # "far":Z
    .end local v2    # "firstCallback":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "firstCallback":Z
    goto :goto_0

    .line 369
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "far":Z
    goto :goto_1

    .line 377
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 378
    .local v0, "beforeDelayCheck":Z
    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    return-void

    .line 383
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    if-nez v3, :cond_5

    .line 384
    return-void

    .line 387
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 388
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->judge()V

    .line 389
    return-void

    .line 391
    :cond_6
    iget-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mFromVolumeKey:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    if-eqz v3, :cond_7

    .line 393
    if-eqz v1, :cond_8

    .line 394
    const-string/jumbo v3, "\u9501\u5c4f\u81ea\u52a8\u89e3\u9664"

    invoke-direct {p0, v3}, Lcom/android/camera/ProximitySensorLock;->trackExit(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->hide()V

    .line 401
    :cond_7
    :goto_2
    return-void

    .line 397
    :cond_8
    const-string/jumbo v3, "Psensor\u9501\u5c4f\u8fdb\u5165"

    invoke-direct {p0, v3}, Lcom/android/camera/ProximitySensorLock;->trackEnter(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->show()V

    goto :goto_2
.end method

.method public shouldQuitSnap()Z
    .locals 4

    .prologue
    .line 185
    const-string/jumbo v1, "ProximitySensorLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldQuit fromSnap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", proximity ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/android/camera/ProximitySensorLock;->isFromSnap()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximityNear:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 187
    :goto_0
    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v1, "Psensor\u8857\u62cd"

    invoke-direct {p0, v1}, Lcom/android/camera/ProximitySensorLock;->trackEnter(Ljava/lang/String;)V

    .line 190
    :cond_0
    return v0

    .line 186
    :cond_1
    const/4 v0, 0x1

    .local v0, "quit":Z
    goto :goto_0

    .end local v0    # "quit":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "quit":Z
    goto :goto_0
.end method

.method public startWatching()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 229
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    return-void

    .line 232
    :cond_1
    const-string/jumbo v1, "ProximitySensorLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWatching proximity sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v4, p0, Lcom/android/camera/ProximitySensorLock;->mJudged:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/camera/ProximitySensorLock;->mResumeCalled:Z

    .line 235
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 236
    .local v0, "sm":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    .line 237
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 238
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v1, p0, Lcom/android/camera/ProximitySensorLock;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    return-void
.end method
