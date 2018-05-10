.class Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;
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
    name = "ImageSaveRequest"
.end annotation


# instance fields
.field public algorithmName:Ljava/lang/String;

.field public data:[B

.field public date:J

.field public exif:Lcom/android/gallery3d/exif/ExifInterface;

.field public finalImage:Z

.field public height:I

.field public info:Lcom/android/camera/PictureInfo;

.field public isHide:Z

.field public isMap:Z

.field public isParallelProcess:Z

.field public loc:Landroid/location/Location;

.field public oldTitle:Ljava/lang/String;

.field public orientation:I

.field public saveType:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "saveType"    # I
    .param p3, "data"    # [B
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "oldTitle"    # Ljava/lang/String;
    .param p6, "date"    # J
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "loc"    # Landroid/location/Location;
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p13, "orientation"    # I
    .param p14, "isHide"    # Z
    .param p15, "isMapFile"    # Z
    .param p16, "finalImage"    # Z
    .param p17, "isParallelProcess"    # Z
    .param p18, "algorithmName"    # Ljava/lang/String;
    .param p19, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p2, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->saveType:I

    .line 483
    iput-object p3, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    .line 484
    iput-wide p6, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->date:J

    .line 485
    iput-object p8, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 486
    iput-object p4, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    .line 487
    iput-object p5, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    .line 488
    if-nez p9, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->loc:Landroid/location/Location;

    .line 489
    iput p10, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    .line 490
    iput p11, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    .line 491
    iput-object p12, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 492
    iput p13, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    .line 493
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isHide:Z

    .line 494
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isMap:Z

    .line 495
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->finalImage:Z

    .line 496
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isParallelProcess:Z

    .line 497
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->algorithmName:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->info:Lcom/android/camera/PictureInfo;

    .line 499
    return-void

    .line 488
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->finalImage:Z

    return v0
.end method

.method public save()V
    .locals 22

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    .line 408
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    .line 407
    invoke-static/range {v2 .. v11}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    .line 416
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 419
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->saveType:I

    packed-switch v2, :pswitch_data_0

    .line 428
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isFinal()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v19

    .line 432
    :goto_1
    if-eqz v19, :cond_1

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    .line 436
    .local v20, "ratio":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v18

    .line 437
    .local v18, "inSampleSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isMap:Z

    if-eqz v2, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v21

    .line 440
    .local v21, "t":Lcom/android/camera/Thumbnail;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v3}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->enableFakeThumbnail(Lcom/android/camera/ActivityBase;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap4(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;Z)V

    .line 443
    .end local v18    # "inSampleSize":I
    .end local v20    # "ratio":I
    .end local v21    # "t":Lcom/android/camera/Thumbnail;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isFinal()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/storage/ImageSaver;->-wrap1(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V

    .line 448
    :goto_3
    return-void

    .line 409
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    if-eqz v2, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    .line 411
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isHide:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isMap:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->info:Lcom/android/camera/PictureInfo;

    move-object/from16 v17, v0

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 410
    invoke-static/range {v2 .. v17}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 424
    :pswitch_1
    const/16 v19, 0x0

    .line 425
    .local v19, "needThumbnail":Z
    goto/16 :goto_1

    .line 439
    .end local v19    # "needThumbnail":Z
    .restart local v18    # "inSampleSize":I
    .restart local v20    # "ratio":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v21

    .restart local v21    # "t":Lcom/android/camera/Thumbnail;
    goto/16 :goto_2

    .line 446
    .end local v18    # "inSampleSize":I
    .end local v20    # "ratio":I
    .end local v21    # "t":Lcom/android/camera/Thumbnail;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-wrap3(Lcom/android/camera/storage/ImageSaver;)V

    goto :goto_3

    .line 419
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
