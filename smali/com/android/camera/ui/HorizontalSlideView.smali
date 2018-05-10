.class public Lcom/android/camera/ui/HorizontalSlideView;
.super Landroid/view/View;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalSlideView$1;,
        Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;,
        Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;
    }
.end annotation


# instance fields
.field private mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsScrollingPerformed:Z

.field private mJustifyEnabled:Z

.field private mMaxX:I

.field private mMinX:I

.field private mNeedJustify:Z

.field private mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

.field private mOriginX:F

.field private mPositionX:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemIndex:I

.field private mSelectionFromSelf:Z

.field private mTouchDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalSlideView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "velocityX"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "distance"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p1, "positionX"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 26
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 27
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 34
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 26
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 27
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 34
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 26
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 27
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 34
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private calculateLength(II)F
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, "fromPosition":F
    const/4 v14, 0x0

    .line 104
    .local v14, "toPosition":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 105
    .local v13, "startX":F
    const/4 v4, 0x0

    .line 106
    .local v4, "drawLeftX":F
    move v3, v13

    .line 108
    .local v3, "drawCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v11

    .line 110
    .local v11, "rtl":Z
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v16

    add-int/lit8 v12, v16, -0x1

    .line 111
    .local v12, "startIndex":I
    :goto_0
    if-eqz v11, :cond_3

    const/4 v5, 0x0

    .line 112
    .local v5, "endIndex":I
    :goto_1
    if-eqz v11, :cond_4

    const/4 v2, -0x1

    .line 113
    .local v2, "direction":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_a

    .line 114
    mul-int v16, v8, v2

    add-int v1, v12, v16

    .line 115
    .local v1, "childIndex":I
    if-ne v1, v12, :cond_5

    const/4 v9, 0x1

    .line 116
    .local v9, "isFirst":Z
    :goto_4
    if-ne v1, v5, :cond_6

    const/4 v10, 0x1

    .line 117
    .local v10, "isLast":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v15

    .line 118
    .local v15, "width":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v15, v16

    .line 120
    .local v7, "halfWidth":F
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v16, v0

    sub-float v4, v16, v7

    .line 121
    :cond_0
    if-eqz v9, :cond_7

    move v3, v13

    .line 123
    :goto_6
    if-eqz v10, :cond_8

    const/16 v16, 0x0

    :goto_7
    add-float v4, v4, v16

    .line 125
    move/from16 v0, p1

    if-ne v1, v0, :cond_9

    .line 126
    move v6, v3

    .line 113
    :cond_1
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 110
    .end local v1    # "childIndex":I
    .end local v2    # "direction":I
    .end local v5    # "endIndex":I
    .end local v7    # "halfWidth":F
    .end local v8    # "i":I
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v12    # "startIndex":I
    .end local v15    # "width":F
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "startIndex":I
    goto :goto_0

    .line 111
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    .restart local v5    # "endIndex":I
    goto :goto_1

    .line 112
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "direction":I
    goto :goto_2

    .line 115
    .restart local v1    # "childIndex":I
    .restart local v8    # "i":I
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isFirst":Z
    goto :goto_4

    .line 116
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "isLast":Z
    goto :goto_5

    .line 121
    .restart local v7    # "halfWidth":F
    .restart local v15    # "width":F
    :cond_7
    add-float v3, v4, v7

    goto :goto_6

    .line 123
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v16

    add-float v16, v16, v15

    goto :goto_7

    .line 127
    :cond_9
    move/from16 v0, p2

    if-ne v1, v0, :cond_1

    .line 128
    move v14, v3

    goto :goto_8

    .line 133
    .end local v1    # "childIndex":I
    .end local v2    # "direction":I
    .end local v5    # "endIndex":I
    .end local v7    # "halfWidth":F
    .end local v8    # "i":I
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v11    # "rtl":Z
    .end local v12    # "startIndex":I
    .end local v15    # "width":F
    :cond_a
    sub-float v16, v14, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    return v16
.end method

.method private flingX(I)V
    .locals 9
    .param p1, "velocityX"    # I

    .prologue
    const/4 v2, 0x0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 244
    return-void
.end method

