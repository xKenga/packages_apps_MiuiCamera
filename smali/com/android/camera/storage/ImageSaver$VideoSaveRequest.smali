.class Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Lcom/android/camera/storage/ImageSaver$SaveRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveRequest"
.end annotation


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private mContext:Lcom/android/camera/ActivityBase;

.field private mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/ActivityBase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "context"    # Lcom/android/camera/ActivityBase;
    .param p3, "videoPath"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContext:Lcom/android/camera/ActivityBase;

    .line 541
    iput-object p3, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 542
    iput-object p4, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    .line 543
    return-void
.end method

.method private addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "_size"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 587
    :try_start_0
    const-string/jumbo v3, "duration"

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->getDuration(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 595
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 594
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 601
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 588
    .local v2, "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse duration failed, videoPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    const/4 v3, 0x0

    return-object v3

    .line 596
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "ImageSaver"

    const-string/jumbo v4, "failed to add video to media store"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    const-string/jumbo v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 601
    const-string/jumbo v4, "ImageSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    throw v3
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 607
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 609
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 611
    const/16 v2, 0x9

    .line 610
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 615
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 610
    return-wide v2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v2, "ImageSaver"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 617
    const-wide/16 v2, 0x0

    return-wide v2

    .line 614
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    .line 615
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 614
    throw v2
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public save()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 547
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "finalName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 549
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 554
    :goto_0
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v5, v6}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 555
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 556
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->isFinal()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/storage/ImageSaver;->-wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v2

    .line 557
    .local v2, "thumbnail":Z
    if-eqz v2, :cond_0

    .line 558
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const/16 v6, 0x200

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 559
    .local v4, "videoFrame":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 560
    invoke-static {v3, v4, v8, v8}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 561
    .local v1, "t":Lcom/android/camera/Thumbnail;
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v5, v1}, Lcom/android/camera/storage/ImageSaver;->-wrap5(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V

    .line 567
    .end local v1    # "t":Lcom/android/camera/Thumbnail;
    .end local v4    # "videoFrame":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v5, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;)V

    .line 568
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContext:Lcom/android/camera/ActivityBase;

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    .end local v2    # "thumbnail":Z
    :cond_1
    return-void

    .line 551
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "_data"

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    .restart local v2    # "thumbnail":Z
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "videoFrame":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v5}, Lcom/android/camera/storage/ImageSaver;->-wrap3(Lcom/android/camera/storage/ImageSaver;)V

    goto :goto_1
.end method
