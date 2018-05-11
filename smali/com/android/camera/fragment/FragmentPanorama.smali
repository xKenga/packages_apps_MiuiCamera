.class public Lcom/android/camera/fragment/FragmentPanorama;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPanorama.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;
    }
.end annotation


# instance fields
.field private mArrowMargin:I

.field private mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mHintFrame:Landroid/view/View;

.field private mIndicator:Landroid/widget/ImageView;

.field private mMoveDirection:I

.field private mMoveReferenceLine:Landroid/view/View;

.field private mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

.field private mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaViewRoot:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field private mStillPreviewHintArea:Landroid/view/View;

.field private mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

.field private mStillPreviewTextureHeight:I

.field private mStillPreviewTextureOffsetX:I

.field private mStillPreviewTextureOffsetY:I

.field private mStillPreviewTextureWidth:I

.field private mUseHint:Landroid/widget/TextView;

.field private mUseHintArea:Landroid/view/View;

.field private mWaitingFirstFrame:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/fragment/FragmentPanorama;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/FragmentPanorama;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentPanorama;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    .line 83
    new-instance v0, Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-direct {v0}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    .line 52
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0xff0

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f040032

    return v0
.end method

.method public initPreviewLayout(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I

    .prologue
    .line 172
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    .line 173
    iput p3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewWidth:I

    .line 174
    iput p4, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewHeight:I

    .line 176
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    .line 181
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewHeight:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    .line 183
    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    .line 185
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->requestLayout()V

    .line 186
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 89
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintArea:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentPanorama;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    .line 96
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    .line 98
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoMovingIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    .line 100
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentPanorama;Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    .line 108
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-instance v1, Lcom/android/camera/fragment/FragmentPanorama$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentPanorama$1;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewRender:Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public moveToDirection(I)V
    .locals 13
    .param p1, "direction"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    .line 191
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    .line 192
    .local v7, "translationX":F
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {v8}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->getTransformationRatio()F

    move-result v6

    .line 193
    .local v6, "transformationRatio":F
    iget v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 194
    iget v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iget v9, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr v8, v9

    int-to-float v7, v8

    .line 195
    const/high16 v6, 0x40000000    # 2.0f

    .line 201
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 202
    iget-object v11, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v7, v10, v11

    .line 201
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 203
    .local v1, "arrowMoveAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 204
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    const-string/jumbo v9, "transformationRatio"

    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 205
    iget-object v11, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {v11}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->getTransformationRatio()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v6, v10, v11

    .line 204
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 206
    .local v2, "arrowTransformAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 209
    iget-object v11, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v11}, Lcom/android/camera/ui/GLTextureView;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 208
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 210
    .local v4, "previewFadeOutAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 211
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 212
    .local v3, "previewFadeInAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 213
    new-instance v8, Lcom/android/camera/fragment/FragmentPanorama$2;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/FragmentPanorama$2;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 228
    .local v5, "previewFadeOutInAnimator":Landroid/animation/AnimatorSet;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 230
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 231
    .local v0, "animator":Landroid/animation/AnimatorSet;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 232
    iget-object v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 234
    return-void

    .line 196
    .end local v0    # "animator":Landroid/animation/AnimatorSet;
    .end local v1    # "arrowMoveAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "arrowTransformAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "previewFadeInAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "previewFadeOutAnimator":Landroid/animation/ObjectAnimator;
    .end local v5    # "previewFadeOutInAnimator":Landroid/animation/AnimatorSet;
    :cond_1
    iget v8, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    .line 197
    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    iget v9, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v7, v8

    .line 198
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2
    .param p1, "arrivedType"    # I

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 418
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCurrentMode:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->showSmallPreview(Z)V

    .line 423
    :cond_0
    return-void
.end method

.method public onCaptureOrientationDecided(III)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 318
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v2, 0x7f0f0102

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 322
    .local v0, "y":I
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setDisplayCenterY(I)V

    .line 323
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setMovingAttribute(III)V

    .line 324
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentPanorama;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    if-ne v0, v2, :cond_2

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentPanorama;->trackDirectionChanged(I)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V

    .line 156
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPanoramaMoveDirection(I)V

    .line 157
    return-void

    .line 152
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    if-ne v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->trackDirectionChanged(I)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onPause()V

    .line 333
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method public onPreviewMoving()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0f021c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isFar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0f021b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0f0102

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 339
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 340
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 2
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
    .line 397
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 399
    packed-switch p1, :pswitch_data_0

    .line 403
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 404
    if-nez p2, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 412
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 407
    :cond_1
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_0
    .end packed-switch
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 136
    const/16 v0, 0xb0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 137
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 240
    :cond_0
    return-void
.end method

.method public resetShootUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->setClickEnable(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0f0103

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    return-void
.end method

.method public setDirectionPosition(Landroid/graphics/Point;I)V
    .locals 1
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "previewRefY"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setPosition(Landroid/graphics/Point;I)V

    .line 301
    return-void
.end method

.method public setDirectionTooFast(ZI)V
    .locals 1
    .param p1, "tooFast"    # Z
    .param p2, "moveSpeed"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setTooFast(ZI)V

    .line 297
    return-void
.end method

.method public setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    return-void
.end method

.method public setShootUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->setClickEnable(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public showSmallPreview(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0x9

    .line 263
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 265
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 266
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 267
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    iget v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 269
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    .line 276
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->requestLayout()V

    .line 279
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 280
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 281
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    .line 284
    if-eqz p1, :cond_2

    .line 285
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 289
    :goto_1
    return-void

    .line 270
    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 271
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 272
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iget v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 274
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected trackDirectionChanged(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 160
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "\u65b9\u5411"

    .line 165
    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    .line 166
    const-string/jumbo v1, "\u4ece\u5de6\u5f80\u53f3"

    .line 164
    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "panorama_direction_changed"

    .line 167
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    return-void

    .line 166
    :cond_1
    const-string/jumbo v1, "\u4ece\u53f3\u5f80\u5de6"

    goto :goto_0
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 142
    const/16 v0, 0xb0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 143
    return-void
.end method
