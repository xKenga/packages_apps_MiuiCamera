.class Lcom/android/camera/storage/ImageSaver$MemoryManager;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Lcom/android/camera/storage/Storage$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryManager"
.end annotation


# instance fields
.field private mMaxMemory:J

.field private mMaxTotalMemory:I

.field private mRuntime:Ljava/lang/Runtime;

.field private mSaveTaskMemoryLimit:I

.field private mSavedQueueMemoryLimit:I

.field private mSaverMemoryUse:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedStopCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isSaveQueueFull()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBurstDelay()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;
    .param p1, "length"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->addUsedMemory(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;
    .param p1, "length"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->reduceUsedMemory(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    .line 621
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$MemoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "-this1"    # Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    return-void
.end method

.method private addUsedMemory(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 684
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 685
    return-void
.end method

.method private getBaseMemory()J
    .locals 4

    .prologue
    .line 670
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sparse-switch v0, :sswitch_data_0

    .line 679
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 672
    :sswitch_0
    const-wide/32 v0, 0x1400000

    return-wide v0

    .line 674
    :sswitch_1
    const-wide/32 v0, 0x2800000

    return-wide v0

    .line 676
    :sswitch_2
    const-wide/32 v0, 0x3c00000

    return-wide v0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_1
        0x5a0 -> :sswitch_2
    .end sparse-switch
.end method

.method private getBurstDelay()I
    .locals 3

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 694
    .local v0, "delayMultiple":I
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_1

    .line 696
    const/16 v0, 0x8

    .line 707
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBurstDelay: delayMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 708
    mul-int/lit8 v1, v0, 0x64

    return v1

    .line 697
    :cond_1
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-lt v1, v2, :cond_2

    .line 698
    const/4 v0, 0x5

    goto :goto_0

    .line 699
    :cond_2
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    if-lt v1, v2, :cond_3

    .line 700
    const/4 v0, 0x4

    goto :goto_0

    .line 701
    :cond_3
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_4

    .line 702
    const/4 v0, 0x3

    goto :goto_0

    .line 704
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTotalUsedMemory()I
    .locals 10

    .prologue
    .line 712
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 713
    .local v2, "total":J
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 714
    .local v0, "free":J
    sub-long v4, v2, v0

    .line 715
    .local v4, "totalUsed":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLeftMemory: maxMemory="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", free="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const-string/jumbo v7, ", totalUsed="

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 717
    long-to-int v6, v4

    return v6
.end method

.method private initLimit()V
    .locals 7

    .prologue
    const/high16 v6, 0x3c00000

    .line 655
    iget-wide v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBaseMemory()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 656
    .local v0, "totalValidMemory":J
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    long-to-float v2, v0

    .line 658
    const v3, 0x3f19999a    # 0.6f

    .line 657
    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    .line 666
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSavedQueueMemoryLimit:I

    .line 667
    return-void

    .line 660
    :cond_1
    long-to-float v2, v0

    .line 661
    const/high16 v3, 0x3f000000    # 0.5f

    .line 660
    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    .line 662
    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    if-ge v6, v2, :cond_0

    .line 663
    iput v6, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    goto :goto_0
.end method

.method private initMemory()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    .line 647
    iget-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    long-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 649
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initLimit()V

    .line 650
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->setStorageListener(Lcom/android/camera/storage/Storage$StorageListener;)V

    .line 651
    const-string/jumbo v0, "CameraMemoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initMemory: maxMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method

.method private isNeedSlowDown()Z
    .locals 3

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "slowDown":Z
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 749
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedSlowDown: return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSaverMemoryUse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    const-string/jumbo v2, " mSaveTaskMemoryLimit="

    .line 749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    .line 749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 751
    return v0

    .line 745
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 747
    :cond_1
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedStopCapture()Z
    .locals 6

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "stop":Z
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isReachedMemoryLimit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getTotalUsedMemory()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 736
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 737
    const-string/jumbo v1, "CameraMemoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedStopCapture: needStop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1
    return v0

    .line 735
    :cond_2
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v2

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    goto :goto_0
.end method

.method private isReachedMemoryLimit()Z
    .locals 2

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isReachedMemoryLimit: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 727
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSaveQueueFull()Z
    .locals 2

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSaveQueueFull: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 722
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSavedQueueMemoryLimit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 755
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 756
    const-string/jumbo v0, "CameraMemoryManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    return-void
.end method

.method private reduceUsedMemory(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 688
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 689
    return-void
.end method


# virtual methods
.method public onStoragePathChanged()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    .line 763
    return-void
.end method
