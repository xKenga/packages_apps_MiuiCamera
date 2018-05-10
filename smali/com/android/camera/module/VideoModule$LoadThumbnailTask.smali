.class Lcom/android/camera/module/VideoModule$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mThumbnail:Lcom/android/camera/Thumbnail;

.field mUri:Landroid/net/Uri;

.field mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1941
    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->-get4(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    .line 1942
    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->-get3(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    .line 1943
    return-void
.end method

.method private updateThumbnail()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1983
    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LoadThumbnailTask updateThumbnail thumbnail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " paused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v3, v3, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_1

    .line 1985
    :cond_0
    return-void

    .line 1987
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_3

    .line 1988
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v3, v3, Lcom/android/camera/module/VideoModule;->mPaused:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 1994
    :goto_0
    return-void

    .line 1991
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1992
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1953
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1955
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1956
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    .line 1957
    const/16 v2, 0x200

    .line 1956
    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1958
    .local v0, "videoFrame":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1959
    return-object v3

    .line 1961
    :cond_0
    if-eqz v0, :cond_1

    .line 1962
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v0, v4, v4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1965
    .end local v0    # "videoFrame":Landroid/graphics/Bitmap;
    :cond_1
    return-object v3
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1978
    invoke-static {}, Lcom/android/camera/module/VideoModule;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoadThumbnailTask cancelled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    .line 1980
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1968
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    return-void

    .line 1973
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    .line 1974
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1947
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1949
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1950
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    .line 1951
    return-void
.end method
