.class public Lcom/android/camera/CameraErrorCallback;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    .line 54
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x0

    .line 32
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    const-string/jumbo v2, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got camera error callback. error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    const-string/jumbo v3, " paused="

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 36
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 38
    const-string/jumbo v1, "CameraErrorCallback"

    const-string/jumbo v2, "media server died"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->trackCameraError(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 46
    .local v0, "currentModule":Lcom/android/camera/module/Module;
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Lcom/android/camera/module/Module;->notifyError()V

    .line 49
    :cond_1
    iput-object v4, p0, Lcom/android/camera/CameraErrorCallback;->mActivity:Landroid/app/Activity;

    .line 50
    return-void

    .line 39
    .end local v0    # "currentModule":Lcom/android/camera/module/Module;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 40
    const-string/jumbo v1, "CameraErrorCallback"

    const-string/jumbo v2, "unspecified camera error"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :cond_3
    const-string/jumbo v1, "CameraErrorCallback"

    const-string/jumbo v2, " other unknown error"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
