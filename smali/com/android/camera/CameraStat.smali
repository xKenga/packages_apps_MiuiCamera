.class public Lcom/android/camera/CameraStat;
.super Ljava/lang/Object;
.source "CameraStat.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sDumpStatEvent:Z

.field private static sIsAnonymous:Z

.field private static sIsCounterEventEnabled:Z

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/android/camera/CameraStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraStat;->TAG:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "ro.product.mod_device"

    sget-object v1, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraStat;->CHANNEL:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " category:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    if-eqz p3, :cond_0

    .line 267
    const-string/jumbo v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    if-eqz p4, :cond_2

    .line 270
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v4, "params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 276
    .local v2, "length":I
    add-int/lit8 v4, v2, -0x1

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v4, v2, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "length":I
    :cond_2
    sget-object v4, Lcom/android/camera/CameraStat;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string/jumbo v1, "camera.debug.dump_stat_event"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    .line 169
    sget-boolean v1, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v1, :cond_0

    .line 170
    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/CameraStat;->sIsCounterEventEnabled:Z

    .line 171
    sget-boolean v1, Lcom/android/camera/aosp_porting/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v1, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    .line 172
    const-string/jumbo v1, "2882303761517373386"

    const-string/jumbo v2, "5641737344386"

    sget-object v3, Lcom/android/camera/CameraStat;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-boolean v1, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    .line 175
    const/4 v1, 0x4

    const-wide/32 v2, 0x15f90

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 223
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    .line 225
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V

    .line 230
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 231
    const-string/jumbo v0, "CalculateEvent"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    :cond_1
    return-void

    .line 227
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 238
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    .line 239
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 244
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 245
    const-string/jumbo v0, "CalculateEvent"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1, p4}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    :cond_1
    return-void

    .line 241
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 197
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 198
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    .line 199
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 205
    const-string/jumbo v0, "CountEvent"

    invoke-static {v0, p0, p1, v1, v1}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    :cond_1
    return-void

    .line 201
    :cond_2
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 211
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    .line 212
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 218
    const-string/jumbo v0, "CountEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    :cond_1
    return-void

    .line 214
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static recordPageEnd()V
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 194
    :cond_0
    return-void
.end method

.method public static recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 251
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_2

    .line 252
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 258
    const-string/jumbo v0, "PropertyEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    :cond_1
    return-void

    .line 254
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
