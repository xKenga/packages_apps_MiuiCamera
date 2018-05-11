.class public Lcom/android/camera/fragment/FragmentMainContent;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMainContent.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private mActiveIndicator:I

.field private mBottomCover:Landroid/view/View;

.field private mCoverParent:Landroid/view/ViewGroup;

.field private mDisplayRectTopMargin:I

.field private mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mIsIntentAction:Z

.field private mLastCameraId:I

.field private mLastFaceLength:I

.field private mMultiSnapNum:Landroid/widget/TextView;

.field private mObjectView:Lcom/android/camera/ui/ObjectView;

.field private mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field private mPreviewPage:Lcom/android/camera/ui/V6RelativeLayout;

.field private mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTopCover:Landroid/view/View;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentMainContent;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    .line 768
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    .line 50
    return-void
.end method

.method private adjustViewHeight(Landroid/view/View;)V
    .locals 5
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 130
    .local v0, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    .local v1, "parentLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    .local v2, "previewPanelLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 134
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 136
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/V6PreviewPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/fragment/FragmentMainContent;->setDisplaySize(II)V

    .line 143
    :cond_0
    return-void
.end method

.method private initSnapNumAnimator()V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 289
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060005

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 292
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    return-void
.end method

.method private showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V
    .locals 0
    .param p1, "indicator"    # Lcom/android/camera/ui/FocusIndicator;
    .param p2, "showType"    # I

    .prologue
    .line 798
    packed-switch p2, :pswitch_data_0

    .line 811
    :goto_0
    return-void

    .line 800
    :pswitch_0
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0

    .line 803
    :pswitch_1
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 806
    :pswitch_2
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearFocusView(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->clear(I)V

    .line 590
    return-void
.end method

.method public clearIndicator(I)V
    .locals 2
    .param p1, "indicatorType"    # I

    .prologue
    .line 727
    packed-switch p1, :pswitch_data_0

    .line 740
    :goto_0
    return-void

    .line 729
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0

    .line 735
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not allowed call in this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroyEffectCropView()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestroy()V

    .line 407
    return-void
.end method

.method public getActiveIndicator()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return v0
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    return-object v0
.end method

.method public getFocusRect(I)Landroid/graphics/RectF;
    .locals 3
    .param p1, "indicatorType"    # I

    .prologue
    .line 815
    packed-switch p1, :pswitch_data_0

    .line 821
    :pswitch_0
    const-string/jumbo v0, "FragmentMainContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0

    .line 817
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 819
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0xf3

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f040012

    return v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    return v0
.end method

.method public hideDelayNumber()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPanel;->hideDelayNumber()V

    .line 284
    return-void
.end method

.method public hideReviewViews()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 269
    :cond_0
    return-void
.end method

.method public initEffectCropView()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onCreate()V

    .line 399
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    const v0, 0x7f0a004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    .line 94
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    .line 99
    const v0, 0x7f0a004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Lcom/android/camera/ui/V6RelativeLayout;

    .line 100
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Lcom/android/camera/ui/V6RelativeLayout;

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 101
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    .line 103
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    .line 104
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 105
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 106
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    .line 120
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->provideAnimateElement(ILjava/util/List;)V

    .line 122
    return-void
.end method

.method public initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 567
    return-void
.end method

.method public initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 600
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 601
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method public isAdjustingObjectView()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    return v0
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isDragged()Z

    move-result v0

    return v0
.end method

.method public isEffectViewMoved()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result v0

    return v0
.end method

.method public isEffectViewVisible()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    return v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isEvAdjusted(Z)Z
    .locals 1
    .param p1, "checkTime"    # Z

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result v0

    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result v0

    return v0
.end method

.method public isFaceExists(I)Z
    .locals 1
    .param p1, "indicatorType"    # I

    .prologue
    .line 648
    packed-switch p1, :pswitch_data_0

    .line 654
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 650
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    return v0

    .line 652
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->faceExists()Z

    move-result v0

    return v0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isFaceStable(I)Z
    .locals 1
    .param p1, "indicatorType"    # I

    .prologue
    .line 660
    packed-switch p1, :pswitch_data_0

    .line 666
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 662
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v0

    return v0

    .line 664
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isFaceStable()Z

    move-result v0

    return v0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isIndicatorVisible(I)Z
    .locals 3
    .param p1, "indicatorType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    packed-switch p1, :pswitch_data_0

    .line 680
    return v1

    .line 674
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 676
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 678
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isManualSplitMode()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isManualSplitMode()Z

    move-result v0

    return v0
.end method

.method public isNeedExposure(I)Z
    .locals 1
    .param p1, "indicatorType"    # I

    .prologue
    .line 686
    packed-switch p1, :pswitch_data_0

    .line 692
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 688
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->isNeedExposure()Z

    move-result v0

    return v0

    .line 690
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isNeedExposure()Z

    move-result v0

    return v0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isObjectTrackFailed()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v0

    return v0
.end method

.method public isPreviewFullScreen()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1
    .param p1, "arrivedType"    # I

    .prologue
    .line 877
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 881
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceLineAccordSquare()V

    .line 882
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid()V

    .line 885
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->reInit()V

    .line 887
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 888
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 6
    .param p1, "dataChangeType"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 836
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 838
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    .line 839
    .local v0, "currentIntentAction":Z
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    if-eq v0, v1, :cond_0

    .line 840
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    .line 841
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->hideReviewViews()V

    .line 843
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    if-eq v1, v2, :cond_1

    .line 844
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    .line 845
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 847
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v2, 0x7f0f012c

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 851
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    new-instance v2, Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/FragmentMainContent$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    .line 858
    const-wide/16 v4, 0x5dc

    .line 851
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera/ui/V6PreviewFrame;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 873
    :goto_1
    return-void

    .line 849
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v2, 0x7f0f012b

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 866
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight(Landroid/view/View;)V

    goto :goto_1

    .line 869
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight(Landroid/view/View;)V

    goto :goto_1

    .line 862
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackEvent(I)Z
    .locals 1
    .param p1, "callingFrom"    # I

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 830
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroy()V

    .line 831
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    .line 832
    return-void
.end method

.method public onStopObjectTrack()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 623
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 624
    return-void
.end method

.method public onViewTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 373
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pauseIndicator(I)V
    .locals 1
    .param p1, "indicatorType"    # I

    .prologue
    .line 744
    packed-switch p1, :pswitch_data_0

    .line 753
    :goto_0
    :pswitch_0
    return-void

    .line 746
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    goto :goto_0

    .line 749
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->pause()V

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performHapticFeedback(I)V
    .locals 1
    .param p1, "feedbackConstant"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    .line 354
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 8
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
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    const/16 v7, 0xc8

    const/16 v6, 0x50

    const/16 v5, 0x30

    .line 158
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    .line 159
    .local v0, "lastMode":I
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 161
    const/4 v2, 0x1

    .line 162
    .local v2, "newState":I
    packed-switch p1, :pswitch_data_0

    .line 167
    const/4 v2, -0x1

    .line 170
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumVisible(Z)V

    .line 171
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGrid()V

    .line 172
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 173
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 175
    const/4 v1, 0x1

    .line 176
    .local v1, "needReleaseListener":Z
    sparse-switch v0, :sswitch_data_0

    .line 189
    :goto_1
    if-eqz v1, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->releaseListener()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    .line 195
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 196
    return-void

    .line 164
    .end local v1    # "needReleaseListener":Z
    :pswitch_0
    const/4 v2, 0x1

    .line 165
    goto :goto_0

    .line 180
    .restart local v1    # "needReleaseListener":Z
    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 184
    :sswitch_1
    const/4 v1, 0x0

    .line 185
    goto :goto_1

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 202
    if-nez p2, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v3, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 204
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-static {v3, v6}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 226
    :goto_2
    return-void

    .line 207
    :cond_2
    new-instance v3, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    .line 206
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v3, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-direct {v3, v4, v6}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    .line 208
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_3
    if-nez p2, :cond_4

    .line 215
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v3, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 216
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-static {v3, v6}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_2

    .line 219
    :cond_4
    new-instance v3, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    .line 218
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v3, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-direct {v3, v4, v6}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    .line 220
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_0
    .end packed-switch

    .line 176
    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch

    .line 180
    :sswitch_data_1
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .param p2, "newDegree"    # I
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
    .local p1, "pendingRotateItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 897
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    rsub-int v1, p2, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    .line 902
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    .line 903
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    return-void
.end method

.method public reShowFaceRect()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->reShowFaceRect()V

    .line 595
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 232
    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 234
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 236
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 240
    :cond_0
    return-void
.end method

.method public removeTiltShiftMask()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    .line 415
    return-void
.end method

.method public resumeIndicator(I)V
    .locals 1
    .param p1, "indicatorType"    # I

    .prologue
    .line 757
    packed-switch p1, :pswitch_data_0

    .line 766
    :goto_0
    :pswitch_0
    return-void

    .line 759
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->resume()V

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setActiveIndicator(I)V
    .locals 0
    .param p1, "indicatorType"    # I

    .prologue
    .line 771
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    .line 772
    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 1
    .param p1, "cameraDisplayOrientation"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 501
    return-void
.end method

.method public setDisplaySize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    .line 629
    return-void
.end method

.method public setEffectViewVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    if-eqz p1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_0
.end method

.method public setEvAdjustable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    .line 553
    return-void
.end method

.method public setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 6
    .param p1, "indicatorType"    # I
    .param p2, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 699
    packed-switch p1, :pswitch_data_0

    .line 720
    :pswitch_0
    return v5

    .line 701
    :pswitch_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 702
    array-length v0, p2

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    .line 703
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    if-lez v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 706
    iget v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    .line 705
    new-array v3, v3, [Ljava/lang/Object;

    .line 706
    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/high16 v4, 0x7f100000

    .line 705
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->sendAccessibilityEvent(I)V

    .line 713
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v0

    return v0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 715
    :pswitch_2
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 718
    :cond_2
    return v3

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusViewPosition(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    .line 585
    return-void
.end method

.method public setFocusViewType(Z)V
    .locals 1
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 577
    return-void
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 639
    return-void
.end method

.method public setPreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 349
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setPreviewSize(II)V

    .line 634
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    .line 506
    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    .line 511
    return-void
.end method

.method public setSkipDrawFace(Z)V
    .locals 1
    .param p1, "skipDraw"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    .line 516
    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 5
    .param p1, "number"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11002b

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 327
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto :goto_0
.end method

.method public setSnapNumVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 299
    return-void

    :cond_0
    move v0, v1

    .line 298
    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 303
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSnapNumAnimator()V

    .line 305
    :cond_2
    if-eqz p1, :cond_3

    .line 306
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumValue(I)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 313
    :goto_1
    return-void

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 311
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1
.end method

.method public showDelayNumber(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    if-lez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->showDelayNumber(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public showIndicator(II)V
    .locals 1
    .param p1, "indicatorType"    # I
    .param p2, "showType"    # I

    .prologue
    .line 782
    packed-switch p1, :pswitch_data_0

    .line 795
    :goto_0
    return-void

    .line 784
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    .line 787
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    .line 790
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showReviewViews(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 245
    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 247
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 249
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 252
    :cond_0
    return-void
.end method

.method public updateEffectViewVisible()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 435
    return-void
.end method

.method public updateEffectViewVisible(I)V
    .locals 1
    .param p1, "renderId"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    if-nez v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 443
    return-void
.end method

.method public updateFaceView(ZZZZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z
    .param p3, "mirror"    # Z
    .param p4, "resume"    # Z
    .param p5, "cameraDisplayOrientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 521
    if-eqz p2, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 526
    if-lez p5, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p5}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 531
    if-eqz p4, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 534
    :cond_2
    return-void

    .line 524
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateFocusMode()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->updateFocusMode()V

    .line 572
    return-void
.end method
