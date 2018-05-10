.class public Lcom/android/camera/data/data/config/ComponentManuallyET;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyET.java"


# instance fields
.field fullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0
    .param p1, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 21
    return-void
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 99
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0

    .line 103
    :cond_0
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 104
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 105
    const-string/jumbo v2, "0"

    const v3, 0x7f0f0172

    .line 104
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 107
    const-string/jumbo v2, "1000"

    const v3, 0x7f0f0182

    .line 106
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 108
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 109
    const-string/jumbo v2, "2000"

    const v3, 0x7f0f0181

    .line 108
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 110
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 111
    const-string/jumbo v2, "4000"

    const v3, 0x7f0f0180

    .line 110
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 112
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 113
    const-string/jumbo v2, "8000"

    const v3, 0x7f0f017f

    .line 112
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 114
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 115
    const-string/jumbo v2, "16667"

    const v3, 0x7f0f017e

    .line 114
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 116
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 117
    const-string/jumbo v2, "33333"

    const v3, 0x7f0f017d

    .line 116
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 118
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 119
    const-string/jumbo v2, "66667"

    const v3, 0x7f0f017c

    .line 118
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 120
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 121
    const-string/jumbo v2, "125000"

    const v3, 0x7f0f017b

    .line 120
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 122
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 123
    const-string/jumbo v2, "250000"

    const v3, 0x7f0f017a

    .line 122
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 124
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 125
    const-string/jumbo v2, "500000"

    const v3, 0x7f0f0179

    .line 124
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 126
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 127
    const-string/jumbo v2, "1000000"

    const v3, 0x7f0f0178

    .line 126
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 128
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 129
    const-string/jumbo v2, "2000000"

    const v3, 0x7f0f0177

    .line 128
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 130
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 131
    const-string/jumbo v2, "4000000"

    const v3, 0x7f0f0176

    .line 130
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 132
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 133
    const-string/jumbo v2, "8000000"

    const v3, 0x7f0f0175

    .line 132
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 134
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 135
    const-string/jumbo v2, "16000000"

    const v3, 0x7f0f0174

    .line 134
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 136
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 137
    const-string/jumbo v2, "32000000"

    const v3, 0x7f0f0173

    .line 136
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 103
    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    .line 141
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->fullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method private initItems()Ljava/util/List;
    .locals 8
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
    .line 74
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    .line 77
    .local v2, "fullItems":[Lcom/android/camera/data/data/ComponentDataItem;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, "resultItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    sget-boolean v7, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v7, :cond_1

    const v4, 0x1e8480

    .line 80
    .local v4, "maxExposure":I
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMinExposureTimes()I

    move-result v5

    .line 81
    .local v5, "minExposure":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_3

    .line 83
    aget-object v0, v2, v3

    .line 85
    .local v0, "componentDataItem":Lcom/android/camera/data/data/ComponentDataItem;
    iget-object v7, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "entryValue":I
    if-gt v5, v1, :cond_2

    if-gt v1, v4, :cond_2

    .line 89
    :goto_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "componentDataItem":Lcom/android/camera/data/data/ComponentDataItem;
    .end local v1    # "entryValue":I
    .end local v3    # "i":I
    .end local v4    # "maxExposure":I
    .end local v5    # "minExposure":I
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes()I

    move-result v4

    .restart local v4    # "maxExposure":I
    goto :goto_0

    .line 88
    .restart local v0    # "componentDataItem":Lcom/android/camera/data/data/ComponentDataItem;
    .restart local v1    # "entryValue":I
    .restart local v3    # "i":I
    .restart local v5    # "minExposure":I
    :cond_2
    if-nez v3, :cond_0

    goto :goto_2

    .line 93
    .end local v0    # "componentDataItem":Lcom/android/camera/data/data/ComponentDataItem;
    .end local v1    # "entryValue":I
    :cond_3
    return-object v6
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getItems()Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "currentItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 65
    .local v1, "maxValue":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 66
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->setComponentValue(ILjava/lang/String;)V

    .line 67
    return-object v1

    .line 69
    :cond_0
    return-object v2
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 35
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0f0170

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
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mItems:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 30
    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    return-object v0
.end method

.method public getValueDisplayString(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    .line 51
    .local v1, "fullItems":[Lcom/android/camera/data/data/ComponentDataItem;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 52
    .local v0, "dataItem":Lcom/android/camera/data/data/ComponentDataItem;
    iget-object v5, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return v3

    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "dataItem":Lcom/android/camera/data/data/ComponentDataItem;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "invalid value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
