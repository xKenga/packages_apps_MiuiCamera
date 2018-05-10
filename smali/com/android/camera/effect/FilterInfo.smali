.class public Lcom/android/camera/effect/FilterInfo;
.super Ljava/lang/Object;
.source "FilterInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/FilterInfo$FilterCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/effect/FilterInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILTER_ID_ANALOG:I

.field public static final FILTER_ID_BIGFACE:I

.field public static final FILTER_ID_BLACKWHITE:I

.field public static final FILTER_ID_BLUR:I

.field public static final FILTER_ID_COLORPOP:I

.field public static final FILTER_ID_FISHEYE:I

.field public static final FILTER_ID_GAUSSIAN:I

.field public static final FILTER_ID_GRADIENTER:I

.field public static final FILTER_ID_ICY:I

.field public static final FILTER_ID_LOMO:I

.field public static final FILTER_ID_LONGFACE:I

.field public static final FILTER_ID_MATTE:I

.field public static final FILTER_ID_MIRROR:I

.field public static final FILTER_ID_MONO:I

.field public static final FILTER_ID_MOSAIC:I

.field public static final FILTER_ID_NONE:I

.field public static final FILTER_ID_PEAKINGMF:I

.field public static final FILTER_ID_RUSTIC:I

.field public static final FILTER_ID_SKETCH:I

.field public static final FILTER_ID_SMALLFACE:I

.field public static final FILTER_ID_STICKER:I

.field public static final FILTER_ID_TILTSHIFT:I

.field public static final FILTER_ID_TUNNEL:I

.field public static final FILTER_ID_VIVID:I

.field public static final RENDER_ID_MAKEUP:I


# instance fields
.field private mCategory:I

.field private mIconResId:I

.field private mIndex:I

.field private mIsNeedRect:Z

.field private mNameResId:I

.field private mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    const/16 v0, 0x101

    invoke-static {v2, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    .line 28
    const/16 v0, 0x102

    invoke-static {v2, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    .line 29
    const/16 v0, 0x103

    invoke-static {v2, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    .line 30
    const/16 v0, 0x104

    invoke-static {v2, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    .line 31
    const/16 v0, 0x105

    invoke-static {v2, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    .line 32
    const/16 v0, 0x106

    invoke-static {v2, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    .line 34
    const/16 v0, 0x200

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 35
    const/16 v0, 0x201

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_LOMO:I

    .line 36
    const/16 v0, 0x202

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_COLORPOP:I

    .line 37
    const/16 v0, 0x203

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RUSTIC:I

    .line 38
    const/16 v0, 0x204

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ICY:I

    .line 39
    const/16 v0, 0x205

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_VIVID:I

    .line 40
    const/16 v0, 0x206

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ANALOG:I

    .line 41
    const/16 v0, 0x207

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MATTE:I

    .line 42
    const/16 v0, 0x208

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MONO:I

    .line 43
    const/16 v0, 0x209

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLACKWHITE:I

    .line 44
    const/16 v0, 0x20a

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_SKETCH:I

    .line 45
    const/16 v0, 0x20b

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BIGFACE:I

    .line 46
    const/16 v0, 0x20c

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_SMALLFACE:I

    .line 47
    const/16 v0, 0x20d

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_LONGFACE:I

    .line 48
    const/16 v0, 0x20e

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_FISHEYE:I

    .line 49
    const/16 v0, 0x20f

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MOSAIC:I

    .line 50
    const/16 v0, 0x210

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MIRROR:I

    .line 51
    const/16 v0, 0x211

    invoke-static {v1, v0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TUNNEL:I

    .line 53
    const/4 v0, 0x4

    const/16 v1, 0x301

    invoke-static {v0, v1}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v0

    sput v0, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "order"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 64
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "nameResId"    # I
    .param p3, "iconResId"    # I
    .param p4, "order"    # I

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 68
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "index"    # I
    .param p3, "nameResId"    # I
    .param p4, "iconResId"    # I
    .param p5, "order"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    .line 72
    iput p2, p0, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    .line 73
    iput p5, p0, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    .line 74
    iput p3, p0, Lcom/android/camera/effect/FilterInfo;->mNameResId:I

    .line 75
    iput p4, p0, Lcom/android/camera/effect/FilterInfo;->mIconResId:I

    .line 76
    return-void
.end method

.method public static getCategory(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 119
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getId(II)I
    .locals 1
    .param p0, "category"    # I
    .param p1, "index"    # I

    .prologue
    .line 115
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public static getIndex(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 123
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/effect/FilterInfo;)I
    .locals 2
    .param p1, "another"    # Lcom/android/camera/effect/FilterInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    iget v1, p1, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    iget v1, p1, Lcom/android/camera/effect/FilterInfo;->mOrder:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/FilterInfo;->compareTo(Lcom/android/camera/effect/FilterInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/effect/FilterInfo;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    return v1

    .line 136
    :cond_1
    iget v2, p0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    iget v0, v0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mIconResId:I

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mCategory:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/camera/effect/FilterInfo;->mIndex:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/effect/FilterInfo;->mNameResId:I

    return v0
.end method

.method public isNeedRect()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/effect/FilterInfo;->mIsNeedRect:Z

    return v0
.end method

.method public setNeedRect(Z)V
    .locals 0
    .param p1, "needRect"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/camera/effect/FilterInfo;->mIsNeedRect:Z

    .line 100
    return-void
.end method
