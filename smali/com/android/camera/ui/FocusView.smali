.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$1;,
        Lcom/android/camera/ui/FocusView$2;,
        Lcom/android/camera/ui/FocusView$CenterFlag;,
        Lcom/android/camera/ui/FocusView$CursorState;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;,
        Lcom/android/camera/ui/FocusView$ViewState;
    }
.end annotation


# static fields
.field private static final GAP_NUM:F

.field public static final MAX_SLIDE_DISTANCE:I

.field private static final TRIANGLE_BASE_DIS:I


# instance fields
.field private final MIN_DRAG_DISTANCE:I

.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBeingDragged:Z

.field private mBeingEvAdjusted:Z

.field private mBottomRelative:I

.field private mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field private mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentMode:I

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDragMode:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field private mEVCaptureRatio:F

.field private mEvValue:F

.field private mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mExposureX:I

.field private mExposureY:I

.field private mFailTime:J

.field private mFocusMoving:Z

.field private mFocusX:I

.field private mFocusY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsEvAdjustable:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mMode:I

.field private mOrientation:I

.field private mRotation:F

.field private mScrollDistanceY:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/FocusView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/ui/FocusView;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/ui/FocusView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lcom/android/camera/aosp_porting/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    .line 102
    const v0, 0x42dc999a    # 110.3f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    .line 103
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 124
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 136
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 188
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 226
    new-instance v2, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 1119
    new-instance v2, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v2, p1

    .line 362
    check-cast v2, Lcom/android/camera/Camera;

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 364
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 366
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 367
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 368
    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 369
    .local v0, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 370
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 371
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 375
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 376
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 377
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 378
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 379
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 380
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 381
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 383
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 384
    .local v1, "slop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    .line 385
    return-void
.end method

.method private calculateAttribute()V
    .locals 11

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 1287
    const/4 v3, 0x0

    .line 1288
    .local v3, "ratio":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    .line 1289
    .local v0, "currentItemRatio":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v2

    .line 1290
    .local v2, "lastItemRatio":F
    const/4 v1, 0x0

    .line 1292
    .local v1, "exposureFlag":I
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v4, :pswitch_data_0

    .line 1349
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    .line 1351
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    .line 1354
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    .line 1355
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    .line 1356
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    .line 1357
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    .line 1360
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    .line 1361
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    .line 1363
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 1364
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 1365
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    if-eqz v1, :cond_5

    .end local v1    # "exposureFlag":I
    :goto_1
    iput v1, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1369
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1370
    return-void

    .line 1294
    .restart local v1    # "exposureFlag":I
    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 1295
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v3, v6, v4

    .line 1296
    sub-float v4, v7, v2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    mul-float/2addr v4, v6

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1297
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3f69fbe7    # 0.914f

    mul-float/2addr v5, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 1298
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v3

    const v6, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 1299
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1301
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v4, v8

    mul-float v3, v6, v4

    .line 1302
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 1303
    mul-float v4, v0, v3

    sub-float v5, v7, v3

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 1304
    mul-float v4, v0, v3

    sub-float v5, v7, v3

    sub-float/2addr v4, v5

    mul-float/2addr v4, v10

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1305
    sub-float v4, v7, v3

    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    mul-float v5, v6, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1306
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1310
    :pswitch_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_2

    .line 1311
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v3, v6, v4

    .line 1312
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 1313
    sub-float v4, v7, v3

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 1314
    sub-float v4, v7, v3

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, v10

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1315
    mul-float v4, v10, v3

    add-float/2addr v4, v9

    mul-float v5, v6, v2

    sub-float v6, v7, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1316
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1318
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v4, v8

    mul-float v3, v6, v4

    .line 1319
    sub-float v4, v7, v0

    mul-float/2addr v4, v3

    mul-float/2addr v4, v6

    const/high16 v5, 0x41000000    # 8.0f

    sub-float v4, v5, v4

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1320
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    sub-float v5, v7, v3

    const v6, 0x3f69fbe7    # 0.914f

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 1321
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    sub-float v5, v7, v3

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    const v6, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 1322
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1326
    :pswitch_3
    move v3, v0

    .line 1327
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1328
    mul-float v4, v6, v0

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1329
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 1330
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 1331
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1333
    :cond_3
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 1334
    mul-float v4, v6, v0

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 1335
    mul-float v4, v10, v0

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1336
    mul-float v4, v6, v0

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1337
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1341
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1342
    const/4 v4, 0x2

    .line 1341
    :goto_3
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 1342
    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    .line 1365
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1

    .line 1367
    :cond_6
    if-eqz v1, :cond_7

    .end local v1    # "exposureFlag":I
    :goto_4
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_2

    .restart local v1    # "exposureFlag":I
    :cond_7
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_4

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1029
    return-void
