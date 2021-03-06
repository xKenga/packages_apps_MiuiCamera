.class public abstract Lcom/android/camera/ActivityBase;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/AppController;
.implements Lcom/android/camera/module/loader/SurfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$1;,
        Lcom/android/camera/ActivityBase$2;
    }
.end annotation


# instance fields
.field private lastTouchTrackTime:J

.field protected mActivityPaused:Z

.field private mAppStartTime:J

.field private mApplication:Lcom/android/camera/CameraAppImpl;

.field protected mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field private mCameraErrorShown:Z

.field protected mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field private mCloseActivityThread:Ljava/lang/Thread;

.field protected mCurrentModule:Lcom/android/camera/module/Module;

.field private mCurrentSurfaceState:I

.field protected mDebugInfoView:Landroid/widget/TextView;

.field protected mDisplayRotation:I

.field protected mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

.field protected mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mGalleryLocked:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mIsFinishInKeyguard:Z

.field private mIsSwitchingModule:Z

.field private mJumpFlag:I

.field protected mJumpedToGallery:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardSecureLocked:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field protected mNotchView:Landroid/view/View;

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field private mResetGotoGallery:Ljava/lang/Runnable;

.field protected mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field private mSecureUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

.field private mStartFromKeyguard:Z

.field private mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ActivityBase;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/camera/ActivityBase;

    .prologue
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/camera/ActivityBase;)Lcom/android/camera/CameraAppImpl;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ActivityBase;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ActivityBase;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ActivityBase;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ActivityBase;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ActivityBase;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ActivityBase;
    .param p1, "timeInMs"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->trackStartAppCost(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 70
    iput v2, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 74
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 78
    iput v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->lastTouchTrackTime:J

    .line 101
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 104
    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 598
    new-instance v0, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    .line 645
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    .line 59
    return-void
.end method

.method private checkGalleryLock()V
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "com.miui.gallery"

    invoke-static {p0, v0}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 259
    return-void
.end method

.method private checkKeyguardFlag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 263
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 266
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setStartFromKeyguard(Z)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 268
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 278
    :cond_2
    :goto_0
    const-string/jumbo v1, "ActivityBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkKeyguard: fromKeyguard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " keyguardSecureLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string/jumbo v2, " secureUriList is "

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    .line 278
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 276
    :cond_3
    iput-object v4, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 279
    :cond_4
    const-string/jumbo v0, "not null"

    goto :goto_1
.end method

.method private clearNotification()V
    .locals 2

    .prologue
    .line 639
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 640
    .local v0, "manager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 643
    :cond_0
    return-void
.end method

.method private trackStartAppCost(J)V
    .locals 5
    .param p1, "timeInMs"    # J

    .prologue
    .line 681
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 682
    const-string/jumbo v0, "capture"

    .line 683
    const-string/jumbo v1, "start_app_cost"

    const/16 v2, 0x32

    invoke-static {p1, p2, v2}, Lcom/android/camera/CameraStatUtil;->round(JI)J

    move-result-wide v2

    .line 682
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 688
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackStartAppCost wrong time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    const-string/jumbo v2, ", start time: "

    .line 685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    iget-wide v2, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    .line 685
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    const-string/jumbo v2, ", now: "

    .line 685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 685
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addSecureUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_1
    return-void
.end method

.method public couldShowErrorDialog()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createCameraScreenNail(ZZ)V
    .locals 3
    .param p1, "getPictures"    # Z
    .param p2, "recreate"    # Z

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v2, :cond_0

    .line 387
    new-instance v0, Lcom/android/camera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 419
    .local v0, "nailListener":Lcom/android/camera/CameraScreenNail$NailListener;
    new-instance v1, Lcom/android/camera/ActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$5;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 430
    .local v1, "requestRenderListener":Lcom/android/camera/CameraScreenNail$RequestRenderListener;
    new-instance v2, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 432
    .end local v0    # "nailListener":Lcom/android/camera/CameraScreenNail$NailListener;
    .end local v1    # "requestRenderListener":Lcom/android/camera/CameraScreenNail$RequestRenderListener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initCameraScreenNail()V

    .line 433
    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 619
    :cond_0
    return-void
.end method

.method public getCameraAppImpl()Lcom/android/camera/CameraAppImpl;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getCurrentModule()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method protected getKeyguardFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "StartActivityWhenLocked"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 252
    :cond_0
    return v0
.end method

.method public getScreenHint()Lcom/android/camera/ui/ScreenHint;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    return-object v0
.end method

.method public getSecureUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V9SmartShutterButton;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    return-object v0
.end method

.method public getSoundPlayTime()J
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->getLastSoundPlayTime()J

    move-result-wide v0

    return-wide v0

    .line 516
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    return-object v0
.end method

.method public gotoGallery()V
    .locals 10

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v5

    if-nez v5, :cond_5

    .line 521
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v3

    .line 522
    .local v3, "t":Lcom/android/camera/Thumbnail;
    if-eqz v3, :cond_5

    .line 523
    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 524
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 525
    const-string/jumbo v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Uri invalid. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached()V

    .line 527
    return-void

    .line 530
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 531
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.miui.gallery"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string/jumbo v5, "from_MiuiCamera"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v5}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 534
    const-string/jumbo v5, "camera-brightness"

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v6}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    const-string/jumbo v5, "StartActivityWhenLocked"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    :cond_2
    const-string/jumbo v5, "com.miui.gallery"

    invoke-static {p0, v5}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 540
    const-string/jumbo v5, "skip_interception"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 543
    const-string/jumbo v5, "SecureUri"

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 545
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 546
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 547
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 554
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v5, :cond_5

    .line 558
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    .line 559
    iget-object v5, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v5, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->trackGotoGallery()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "t":Lcom/android/camera/Thumbnail;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_0
    return-void

    .line 561
    .restart local v3    # "t":Lcom/android/camera/Thumbnail;
    .restart local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 564
    :catch_1
    move-exception v0

    .line 565
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "review image fail. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized hasSurface()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 649
    :try_start_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    .line 661
    return v1

    .line 651
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 653
    return v1

    .line 655
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 658
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 649
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initCameraScreenNail()V
    .locals 5

    .prologue
    .line 436
    const-string/jumbo v2, "ActivityBase"

    const-string/jumbo v3, "initCameraScreenNail"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 439
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 440
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 441
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 443
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "point":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    return v0
.end method

