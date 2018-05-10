.class public Lcom/android/camera/lib/compatibility/related/v26/V26Utils;
.super Ljava/lang/Object;
.source "V26Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocGraphicBuffers()V
    .locals 5

    .prologue
    .line 13
    const/16 v1, 0x3200

    const/16 v2, 0xa00

    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v4, 0x33

    .line 13
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 16
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 17
    return-void
.end method
