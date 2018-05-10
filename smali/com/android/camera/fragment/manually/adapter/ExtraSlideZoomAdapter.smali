.class public Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ExtraSlideZoomAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;


# static fields
.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I

.field private static sX:[F

.field private static sY:[F


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mEnable:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field private mEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomMax:I

.field private mZoomRatioMax:I

.field private mZoomRatioMin:I

.field private mZoomRatioTele:I

.field private mZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mZoomRatioWide:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    .line 56
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextDefaultColorState:[I

    .line 138
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sX:[F

    .line 139
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sY:[F

    .line 32
    return-void

    .line 138
    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41a00000    # 20.0f
        0x41c80000    # 25.0f
        0x41d80000    # 27.0f
        0x41e80000    # 29.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x420c0000    # 35.0f
    .end array-data

    .line 139
    :array_1
    .array-data 4
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x435c0000    # 220.0f
        0x43b90000    # 370.0f
        0x43ff0000    # 510.0f
        0x44110000    # 580.0f
        0x44250000    # 660.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentData"    # Lcom/android/camera/data/data/ComponentData;
    .param p3, "currentMode"    # I
    .param p4, "manuallyListener"    # Lcom/android/camera/fragment/manually/ManuallyListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    .line 42
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMin:I

    .line 76
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 77
    move/from16 v0, p3

    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    .line 78
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    .line 80
    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    move-object/from16 v1, p1

    .line 82
    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/BaseModule;

    .line 83
    .local v11, "module":Lcom/android/camera/module/BaseModule;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioWide:I

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    .line 85
    invoke-virtual {v11}, Lcom/android/camera/module/BaseModule;->getZoomMax()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomMax:I

    .line 86
    invoke-virtual {v11}, Lcom/android/camera/module/BaseModule;->getZoomMaxRatio()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    .line 88
    sget-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sX:[F

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->convertSplineXToEntryX([F)[F

    move-result-object v12

    .line 89
    .local v12, "x":[F
    sget-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sY:[F

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->convertSplineYToZoomRatioY([F)[F

    move-result-object v13

    .line 90
    .local v13, "y":[F
    invoke-static {v12, v13}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    .line 91
    invoke-static {v13, v12}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    .line 93
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->initStyle(Landroid/content/Context;)V

    .line 96
    const/4 v1, 0x3

    new-array v9, v1, [Ljava/lang/CharSequence;

    .line 97
    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioWide:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 98
    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    .line 99
    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v9, v2

    .line 101
    .local v9, "entries":[Ljava/lang/CharSequence;
    iput-object v9, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 102
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Landroid/text/StaticLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    .line 103
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v10, v1, :cond_0

    .line 104
    iget-object v14, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    .line 105
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 104
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v1, v14, v10

    .line 103
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method private convertSplineXToEntryX([F)[F
    .locals 6
    .param p1, "splineX"    # [F

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 111
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    sub-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 112
    .local v0, "SPLINE_ENTRY_COUNT_2X_TO_10X":I
    array-length v3, p1

    new-array v1, v3, [F

    .line 113
    .local v1, "entryX":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 114
    aget v3, p1, v2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 115
    aget v3, p1, v2

    aput v3, v1, v2

    .line 113
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    aget v3, p1, v2

    sub-float/2addr v3, v5

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 118
    const/high16 v4, 0x42140000    # 37.0f

    .line 117
    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    aput v3, v1, v2

    goto :goto_1

    .line 121
    :cond_1
    return-object v1
.end method

.method private convertSplineYToZoomRatioY([F)[F
    .locals 6
    .param p1, "splineY"    # [F

    .prologue
    .line 125
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    float-to-int v0, v3

    .line 126
    .local v0, "SPLINE_ZOOM_MAX":I
    array-length v3, p1

    new-array v2, v3, [F

    .line 127
    .local v2, "zoomRatioY":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 128
    aget v3, p1, v1

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 129
    aget v3, p1, v1

    aput v3, v2, v1

    .line 127
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    aget v3, p1, v1

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 132
    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    iget v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 131
    mul-float/2addr v3, v4

    .line 132
    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v4, v4

    .line 131
    add-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_1

    .line 135
    :cond_1
    return-object v2
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "sectionIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v2

    .line 190
    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 193
    .local v0, "height":F
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 194
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 197
    return-void
.end method

.method private getDisplayedZoomRatio(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "ratio"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v3, 0x21

    .line 171
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 172
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 174
    const-string/jumbo v1, "X"

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 175
    return-object v0
.end method

.method private indexToSection(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    return v0

    .line 181
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 182
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_1
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_2

    .line 184
    const/4 v0, 0x2

    return v0

    .line 186
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 144
    const v3, 0x1010095

    const v4, 0x1010098

    filled-new-array {v3, v4}, [I

    move-result-object v2

    .line 145
    .local v2, "textAttrs":[I
    const v3, 0x7f11001f

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 146
    .local v1, "style":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    .line 147
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "resources":Landroid/content/res/Resources;
    const v3, 0x7f090028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    .line 152
    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    .line 153
    const v3, 0x7f09002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineLineGap:I

    .line 154
    const v3, 0x7f09002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineTextGap:I

    .line 155
    const v3, 0x7f0d0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineColorDefault:I

    .line 157
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 163
    new-instance v3, Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 165
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f11002e

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 166
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f11002f

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 167
    return-void
.end method

.method private mapPositionToZoomRatio(F)I
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 201
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p3, :cond_2

    .line 203
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    .line 202
    :goto_0
    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 206
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->indexToSection(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->drawText(ILandroid/graphics/Canvas;)V

    .line 213
    :goto_1
    return-void

    .line 201
    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 208
    :goto_2
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    neg-float v2, v0

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 204
    :cond_2
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextDefaultColorState:[I

    goto :goto_0

    .line 210
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineColorDefault:I

    goto :goto_2
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 235
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x30

    return v0
.end method

.method public mapZoomRatioToPosition(I)F
    .locals 2
    .param p1, "zoomRatio"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public measureGap(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 226
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineTextGap:I

    int-to-float v0, v0

    return v0

    .line 226
    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    .line 229
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineLineGap:I

    int-to-float v0, v0

    return v0
.end method

.method public measureWidth(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 217
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->indexToSection(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    return v0

    .line 217
    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    .line 220
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V
    .locals 7
    .param p1, "view"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p2, "positionRatio"    # F

    .prologue
    .line 245
    iget-boolean v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEnable:Z

    if-nez v3, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v1, p2, v3

    .line 249
    .local v1, "position":F
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mapPositionToZoomRatio(F)I

    move-result v2

    .line 250
    .local v2, "zoomValue":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "newValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    :cond_1
    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    .line 260
    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEnable:Z

    .line 272
    return-void
.end method
