.class public Lcom/android/camera/ThumbnailUpdater;
.super Ljava/lang/Object;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;,
        Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;
    }
.end annotation


# instance fields
.field private mActivityBase:Lcom/android/camera/ActivityBase;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnail:Lcom/android/camera/Thumbnail;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ThumbnailUpdater;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ThumbnailUpdater;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ThumbnailUpdater;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 23
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    .line 24
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 59
    iput-object v2, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 61
    :cond_0
    return-void
.end method

.method public getLastThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 67
    :cond_0
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method public getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 74
    :cond_0
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method public getThumbnail()Lcom/android/camera/Thumbnail;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method public saveThumbnailToFile()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    :cond_0
    return-void
.end method

.method public setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V
    .locals 0
    .param p1, "t"    # Lcom/android/camera/Thumbnail;
    .param p2, "update"    # Z
    .param p3, "needAnimation"    # Z

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0, p3}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public updateThumbnailView(Z)V
    .locals 4
    .param p1, "needAnimation"    # Z

    .prologue
    .line 47
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 48
    const/16 v2, 0xa2

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 49
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    if-nez v0, :cond_0

    .line 50
    const-string/jumbo v1, "ThumbnailUpdater"

    const-string/jumbo v2, "won\'t update thumbnail"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 54
    return-void
.end method