.method public isGalleryLocked()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return v0
.end method

.method public isGotoGallery()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 587
    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNeedResetGotoGallery()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 591
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v0, v2, :cond_0

    .line 592
    iput v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 593
    return v2

    .line 595
    :cond_0
    return v1
.end method

.method public isScanQRCodeIntent()Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSwitchingModule()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public loadCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    .line 510
    :cond_0
    return-void
.end method

.method protected abstract notifyOnFirstFrameArrived(I)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/module/Module;->onActivityResult(IILandroid/content/Intent;)V

    .line 574
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 206
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setVolumeControlStream(I)V

    .line 208
    new-instance v1, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    .line 209
    new-instance v1, Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {v1, p0}, Lcom/android/camera/ThumbnailUpdater;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    .line 210
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 212
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraAppImpl;

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 217
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    .line 218
    new-instance v1, Lcom/android/camera/CameraBrightness;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraBrightness;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 219
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 221
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string/jumbo v1, "ActivityBase"

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    .line 378
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 380
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 381
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 358
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 359
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 361
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setRenderArea(Landroid/graphics/Rect;)V

    .line 459
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 238
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    .line 239
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    .line 240
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 284
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 287
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    :cond_0
    iput-object v4, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 291
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    return-void

    .line 292
    :cond_2
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v0, v2, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->clearNotification()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 246
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    .line 247
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 249
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 312
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onPause()V

    .line 313
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onPause()V

    .line 315
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 330
    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v1, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->finish()V

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    .line 338
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->cancelTask()V

    .line 340
    :cond_3
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public playCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    .line 504
    return-void
.end method

.method protected recordStartTime()V
    .locals 2

    .prologue
    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    .line 674
    return-void
.end method

.method protected releaseCameraScreenNail()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 449
    :cond_0
    return-void
.end method

.method protected resetStartTime()V
    .locals 2

    .prologue
    .line 677
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    .line 678
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Lcom/android/camera/MiuiCameraSound;

    invoke-direct {v1, p0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V

    .line 306
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    .line 307
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v1}, Lcom/android/camera/CameraBrightness;->onResume()V

    .line 309
    return-void
.end method

.method public setJumpFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 612
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 613
    return-void
.end method

.method public setSwitchingModule(Z)V
    .locals 0
    .param p1, "switching"    # Z

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    .line 627
    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    .line 157
    return-void
.end method

.method public startFromKeyguard()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    return v0
.end method

.method public startFromSecureKeyguard()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    return v0
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    monitor-enter p0

    .line 666
    :try_start_0
    iput p1, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 667
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
