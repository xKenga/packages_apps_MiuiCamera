.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MutexModeManager$ChangeListener;,
        Lcom/android/camera/MutexModeManager$NoneChangeListener;
    }
.end annotation


# instance fields
.field private mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

.field private mCurrentMutexMode:I

.field private mIsMandatory:Z

.field private mLastMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 45
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 48
    new-instance v0, Lcom/android/camera/MutexModeManager$NoneChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>(Lcom/android/camera/MutexModeManager$NoneChangeListener;)V

    iput-object v0, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    .line 51
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method private enter(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 218
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 220
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 221
    const-string/jumbo v2, "enter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 222
    .local v0, "enter":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 225
    .end local v0    # "enter":Ljava/lang/Runnable;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method private exit(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 205
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 206
    iput v3, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 207
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 209
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 211
    .local v0, "exit":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 214
    .end local v0    # "exit":Ljava/lang/Runnable;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 188
    packed-switch p0, :pswitch_data_0

    .line 200
    :pswitch_0
    const-string/jumbo v0, "none"

    return-object v0

    .line 190
    :pswitch_1
    const-string/jumbo v0, "hdr"

    return-object v0

    .line 192
    :pswitch_2
    const-string/jumbo v0, "aohdr"

    return-object v0

    .line 194
    :pswitch_3
    const-string/jumbo v0, "hand-night"

    return-object v0

    .line 196
    :pswitch_4
    const-string/jumbo v0, "raw"

    return-object v0

    .line 198
    :pswitch_5
    const-string/jumbo v0, "burst-shoot"

    return-object v0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private switchMutexMode(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 228
    const-string/jumbo v0, "MutexModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchMutexMode from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eq p1, p2, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    .line 231
    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/MutexModeManager$ChangeListener;->onMutexModeChanged(II)V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public clearMandatoryFlag()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 65
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    .line 155
    :pswitch_1
    const-string/jumbo v0, "AO_HDR"

    return-object v0

    .line 158
    :pswitch_2
    const-string/jumbo v0, "HDR"

    return-object v0

    .line 160
    :pswitch_3
    const-string/jumbo v0, "HHT"

    return-object v0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLastMutexMode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    return v0
.end method

.method public getMutexMode()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 167
    const-string/jumbo v0, "_RAW"

    return-object v0

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->enableAlgorithmInFileSuffix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    .line 172
    :pswitch_1
    const-string/jumbo v0, "_AO_HDR"

    return-object v0

    .line 175
    :pswitch_2
    const-string/jumbo v0, "_HDR"

    return-object v0

    .line 177
    :pswitch_3
    const-string/jumbo v0, "_HHT"

    return-object v0

    .line 182
    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public inMandatoryMode()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return v0
.end method

.method public isAoHdr()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstShoot()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandNight()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorphoHdr()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedComposed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNormal()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRAW()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSceneHdr()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFlashOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_0

    .line 102
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isSupportedTorch()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public isUbiFocus()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMutexMode()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 83
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 84
    return-void
.end method

.method public setMutexMode(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 76
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 77
    return-void
.end method

.method public setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/camera/MutexModeManager$ChangeListener;

    .prologue
    const/4 v0, 0x0

    .line 55
    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/MutexModeManager$NoneChangeListener;

    .end local p1    # "l":Lcom/android/camera/MutexModeManager$ChangeListener;
    invoke-direct {p1, v0}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>(Lcom/android/camera/MutexModeManager$NoneChangeListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    .line 56
    return-void
.end method

.method public setMutexModeMandatory(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 60
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 61
    return-void
.end method