.end method

.method private getCurrentAngle()I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v5, 0x168

    const/4 v4, 0x0

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, "degree":I
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_2

    .line 1375
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 1376
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1377
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    div-int v0, v2, v3

    .line 1379
    :cond_0
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    .line 1394
    :cond_1
    :goto_0
    return v0

    .line 1380
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1381
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    .line 1382
    .local v1, "relativeDis":I
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    .line 1383
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    .line 1384
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    .line 1386
    :cond_3
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    goto :goto_0

    .line 1387
    .end local v1    # "relativeDis":I
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_5

    .line 1388
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 1389
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0

    .line 1390
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1391
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 1392
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method private getItemByCoordinate()I
    .locals 4

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    .line 1068
    .local v0, "item":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 1069
    return v0
.end method

.method private getItemRatio(I)F
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1281
    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1282
    .local v0, "itemRatio":F
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    .line 1283
    :goto_0
    return v0

    .line 1282
    :cond_0
    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v1, v0, v3

    .line 460
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 461
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_9

    .line 462
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v11, :cond_3

    .line 463
    :cond_0
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 480
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_8

    .line 481
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 482
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    .line 527
    :cond_2
    :goto_1
    return v12

    .line 464
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v9, :cond_5

    .line 465
    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v0, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 468
    :cond_4
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 470
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v10, :cond_1

    .line 471
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v4, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 472
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 473
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    goto :goto_0

    .line 474
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v4, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 477
    :cond_7
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 483
    :cond_8
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_2

    .line 484
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 485
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto :goto_1

    .line 487
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 488
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float v6, v1, v0

    .line 489
    .local v6, "centerX":F
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float v7, v2, v0

    .line 490
    .local v7, "centerY":F
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez v0, :cond_c

    .line 491
    const/4 v8, 0x0

    .line 492
    .local v8, "diff":F
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_b

    .line 493
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    .line 497
    :cond_a
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_c

    .line 498
    return v12

    .line 494
    :cond_b
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_a

    .line 495
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    goto :goto_2

    .line 501
    .end local v8    # "diff":F
    :cond_c
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v9, :cond_d

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-eq v0, v9, :cond_d

    .line 502
    invoke-direct {p0, v10}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 503
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackSplitMode()V

    .line 505
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 506
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 505
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 507
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 508
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 507
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 509
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_10

    .line 510
    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 511
    float-to-int v0, v6

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    .line 512
    float-to-int v0, v7

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    .line 513
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez v0, :cond_e

    .line 514
    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 516
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 524
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 525
    return v9

    .line 517
    :cond_10
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_f

    .line 518
    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 519
    float-to-int v0, v6

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    .line 520
    float-to-int v0, v7

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    .line 521
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 522
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    goto :goto_3
.end method

