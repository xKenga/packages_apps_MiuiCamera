.class public Lcom/android/camera/data/data/global/ComponentGlobalRaw;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentGlobalRaw.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0
    .param p1, "dataItemGlobal"    # Lcom/android/camera/data/data/global/DataItemGlobal;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f0f0047

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
