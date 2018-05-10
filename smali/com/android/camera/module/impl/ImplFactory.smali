.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source "ImplFactory.java"


# instance fields
.field private additionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private baseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs initTypes(Lcom/android/camera/ActivityBase;Z[I)V
    .locals 5
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;
    .param p2, "isBase"    # Z
    .param p3, "types"    # [I

    .prologue
    .line 40
    const/4 v2, 0x0

    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_4

    aget v1, p3, v2

    .line 41
    .local v1, "type":I
    const/4 v0, 0x0

    .line 42
    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    sparse-switch v1, :sswitch_data_0

    .line 60
    .end local v0    # "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :goto_1
    if-nez v0, :cond_0

    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .restart local v0    # "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :sswitch_0
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v0

    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    goto :goto_1

    .line 48
    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :sswitch_1
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v0

    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    goto :goto_1

    .line 52
    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :sswitch_2
    invoke-static {}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    move-result-object v0

    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    goto :goto_1

    .line 56
    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :sswitch_3
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v0

    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    goto :goto_1

    .line 64
    .end local v0    # "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    .line 66
    if-eqz p2, :cond_2

    .line 67
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    if-nez v4, :cond_3

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    .line 75
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    .end local v1    # "type":I
    :cond_4
    return-void

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_0
        0xab -> :sswitch_1
        0xad -> :sswitch_2
        0xae -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public detachAdditional()V
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "additionalProtocol$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    .line 86
    .local v0, "additionalProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    .line 88
    .end local v0    # "additionalProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :cond_1
    return-void
.end method

.method public detachAll()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    .line 93
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "baseProtocol$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    .line 98
    .local v0, "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    .line 100
    .end local v0    # "baseProtocol":Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    :cond_1
    return-void
.end method

.method public varargs initAdditional(Lcom/android/camera/ActivityBase;[I)V
    .locals 1
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;
    .param p2, "types"    # [I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Z[I)V

    .line 35
    return-void
.end method

.method public varargs initBase(Lcom/android/camera/ActivityBase;[I)V
    .locals 1
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;
    .param p2, "types"    # [I

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Z[I)V

    .line 24
    return-void
.end method