.method private isInCircle(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 1398
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 1399
    .local v2, "dx":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 1400
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1401
    .local v0, "distance":D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInCircle(FFFFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "r"    # F

    .prologue
    .line 1405
    sub-float v2, p1, p3

    .line 1406
    .local v2, "dx":F
    sub-float v3, p2, p4

    .line 1407
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1408
    .local v0, "distance":D
    float-to-double v4, p5

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isStableStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1005
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    .line 1006
    return v1

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    .line 1009
    return v1

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    return v0
.end method

.method private processParameterIfNeeded(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 599
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 600
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 604
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 1033
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1034
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 1035
    .local v0, "index":I
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1036
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 1038
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method private reset(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 798
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    .line 799
    return-void

    .line 802
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 803
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 804
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 805
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 806
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 808
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 811
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 812
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 813
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 814
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 815
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 816
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 818
    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 819
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 820
    return-void
.end method

.method private resetCenter()V
    .locals 2

    .prologue
    .line 823
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 826
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_0

    .line 827
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 831
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 832
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 838
    :cond_2
    return-void
.end method

.method private resetEvValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1057
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 1059
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1060
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    .line 1061
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 1062
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    .line 1063
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->reset()V

    .line 1064
    return-void
.end method

.method private setCenter(II)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 959
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 960
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 961
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 967
    :cond_1
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 1086
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v1, :cond_1

    .line 1087
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1088
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 1099
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    .line 1100
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    if-eqz v0, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    .line 1104
    .end local v0    # "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 1106
    :cond_1
    return-void
.end method

.method private setDraw(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    .line 1044
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 1045
    return-void
.end method

.method private setMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 402
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "manual"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 404
    :cond_0
    const/4 p1, 0x3

    .line 412
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v1, :cond_2

    if-ne p1, v5, :cond_2

    .line 413
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 416
    :cond_2
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    .line 417
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-nez v0, :cond_5

    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 440
    :cond_3
    :goto_1
    return-void

    .line 407
    :cond_4
    if-ne p1, v5, :cond_1

    .line 408
    const/4 p1, 0x1

    goto :goto_0

    .line 421
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v2, :cond_6

    .line 422
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    goto :goto_1

    .line 425
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v5, :cond_3

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v3, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 432
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v5, :cond_9

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_1

    :cond_8
    move v0, v2

    .line 430
    goto :goto_2

    .line 435
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    if-ne v0, v1, :cond_3

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v2, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_1
.end method

.method private setTouchDown()V
    .locals 2

    .prologue
    .line 1053
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    .line 1054
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 1275
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1278
    return-void
.end method

.method private stopEvAdjust()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1109
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v1, :cond_0

    .line 1110
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    .line 1112
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    .line 1113
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    if-eqz v0, :cond_0

    .line 1114
    const/4 v1, 0x2

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    .line 1117
    .end local v0    # "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    :cond_0
    return-void
.end method

.method private trackEvAdjusted()V
    .locals 3

    .prologue
    .line 584
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 585
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "\u524d\u540e\u6444"

    .line 586
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    const-string/jumbo v1, "\u524d\u6444"

    .line 585
    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v1, "\u6a21\u5f0f"

    .line 589
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "ev_adjusted"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 591
    return-void

    .line 587
    :cond_0
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackSplitMode()V
    .locals 2

    .prologue
    .line 594
    const-string/jumbo v0, "counter"

    const-string/jumbo v1, "manual_split_mode"

    invoke-static {v0, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method private updateEV()V
    .locals 3

    .prologue
    .line 921
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 922
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0
.end method

.method private updateExposureArea()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    .line 445
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;
    if-eqz v0, :cond_0

    .line 446
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onMeteringAreaChanged(II)V

    .line 448
    :cond_0
    return-void
.end method

.method private updateFocusArea()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    .line 453
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;
    if-eqz v0, :cond_0

    .line 454
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onFocusAreaChanged(II)V

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 789
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "clear..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    .line 791
    return-void
.end method

.method public clear(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    .line 795
    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1
    .param p1, "exposureViewListener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 394
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    .line 395
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 390
    return-void
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    return v0
.end method

.method public isEvAdjusted()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEvAdjustedTime()Z
    .locals 6

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    .line 946
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x5dc

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 945
    :goto_0
    return v0

    .line 946
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualSplitMode()Z
    .locals 2

    .prologue
    .line 955
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1413
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1414
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 1416
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1421
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 862
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    .line 863
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v3, :cond_2

    .line 876
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 878
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 879
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 880
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 883
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v3, :cond_5

    .line 889
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 890
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 891
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 892
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 893
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 895
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 896
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 897
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 918
    :cond_5
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 842
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 843
    if-eqz p1, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 846
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 847
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 848
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 850
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 851
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    .line 852
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 850
    invoke-virtual {v3, v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    .line 853
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 854
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 855
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 853
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    .line 858
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 851
    goto :goto_0

    :cond_2
    move v1, v2

    .line 854
    goto :goto_1
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 531
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-eq v2, v7, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v2

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 532
    :cond_0
    return v6

    :cond_1
    move v2, v3

    .line 531
    goto :goto_0

    .line 536
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xa1

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 537
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v5, v2, :cond_3

    .line 539
    return v6

    .line 542
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 544
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 545
    .local v1, "oldDown":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 546
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_4

    .line 547
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 552
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v3, v2, :cond_5

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v5, v2, :cond_9

    .line 556
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v2, :cond_6

    .line 557
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackEvAdjusted()V

    .line 558
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 561
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 564
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v2, :cond_7

    .line 565
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    .line 567
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v2, v7, :cond_8

    .line 568
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    .line 569
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 571
    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 572
    iput v6, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 574
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v2, :cond_9

    .line 575
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 580
    :cond_9
    if-nez v1, :cond_a

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_a
    return v3
.end method

.method public reInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 620
    const-string/jumbo v5, "FocusView"

    const-string/jumbo v6, "onCameraOpen>> reInit"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 622
    .local v4, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v4, :cond_0

    .line 623
    return-void

    .line 626
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 627
    .local v3, "min":I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 628
    .local v2, "max":I
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    .line 629
    :cond_1
    return-void

    .line 632
    :cond_2
    new-instance v6, Lcom/android/camera/ui/FloatSlideAdapter;

    .line 633
    sget v5, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 632
    :goto_0
    invoke-direct {v6, v3, v2, v5}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v6, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 634
    const-string/jumbo v5, "FocusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraOpen: adapter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v5, :cond_4

    .line 636
    return-void

    .line 633
    :cond_3
    sub-int v5, v2, v3

    int-to-float v5, v5

    sget v7, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v5, v7

    goto :goto_0

    .line 639
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 641
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    .line 642
    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    packed-switch v5, :pswitch_data_0

    .line 644
    invoke-direct {p0, v8}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 653
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    .line 655
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    .line 656
    .local v0, "evValue":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    .line 657
    .local v1, "index":I
    if-gez v1, :cond_5

    .line 658
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 662
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 663
    return-void

    .line 648
    .end local v0    # "evValue":I
    .end local v1    # "index":I
    :pswitch_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    goto :goto_1

    .line 660
    .restart local v0    # "evValue":I
    .restart local v1    # "index":I
    :cond_5
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_2

    .line 642
    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
    .end packed-switch
.end method

.method public releaseListener()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 399
    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/16 v1, 0x8

    .line 930
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    .line 931
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 932
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    .line 933
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 934
    if-nez p1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 938
    return-void

    :cond_1
    move v0, v1

    .line 933
    goto :goto_0
.end method

.method public setFocusType(Z)V
    .locals 0
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    .line 705
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 683
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 684
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    .line 685
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    .line 686
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setOrientation(I)V

    .line 687
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 691
    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 970
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 973
    int-to-float v3, p2

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView;->setPivotX(F)V

    .line 974
    int-to-float v3, p3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView;->setPivotY(F)V

    .line 975
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v3, v1, :cond_0

    .line 976
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 978
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 979
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 980
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 981
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    iput v1, v3, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 982
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 984
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 985
    packed-switch p1, :pswitch_data_0

    .line 999
    :cond_1
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v1, :cond_2

    .line 1000
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 1002
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 981
    goto :goto_0

    .line 990
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    .line 991
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    if-eqz v0, :cond_1

    .line 992
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->resetEvValue()V

    goto :goto_1

    .line 985
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 695
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 696
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    .line 697
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 701
    :cond_0
    return-void
.end method

.method public showFail()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 775
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    .line 776
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showFail..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v0, v2, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 779
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 780
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 782
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 783
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 785
    :cond_0
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 718
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showStart..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 720
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 721
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 724
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    .line 729
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 731
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 740
    return-void

    .line 733
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 737
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 748
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showSuccess..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v0, v4, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 752
    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 753
    iput v5, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 755
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    .line 761
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 766
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    .line 771
    :goto_0
    return-void

    .line 768
    :cond_2
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 769
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    goto :goto_0
.end method

.method public updateFocusMode()V
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 616
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 617
    return-void
.end method
