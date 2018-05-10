.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static sDefaultValue:Ljava/lang/String;

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    .line 11
    const-string/jumbo v0, "4x3"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 171
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 172
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 173
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 175
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 176
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 180
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static _findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 185
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 186
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 187
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 189
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 190
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 194
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 157
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 158
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 159
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 161
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 162
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 166
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 143
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 144
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 145
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 147
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 148
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 152
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 227
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 228
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 229
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 231
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 232
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 236
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 242
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 243
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 245
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 246
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 250
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 213
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 214
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 215
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 217
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 218
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 222
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 199
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 200
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 201
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 203
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 204
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 208
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static getBestPanoPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "desire":Lcom/android/camera/PictureSize;
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 91
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/android/camera/PictureSize;

    .line 93
    .end local v0    # "desire":Lcom/android/camera/PictureSize;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v2, v1, Lcom/android/camera/PictureSize;->width:I

    .line 94
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v1, v1, Lcom/android/camera/PictureSize;->height:I

    .line 92
    invoke-direct {v0, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 96
    .restart local v0    # "desire":Lcom/android/camera/PictureSize;
    :cond_1
    return-object v0

    .line 85
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :cond_2
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .local v0, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 88
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :cond_3
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .local v0, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 64
    .local v0, "candidate":Lcom/android/camera/PictureSize;
    const/4 v1, 0x0

    .line 65
    .local v1, "desire":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 75
    .end local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    :cond_1
    new-instance v1, Lcom/android/camera/PictureSize;

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v1, v3, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 78
    :cond_2
    return-object v1

    .line 67
    .restart local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 69
    .local v1, "desire":Lcom/android/camera/PictureSize;
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio1_1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 71
    .local v1, "desire":Lcom/android/camera/PictureSize;
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio18_9()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0f0040

    const v1, 0x7f0f003f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 25
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 26
    const v1, 0x7f0f0041

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 23
    return-object v0

    .line 29
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 31
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 29
    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 38
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    return-object v0
.end method

.method public static getPictureSize(Z)Lcom/android/camera/PictureSize;
    .locals 2
    .param p0, "settingOnly"    # Z

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v4, Lcom/android/camera/Device;->IS_X9:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v4, :cond_1

    .line 288
    :cond_0
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 289
    return-void

    .line 298
    :cond_1
    const/4 v1, -0x1

    .line 299
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 300
    .local v2, "maxValue":I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 301
    .local v3, "pictureSize":Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 302
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 303
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 304
    move v1, v0

    .line 305
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 301
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 309
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    const-string/jumbo v4, "4x3"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 314
    :goto_1
    return-void

    .line 312
    :cond_4
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 9
    .param p0, "mActivity"    # Lcom/android/camera/ActivityBase;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 101
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 102
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "The supported picture size list return from hal is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 104
    :cond_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    .line 106
    if-eqz p2, :cond_4

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "size$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 109
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    if-gt v7, p2, :cond_2

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    move-object p1, v0

    .line 116
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "size$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v6

    .line 117
    .local v6, "size4_3":Lcom/android/camera/PictureSize;
    if-eqz v6, :cond_5

    .line 118
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_5
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v5

    .line 122
    .local v5, "size1_1":Lcom/android/camera/PictureSize;
    if-eqz v5, :cond_6

    .line 123
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v3

    .line 127
    .local v3, "size16_9":Lcom/android/camera/PictureSize;
    if-eqz v3, :cond_7

    .line 128
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_7
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 132
    .local v4, "size18_9":Lcom/android/camera/PictureSize;
    if-eqz v4, :cond_8

    .line 133
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_8
    sget-object v7, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 137
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Not find the desire picture sizes!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 139
    :cond_9
    return-void
.end method
