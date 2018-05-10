.class public Lcom/android/camera/ui/V9SmartShutterButton;
.super Landroid/widget/ImageView;
.source "V9SmartShutterButton.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V9SmartShutterButton$1;,
        Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;
    }
.end annotation


# static fields
.field private static final DISMISS_DISTANCE_THRESHOLD:I

.field private static final FADEOUT_BOUNDS_THRESHOLD:I

.field private static final MOVE_THRESHOLD:I

.field private static UNUSED_TRIGGER_TIME:I

.field private static sDeviceScreenInches:D


# instance fields
.field private mEnableClick:Z

.field private mFadeout:Landroid/view/animation/Animation;

.field private mFixedShutterCenterX:I

.field private mFixedShutterCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mMoveBounds:Landroid/graphics/Rect;

.field private mOriginX:I

.field private mOriginY:I

.field private mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

.field private mState:I

.field private mVisibleBounds:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/V9SmartShutterButton;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/V9SmartShutterButton;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V9SmartShutterButton;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/V9SmartShutterButton;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->updateVisibleState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    .line 47
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->MOVE_THRESHOLD:I

    .line 48
    const/16 v0, 0x3a98

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    .line 49
    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v7, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    .line 52
    iput-boolean v7, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    .line 54
    new-instance v1, Lcom/android/camera/ui/V9SmartShutterButton$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V9SmartShutterButton$1;-><init>(Lcom/android/camera/ui/V9SmartShutterButton;)V

    iput-object v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 69
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 70
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 69
    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    sub-int/2addr v2, v3

    .line 72
    iget-object v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    sub-int/2addr v3, v4

    .line 73
    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    add-int/2addr v4, v5

    .line 74
    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/android/camera/ui/V9SmartShutterButton;->FADEOUT_BOUNDS_THRESHOLD:I

    add-int/2addr v5, v6

    .line 71
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mMoveBounds:Landroid/graphics/Rect;

    .line 75
    return-void
.end method

.method private getDistanceFromPoint(IIII)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "originX"    # I
    .param p4, "originY"    # I

    .prologue
    .line 166
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 167
    .local v0, "tmpx":I
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 168
    .local v1, "tmpy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private nearCenterOfShutter(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 172
    iget v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 173
    .local v0, "tmpx":I
    iget v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 174
    .local v1, "tmpy":I
    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v0, v3, :cond_0

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v1, v3, :cond_0

    .line 175
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sget v3, Lcom/android/camera/ui/V9SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 174
    :cond_0
    return v2
.end method

.method private needMovableShutter()Z
    .locals 4

    .prologue
    .line 275
    sget-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getScreenInches(Landroid/content/Context;)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    .line 279
    :cond_0
    sget-wide v0, Lcom/android/camera/ui/V9SmartShutterButton;->sDeviceScreenInches:D

    const-wide v2, 0x401399999999999aL    # 4.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    invoke-interface {v0}, Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;->onSmartShutterClick()V

    .line 81
    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;->onSmartShutterFocus(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    .line 255
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    .line 254
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    .local v0, "rec":Landroid/graphics/Rect;
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 257
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    .line 258
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 259
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 264
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4

    .line 265
    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 266
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 271
    :cond_2
    :goto_1
    return-object v0

    .line 260
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 261
    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 262
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 267
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_2

    .line 268
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 269
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private setDisplayPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 249
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setX(F)V

    .line 250
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setY(F)V

    .line 251
    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    const/16 v1, 0x8

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 242
    .local v0, "viewGroup":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_1

    .line 243
    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V9SmartShutterButton;->setVisibility(I)V

    .line 246
    return-void
.end method

.method private updateVisibleState()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 194
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->clearAnimation()V

    .line 198
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    .line 200
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public canProvide()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iget v1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->isEnableClick()Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    return v8

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 99
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 100
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 102
    .local v3, "y":I
    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_1
    :goto_0
    return v9

    .line 105
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/V9SmartShutterButton;->setPressed(Z)V

    .line 106
    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v6, v5

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-static {v4, v5, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mInShutterButton:Z

    .line 108
    iget-boolean v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mInShutterButton:Z

    if-eqz v4, :cond_2

    .line 109
    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_2

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setSmartShutterPosition(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->onClick()V

    .line 115
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V9SmartShutterButton;->onFocused(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->updateVisibleState()V

    goto :goto_0

    .line 121
    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_3

    .line 122
    sget v4, Lcom/android/camera/ui/V9SmartShutterButton;->MOVE_THRESHOLD:I

    iget v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginX:I

    iget v6, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginY:I

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/android/camera/ui/V9SmartShutterButton;->getDistanceFromPoint(IIII)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 123
    iput v9, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    .line 131
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V9SmartShutterButton;->nearCenterOfShutter(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    .line 133
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 135
    iget v6, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 134
    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v1, "rect":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setDisplayPosition(II)V

    goto/16 :goto_0

    .line 137
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    .line 138
    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mMoveBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/ui/V9SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 139
    .restart local v1    # "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    iget v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    if-ne v4, v9, :cond_6

    .line 144
    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 146
    :cond_6
    iput v8, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    goto :goto_1

    .line 153
    .end local v1    # "rect":Landroid/graphics/Rect;
    :pswitch_2
    iput v2, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginX:I

    .line 154
    iput v3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mOriginY:I

    .line 155
    iput v8, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mState:I

    .line 156
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/V9SmartShutterButton;->setPressed(Z)V

    .line 157
    invoke-direct {p0, v9}, Lcom/android/camera/ui/V9SmartShutterButton;->onFocused(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flyin(IIII)V
    .locals 9
    .param p1, "endx"    # I
    .param p2, "endy"    # I
    .param p3, "centerX"    # I
    .param p4, "centerY"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 207
    iput p3, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterX:I

    .line 208
    iput p4, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFixedShutterCenterY:I

    .line 209
    invoke-direct {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->needMovableShutter()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->isShown()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    .line 211
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    .line 212
    const v5, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->setAlpha(F)V

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    invoke-direct {p0, v5, v6}, Lcom/android/camera/ui/V9SmartShutterButton;->setDisplayPosition(II)V

    .line 215
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSmartShutterPosition()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "position":Ljava/lang/String;
    const/4 v3, -0x1

    .line 217
    .local v3, "x":I
    const/4 v4, -0x1

    .line 218
    .local v4, "y":I
    if-eqz v1, :cond_1

    .line 219
    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 220
    .local v0, "index":I
    if-eq v0, v7, :cond_1

    .line 221
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 222
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 225
    .end local v0    # "index":I
    :cond_1
    if-ne v3, v7, :cond_2

    if-ne v4, v7, :cond_2

    .line 226
    move v3, p1

    .line 227
    move v4, p2

    .line 230
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V9SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 231
    .local v2, "rec":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/ui/V9SmartShutterButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 234
    iput v8, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    .line 235
    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v5, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v6, Lcom/android/camera/ui/V9SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    .end local v1    # "position":Ljava/lang/String;
    .end local v2    # "rec":Landroid/graphics/Rect;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    return-void
.end method

.method public isEnableClick()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0
    .param p1, "arrivedType"    # I

    .prologue
    .line 323
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0
    .param p1, "dataChangeType"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 318
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setRelateVisible(I)V

    .line 287
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mVisibleState:I

    .line 288
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .param p1, "newMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .param p2, "degree"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "pendingRotateItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mEnableClick:Z

    .line 308
    return-void
.end method

.method public setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V
    .locals 0
    .param p1, "smartShutterListener"    # Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/V9SmartShutterButton;->mSmartShutterListener:Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;

    .line 91
    return-void
.end method
