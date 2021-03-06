.class public Lcom/android/camera/CameraApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "CameraApplicationDelegate.java"


# static fields
.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mMainIntentActivityLaunched:Z

.field private mRestoreSetting:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 1
    .param p1, "cameraAppImpl"    # Lcom/android/camera/CameraAppImpl;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    .line 20
    sput-object p1, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    .line 21
    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 57
    if-nez p1, :cond_0

    monitor-exit p0

    .line 58
    return-void

    .line 60
    :cond_0
    :try_start_0
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 64
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 5
    .param p1, "current"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 79
    .local v1, "i":I
    const/4 v2, 0x0

    .end local v0    # "activity":Landroid/app/Activity;
    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, "activity":Landroid/app/Activity;
    if-eq v0, p1, :cond_0

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    iget-object v3, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    monitor-exit p0

    .line 88
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getActivity(I)Landroid/app/Activity;
    .locals 1
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 33
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 36
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 26
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraStat;->initialize(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 30
    return-void
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 67
    if-nez p1, :cond_0

    monitor-exit p0

    .line 68
    return-void

    .line 70
    :cond_0
    :try_start_0
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mMainIntentActivityLaunched:Z

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 74
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetRestoreFlag()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 46
    return-void
.end method
