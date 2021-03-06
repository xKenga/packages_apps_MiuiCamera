.class public Lcom/android/camera/data/data/config/SupportedConfigs;
.super Ljava/lang/Object;
.source "SupportedConfigs.java"


# instance fields
.field private mSupportedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public add(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 2
    .param p1, "config"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p0
.end method

.method public varargs add([I)V
    .locals 5
    .param p1, "configs"    # [I

    .prologue
    .line 25
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 26
    .local v0, "config":I
    iget-object v3, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "config":I
    :cond_0
    return-void
.end method

.method public getConfig(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    .local v0, "config":I
    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasConfig(I)Z
    .locals 3
    .param p1, "config"    # I

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/camera/data/data/config/SupportedConfigs;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "currentConfig$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "currentConfig":I
    if-ne v0, p1, :cond_0

    .line 66
    const/4 v2, 0x1

    return v2

    .line 70
    .end local v0    # "currentConfig":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