.method private getItemGap(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureGap(I)F

    move-result v0

    return v0
.end method

.method private getItemWidth(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    return v0
.end method

.method private scroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 247
    if-eqz p1, :cond_1

    .line 248
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_2

    .line 249
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    .line 253
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 255
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 257
    :cond_1
    return-void

    .line 250
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    goto :goto_0
.end method

.method private select(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectionFromSelf:Z

    .line 195
    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->isScrolling()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    invoke-interface {v1, p0, v2}, Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;->onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    if-eqz v1, :cond_3

    .line 202
    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 203
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    .end local v0    # "ratio":F
    :cond_2
    invoke-interface {v1, p0, v0}, Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;->onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V

    .line 205
    :cond_3
    return-void
.end method

.method private setPositionX(I)V
    .locals 2
    .param p1, "positionX"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 232
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_1

    .line 233
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 238
    return-void

    .line 234
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    .line 235
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 71
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    .line 72
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->getCurrX()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 273
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_1

    .line 274
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mIsScrollingPerformed:Z

    .line 277
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v20, v22, v23

    .line 278
    .local v20, "startX":F
    const/4 v8, 0x0

    .line 279
    .local v8, "drawLeftX":F
    move/from16 v6, v20

    .line 280
    .local v6, "drawCenterX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v7, v22, v23

    .line 281
    .local v7, "drawCenterY":F
    const/16 v16, 0x1

    .line 282
    .local v16, "nearestUnFound":Z
    const/4 v15, 0x0

    .line 284
    .local v15, "nearestDistance":F
    const/4 v14, 0x0

    .local v14, "leftHalfMargin":F
    const/16 v17, 0x0

    .line 285
    .local v17, "rightHalfMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v18

    .line 287
    .local v18, "rtl":Z
    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    add-int/lit8 v19, v22, -0x1

    .line 288
    .local v19, "startIndex":I
    :goto_0
    if-eqz v18, :cond_5

    const/4 v9, 0x0

    .line 289
    .local v9, "endIndex":I
    :goto_1
    if-eqz v18, :cond_6

    const/4 v4, -0x1

    .line 290
    .local v4, "direction":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 291
    mul-int v22, v11, v4

    add-int v3, v19, v22

    .line 292
    .local v3, "childIndex":I
    move/from16 v0, v19

    if-ne v3, v0, :cond_7

    const/4 v12, 0x1

    .line 293
    .local v12, "isFirst":Z
    :goto_4
    if-ne v3, v9, :cond_8

    const/4 v13, 0x1

    .line 294
    .local v13, "isLast":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v21

    .line 295
    .local v21, "width":F
    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    .line 296
    .local v10, "halfWidth":F
    if-eqz v12, :cond_9

    const/4 v14, 0x0

    .line 297
    :goto_6
    if-eqz v13, :cond_a

    const/16 v17, 0x0

    .line 299
    :goto_7
    if-eqz v12, :cond_2

    sub-float v8, v20, v10

    .line 300
    :cond_2
    if-eqz v12, :cond_b

    move/from16 v6, v20

    .line 302
    :goto_8
    if-eqz v16, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v22, v0

    sub-float v5, v6, v22

    .line 304
    .local v5, "distance":F
    const/16 v22, 0x0

    cmpg-float v22, v5, v22

    if-gtz v22, :cond_c

    neg-float v0, v5

    move/from16 v22, v0

    add-float v23, v10, v17

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_c

    .line 306
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 307
    const/16 v16, 0x0

    .line 308
    move v15, v5

    .line 312
    .end local v5    # "distance":F
    :cond_3
    if-eqz v13, :cond_d

    const/16 v22, 0x0

    :goto_a
    add-float v8, v8, v22

    .line 290
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 287
    .end local v3    # "childIndex":I
    .end local v4    # "direction":I
    .end local v9    # "endIndex":I
    .end local v10    # "halfWidth":F
    .end local v11    # "i":I
    .end local v12    # "isFirst":Z
    .end local v13    # "isLast":Z
    .end local v19    # "startIndex":I
    .end local v21    # "width":F
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "startIndex":I
    goto :goto_0

    .line 288
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    add-int/lit8 v9, v22, -0x1

    .restart local v9    # "endIndex":I
    goto :goto_1

    .line 289
    :cond_6
    const/4 v4, 0x1

    .restart local v4    # "direction":I
    goto :goto_2

    .line 292
    .restart local v3    # "childIndex":I
    .restart local v11    # "i":I
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "isFirst":Z
    goto :goto_4

    .line 293
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "isLast":Z
    goto :goto_5

    .line 296
    .restart local v10    # "halfWidth":F
    .restart local v21    # "width":F
    :cond_9
    move/from16 v14, v17

    goto :goto_6

    .line 297
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v22

    const/high16 v23, 0x40000000    # 2.0f

    div-float v17, v22, v23

    goto :goto_7

    .line 300
    :cond_b
    add-float v6, v8, v10

    goto :goto_8

    .line 305
    .restart local v5    # "distance":F
    :cond_c
    const/16 v22, 0x0

    cmpl-float v22, v5, v22

    if-lez v22, :cond_3

    add-float v22, v10, v14

    cmpg-float v22, v5, v22

    if-gtz v22, :cond_3

    goto :goto_9

    .line 312
    .end local v5    # "distance":F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v22

    add-float v22, v22, v21

    goto :goto_a

    .line 315
    .end local v3    # "childIndex":I
    .end local v10    # "halfWidth":F
    .end local v12    # "isFirst":Z
    .end local v13    # "isLast":Z
    .end local v21    # "width":F
    :cond_e
    sub-float v22, v6, v20

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 317
    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_18

    .line 318
    mul-int v22, v11, v4

    add-int v3, v19, v22

    .line 319
    .restart local v3    # "childIndex":I
    move/from16 v0, v19

    if-ne v3, v0, :cond_11

    const/4 v12, 0x1

    .line 320
    .restart local v12    # "isFirst":Z
    :goto_c
    if-ne v3, v9, :cond_12

    const/4 v13, 0x1

    .line 321
    .restart local v13    # "isLast":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v21

    .line 322
    .restart local v21    # "width":F
    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    .line 324
    .restart local v10    # "halfWidth":F
    if-eqz v12, :cond_f

    sub-float v8, v20, v10

    .line 325
    :cond_f
    if-eqz v12, :cond_13

    move/from16 v6, v20

    .line 327
    :goto_e
    add-float v22, v8, v21

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v8, v22

    if-gtz v22, :cond_10

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v22

    sget-object v23, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 330
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v3, :cond_16

    const/16 v22, 0x1

    :goto_10
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;Z)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 340
    :cond_10
    if-eqz v13, :cond_17

    const/16 v22, 0x0

    :goto_11
    add-float v8, v8, v22

    .line 317
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 319
    .end local v10    # "halfWidth":F
    .end local v12    # "isFirst":Z
    .end local v13    # "isLast":Z
    .end local v21    # "width":F
    :cond_11
    const/4 v12, 0x0

    .restart local v12    # "isFirst":Z
    goto :goto_c

    .line 320
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "isLast":Z
    goto :goto_d

    .line 325
    .restart local v10    # "halfWidth":F
    .restart local v21    # "width":F
    :cond_13
    add-float v6, v8, v10

    goto :goto_e

    .line 331
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v22

    sget-object v23, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 332
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f

    .line 334
    :cond_15
    add-float v22, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f

    .line 336
    :cond_16
    const/16 v22, 0x0

    goto :goto_10

    .line 340
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v22

    add-float v22, v22, v21

    goto :goto_11

    .line 344
    .end local v3    # "childIndex":I
    .end local v4    # "direction":I
    .end local v9    # "endIndex":I
    .end local v10    # "halfWidth":F
    .end local v11    # "i":I
    .end local v12    # "isFirst":Z
    .end local v13    # "isLast":Z
    .end local v18    # "rtl":Z
    .end local v19    # "startIndex":I
    .end local v21    # "width":F
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 345
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 346
    float-to-int v0, v15

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    .line 348
    :cond_19
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 210
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 216
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return v0

    .line 218
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    goto :goto_0

    .line 222
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mTouchDown:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    .prologue
    const/4 v2, 0x0

    .line 137
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    .line 138
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 139
    iput v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 152
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method

.method public setJustifyEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mJustifyEnabled:Z

    .line 99
    return-void
.end method

.method public setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .line 91
    return-void
.end method

.method public setOnPositionSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnPositionSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;

    .line 95
    return-void
.end method

.method public setSelection(F)V
    .locals 2
    .param p1, "positionRatio"    # F

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 185
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 187
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 155
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v0, p1, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 173
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 175
    return-void

    .line 169
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/HorizontalSlideView;->calculateLength(II)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method
