.class public Lcom/android/camera/fragment/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapLongStatusMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomAction$1;
    }
.end annotation


# instance fields
.field private mBottomAnimator:Landroid/animation/ValueAnimator;

.field private mCameraPickEnable:Z

.field private mCameraPicker:Landroid/view/View;

.field private mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

.field private mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mFilterLayout:Landroid/view/View;

.field private mFilterListHeight:I

.field private mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mInLoading:Z

.field private mIsIntentAction:Z

.field private mIsShowFilter:Z

.field private mLongPressBurst:Z

.field private mModeSelectLayout:Landroid/view/View;

.field private mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mOnCreated:Z

.field private mRecordingPause:Landroid/widget/ImageView;

.field private mRecordingSnap:Landroid/widget/ImageView;

.field private mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field private mSineEaseOut:Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;

.field private mThumbnailImage:Landroid/widget/ImageView;

.field private mThumbnailImageLayout:Landroid/view/ViewGroup;

.field private mThumbnailProgress:Landroid/widget/ProgressBar;

.field private mV9bottomParentLayout:Landroid/widget/RelativeLayout;

.field private mVideoCaptureEnable:Z

.field private mVideoPauseSupported:Z

.field private mVideoRecordingStarted:Z


# direct methods
.method static synthetic -get1(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/fragment/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 123
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "currentMode"    # I

    .prologue
    const/high16 v2, 0x7f0d0000

    .line 369
    const/16 v1, 0xa5

    if-ne p2, v1, :cond_0

    .line 370
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    return-void

    .line 374
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    .line 375
    .local v0, "uiStyle":I
    packed-switch v0, :pswitch_data_0

    .line 378
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 386
    :goto_0
    return-void

    .line 383
    :pswitch_1
    const v1, 0x7f0d000c

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initThumbLayoutByIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 228
    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-nez v3, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 230
    .local v0, "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {p0, v5, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 232
    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 235
    .local v2, "thumbnail":Lcom/android/camera/Thumbnail;
    if-eqz v2, :cond_1

    .line 236
    invoke-virtual {p0, v2, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 247
    .end local v0    # "activityBase":Lcom/android/camera/ActivityBase;
    .end local v2    # "thumbnail":Lcom/android/camera/Thumbnail;
    :goto_0
    return-void

    .line 238
    .restart local v0    # "activityBase":Lcom/android/camera/ActivityBase;
    .restart local v2    # "thumbnail":Lcom/android/camera/Thumbnail;
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    goto :goto_0

    .line 241
    .end local v0    # "activityBase":Lcom/android/camera/ActivityBase;
    .end local v2    # "thumbnail":Lcom/android/camera/Thumbnail;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 245
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v4, 0x7f02018f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isInMovieSolidMode()Z
    .locals 2

    .prologue
    .line 936
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbLoading()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    return v0
.end method

.method private prepareRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 773
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 774
    const/16 v2, 0xac

    .line 773
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 775
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_0

    .line 776
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 781
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    .line 782
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording()V

    .line 783
    return-void

    .line 778
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    goto :goto_0
.end method

.method private resetBottom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 574
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 592
    :goto_0
    :pswitch_0
    return-void

    .line 581
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 582
    const/16 v2, 0xac

    .line 581
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 583
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 584
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    .line 585
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateBottomInRecording(Z)V
    .locals 5
    .param p1, "start"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 786
    if-eqz p1, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 788
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 793
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 795
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 796
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 827
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 829
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 831
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 837
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 838
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 840
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 847
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 850
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    .line 851
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 852
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 876
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 923
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 924
    return-void

    .line 802
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_4

    .line 803
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 805
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_0

    .line 810
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 811
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    .line 815
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_5

    .line 816
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 818
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoPause()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_0

    .line 813
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    goto :goto_1

    .line 822
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 823
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto/16 :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 850
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public canSnap()Z
    .locals 3

    .prologue
    .line 1297
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1299
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeMode(II)V
    .locals 7
    .param p1, "newMode"    # I
    .param p2, "forceDelayTime"    # I

    .prologue
    const/4 v6, 0x1

    .line 944
    iget v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v4, :cond_1

    .line 945
    :cond_0
    return-void

    .line 948
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 949
    return-void

    .line 953
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa1

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 954
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 955
    return-void

    .line 963
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 964
    .local v0, "camera":Lcom/android/camera/Camera;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 965
    :cond_4
    return-void

    .line 968
    :cond_5
    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    .line 969
    .local v3, "lastMode":I
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    .line 970
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 971
    .local v2, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 973
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    .line 975
    const/4 v5, 0x3

    .line 973
    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 979
    return-void
.end method

.method public filterUiChange()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    .line 270
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 1043
    const/16 v0, 0xf1

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 1038
    const v0, 0x7f04000c

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0a0038

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mOnCreated:Z

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 154
    const v2, 0x7f0a0039

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 156
    .local v0, "bottomParentParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 157
    sget v3, Lcom/android/camera/Util;->sNavigationBarHeight:I

    .line 156
    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 159
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 161
    const v2, 0x7f0a0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    .line 164
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/EdgeHorizonScrollView;

    .line 163
    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    .line 166
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModeSelectView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    .line 168
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 169
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ModeSelectView;->setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V

    .line 171
    const v2, 0x7f0a003a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    .line 172
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 174
    const v2, 0x7f0a003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    .line 175
    const v2, 0x7f0a003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    .line 178
    const v2, 0x7f0a003e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraSnapView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    .line 179
    const v2, 0x7f0a003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    .line 180
    const v2, 0x7f0a0040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    .line 186
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    .line 187
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    .line 188
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/CameraSnapView;->setEnabled(Z)V

    .line 191
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 198
    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;)V

    .line 200
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    .line 202
    new-instance v2, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 203
    new-instance v2, Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;

    invoke-direct {v2}, Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;

    .line 205
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 206
    const v3, 0x7f09006b

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    .line 208
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    .line 209
    new-instance v2, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v2}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/FragmentFilter;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public isShowFilter()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    return v0
.end method

.method public notifyDataChanged(II)V
    .locals 4
    .param p1, "dataChangeType"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 1259
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 1260
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    .line 1261
    .local v0, "currentIntentAction":Z
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eq v0, v1, :cond_0

    .line 1262
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    .line 1263
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 1264
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    .line 1266
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 1267
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 1269
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    .line 1292
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2
    .param p1, "callingFrom"    # I

    .prologue
    const/4 v1, 0x1

    .line 1550
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_0

    .line 1551
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 1552
    return v1

    .line 1554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v12

    if-nez v12, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v12

    const/16 v13, 0xa1

    invoke-virtual {v12, v13}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 637
    .local v3, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v3, :cond_1

    .line 638
    return-void

    .line 641
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ActivityBase;

    invoke-virtual {v12}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v7

    .line 642
    .local v7, "module":Lcom/android/camera/module/Module;
    invoke-interface {v7}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 643
    const-string/jumbo v12, "FragmentBottomAction"

    const-string/jumbo v13, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 647
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 769
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 649
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 650
    return-void

    .line 652
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v12

    if-nez v12, :cond_5

    .line 653
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 655
    :cond_5
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    .line 661
    :pswitch_2
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 662
    return-void

    .line 664
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 665
    return-void

    .line 667
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 668
    .local v6, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    .line 669
    .local v4, "currentCamera":I
    if-nez v4, :cond_9

    .line 670
    const/4 v8, 0x1

    .line 673
    .local v8, "newCameraFacing":I
    :goto_1
    invoke-virtual {v6, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 675
    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    .line 676
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const/high16 v13, -0x3ccc0000    # -180.0f

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 681
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v12

    const/16 v13, 0xac

    invoke-virtual {v12, v13}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v10

    check-cast v10, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 682
    .local v10, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-interface {v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu()V

    .line 683
    const-string/jumbo v12, "FragmentBottomAction"

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 684
    const-string/jumbo v14, "switch camera from %d to %d, for module 0x%x"

    .line 683
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 685
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 683
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    sparse-switch v12, :sswitch_data_0

    .line 688
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    .line 732
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v12, :cond_8

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 736
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 737
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const v13, 0x7f0f012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 671
    .end local v8    # "newCameraFacing":I
    .end local v10    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "newCameraFacing":I
    goto/16 :goto_1

    .line 678
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_2

    .line 703
    .restart local v10    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :sswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    const/16 v13, 0xa2

    invoke-virtual {v12, v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Camera;

    const/16 v13, 0xa2

    invoke-static {v13}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 705
    const/4 v14, 0x1

    .line 704
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 706
    const/4 v14, 0x1

    .line 704
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_3

    .line 711
    :sswitch_1
    const/16 v9, 0xa2

    .line 712
    .local v9, "targetMode":I
    if-nez v8, :cond_b

    .line 713
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v5

    .line 714
    .local v5, "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoFastMotion()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 715
    const/16 v9, 0xa9

    .line 721
    .end local v5    # "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    :cond_b
    :goto_4
    const/16 v12, 0xa2

    if-eq v9, v12, :cond_d

    .line 722
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 724
    const/4 v14, 0x1

    .line 723
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 725
    const/4 v14, 0x1

    .line 723
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_3

    .line 716
    .restart local v5    # "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    :cond_c
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoSlowMotion()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 717
    const/16 v9, 0xa8

    goto :goto_4

    .line 727
    .end local v5    # "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    :cond_d
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    goto/16 :goto_3

    .line 743
    .end local v4    # "currentCamera":I
    .end local v6    # "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    .end local v8    # "newCameraFacing":I
    .end local v9    # "targetMode":I
    .end local v10    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa9

    if-eq v12, v13, :cond_f

    .line 744
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa8

    if-eq v12, v13, :cond_f

    .line 745
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_f

    .line 748
    :cond_e
    return-void

    .line 746
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    xor-int/lit8 v12, v12, 0x1

    .line 743
    if-nez v12, :cond_e

    .line 747
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    xor-int/lit8 v12, v12, 0x1

    .line 743
    if-nez v12, :cond_e

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    .line 752
    .local v2, "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/VideoModule;

    .line 753
    .local v11, "videoModule":Lcom/android/camera/module/VideoModule;
    invoke-virtual {v11}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_0

    .line 757
    .end local v2    # "activityBase":Lcom/android/camera/ActivityBase;
    .end local v11    # "videoModule":Lcom/android/camera/module/VideoModule;
    :pswitch_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa9

    if-eq v12, v13, :cond_11

    .line 758
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa8

    if-eq v12, v13, :cond_11

    .line 759
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_11

    .line 762
    :cond_10
    return-void

    .line 760
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    xor-int/lit8 v12, v12, 0x1

    .line 757
    if-nez v12, :cond_10

    .line 761
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    xor-int/lit8 v12, v12, 0x1

    .line 757
    if-nez v12, :cond_10

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    .line 765
    .restart local v2    # "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/VideoModule;

    .line 766
    .restart local v11    # "videoModule":Lcom/android/camera/module/VideoModule;
    invoke-virtual {v11}, Lcom/android/camera/module/VideoModule;->capture()Z

    goto/16 :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a003a
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 686
    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onModeClicked(I)V
    .locals 1
    .param p1, "newMode"    # I

    .prologue
    .line 929
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    .line 930
    return-void
.end method

.method public onReleaseRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1542
    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "onReleaseRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1546
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 217
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    .line 218
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 219
    .local v0, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    .line 220
    const/4 v2, 0x1

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 219
    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 225
    :cond_1
    return-void
.end method

.method public onSmartShutterFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "center"    # Landroid/graphics/Point;

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 1351
    .local v0, "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    .line 1352
    .local v1, "module":Lcom/android/camera/module/Module;
    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onSmartShutterButtonFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1353
    return-void
.end method

.method public onSnapClick()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 1357
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1358
    return-void

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1361
    return-void

    .line 1363
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    .line 1364
    .local v2, "module":Lcom/android/camera/module/Module;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1365
    const-string/jumbo v3, "FragmentBottomAction"

    const-string/jumbo v4, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void

    .line 1370
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa1

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1372
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v1, :cond_3

    .line 1373
    return-void

    .line 1376
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    .line 1377
    const/16 v4, 0xab

    .line 1376
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1378
    .local v0, "backStack":Lcom/android/camera/protocol/ModeProtocol$BackStack;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    .line 1379
    const-string/jumbo v3, "FragmentBottomAction"

    const-string/jumbo v4, "onSnapClick"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v3, :pswitch_data_0

    .line 1383
    :pswitch_0
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1384
    return-void

    .line 1386
    :cond_4
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 1407
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1408
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0f0130

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    .line 1411
    :cond_5
    return-void

    .line 1389
    :pswitch_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1390
    return-void

    .line 1396
    :cond_6
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v3, :cond_7

    .line 1397
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    .line 1398
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 1401
    :cond_7
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 1380
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapLongPress()V
    .locals 4

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1416
    return-void

    .line 1419
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1421
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v1, :cond_1

    .line 1422
    return-void

    .line 1425
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1426
    return-void

    .line 1456
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 1457
    const/16 v3, 0xab

    .line 1456
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1458
    .local v0, "backStack":Lcom/android/camera/protocol/ModeProtocol$BackStack;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    .line 1459
    const-string/jumbo v2, "FragmentBottomAction"

    const-string/jumbo v3, "onSnapLongPress"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1462
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    .line 1464
    :cond_3
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1488
    return-void

    .line 1491
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1493
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v0, :cond_1

    .line 1494
    return-void

    .line 1497
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelIn"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel()V

    .line 1500
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 1519
    :goto_0
    :pswitch_0
    return-void

    .line 1505
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v1, :cond_2

    .line 1506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    goto :goto_0

    .line 1508
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 1516
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 1500
    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1469
    return-void

    .line 1472
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1474
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v0, :cond_1

    .line 1475
    return-void

    .line 1477
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelOut"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel()V

    .line 1480
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v1, :cond_2

    .line 1481
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    .line 1483
    :cond_2
    return-void
.end method

.method public onSnapLongReachLimit()V
    .locals 0

    .prologue
    .line 1559
    return-void
.end method

.method public onSnapPrepare()V
    .locals 3

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1305
    return-void

    .line 1308
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1310
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v0, :cond_1

    .line 1311
    return-void

    .line 1313
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapPrepare"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    .line 1316
    return-void
.end method

.method public onStartRecording()V
    .locals 4

    .prologue
    .line 1523
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onStartRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1527
    .local v0, "delayEnableUIMessage":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1528
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1530
    .end local v0    # "delayEnableUIMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1534
    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "onStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1538
    :cond_0
    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1320
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1321
    return-void

    .line 1324
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xba

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    .line 1326
    .local v0, "cameraActionTrack":Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
    if-nez v0, :cond_1

    .line 1327
    return-void

    .line 1329
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackSnapMissTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    .line 1331
    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    return-void

    .line 1339
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xba

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    .line 1341
    .local v0, "cameraActionTrack":Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
    if-nez v0, :cond_1

    .line 1342
    return-void

    .line 1344
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackSnapTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    .line 1346
    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    goto :goto_0
.end method

.method public processingFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 556
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 559
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->updateLoading(Z)V

    .line 560
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    .line 561
    return-void
.end method

.method public processingFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 550
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    .line 552
    return-void
.end method

.method public processingPause()V
    .locals 3

    .prologue
    .line 513
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 526
    :goto_0
    :pswitch_0
    return-void

    .line 518
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    .line 519
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f020117

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 522
    const/16 v2, 0xac

    .line 521
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 523
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public processingResume()V
    .locals 3

    .prologue
    .line 530
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 543
    :goto_0
    :pswitch_0
    return-void

    .line 535
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    .line 536
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f020116

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 539
    const/16 v2, 0xac

    .line 538
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 540
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public processingStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    .line 492
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :goto_0
    :pswitch_0
    return-void

    .line 498
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    .line 500
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 5
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1049
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 1051
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->processingAudioCapture(Z)V

    .line 1053
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/FragmentFilter;->isShowAnimation(Ljava/util/List;)V

    .line 1058
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1064
    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, p1, v1}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    .line 1066
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    invoke-virtual {v1, p1, p2, v4}, Lcom/android/camera/ui/ModeSelectView;->judgePosition(ILjava/util/List;Z)V

    .line 1069
    packed-switch p1, :pswitch_data_1

    .line 1071
    :pswitch_0
    const/4 v0, 0x1

    .line 1072
    .local v0, "newState":I
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    .line 1091
    :goto_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1092
    return-void

    .line 1060
    .end local v0    # "newState":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1064
    goto :goto_1

    .line 1076
    :pswitch_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1077
    const/4 v0, 0x1

    .line 1078
    .restart local v0    # "newState":I
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1080
    .end local v0    # "newState":I
    :cond_2
    const/4 v0, -0x1

    .line 1081
    .restart local v0    # "newState":I
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1086
    .end local v0    # "newState":I
    :pswitch_3
    const/4 v0, -0x1

    .line 1087
    .restart local v0    # "newState":I
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1094
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1096
    if-ne v0, v2, :cond_5

    .line 1097
    if-nez p2, :cond_4

    .line 1098
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 1109
    :goto_3
    return-void

    .line 1100
    :cond_4
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1103
    :cond_5
    if-nez p2, :cond_6

    .line 1104
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 1106
    :cond_6
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1058
    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_1
    .end packed-switch

    .line 1069
    :pswitch_data_1
    .packed-switch 0xa6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "lastFragmentInfo"    # I

    .prologue
    .line 1115
    packed-switch p1, :pswitch_data_0

    .line 1121
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xa1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1122
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1125
    return-object v0

    .line 1117
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_0
    .end packed-switch
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 1130
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xa2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
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
    .line 1248
    .local p1, "pendingRotateItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 1250
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 598
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 599
    const/16 v0, 0xb3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 600
    const/16 v0, 0xa2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 601
    const/16 v0, 0xc0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 602
    const/16 v0, 0xb7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 603
    const/16 v0, 0xc2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 604
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomAction;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 605
    return-void
.end method

.method public selectMode(II)V
    .locals 8
    .param p1, "gravity"    # I
    .param p2, "delayTime"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 984
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 985
    return-void

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 988
    if-ne p1, v6, :cond_6

    .line 989
    const p1, 0x800005

    .line 1001
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    .line 1004
    .local v1, "mode":I
    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v6, 0xa9

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_3

    .line 1005
    :cond_2
    const/16 v1, 0xa2

    .line 1008
    :cond_3
    const/4 v3, 0x0

    .line 1009
    .local v3, "position":I
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1010
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 1011
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v5

    if-ne v5, v1, :cond_9

    .line 1012
    move v3, v0

    .line 1016
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 1032
    :cond_5
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v2

    .line 1033
    .local v2, "newMode":I
    invoke-virtual {p0, v2, p2}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    .line 1034
    return-void

    .line 990
    .end local v0    # "i":I
    .end local v1    # "mode":I
    .end local v2    # "newMode":I
    .end local v3    # "position":I
    .end local v4    # "size":I
    :cond_6
    if-ne p1, v7, :cond_1

    .line 991
    const p1, 0x800003

    goto :goto_0

    .line 994
    :cond_7
    if-ne p1, v6, :cond_8

    .line 995
    const p1, 0x800003

    goto :goto_0

    .line 996
    :cond_8
    if-ne p1, v7, :cond_1

    .line 997
    const p1, 0x800005

    goto :goto_0

    .line 1010
    .restart local v0    # "i":I
    .restart local v1    # "mode":I
    .restart local v3    # "position":I
    .restart local v4    # "size":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1018
    :pswitch_1
    if-lez v3, :cond_5

    .line 1019
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1024
    :pswitch_2
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_5

    .line 1025
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1016
    :pswitch_data_0
    .packed-switch 0x800003
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setClickEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setEnabled(Z)V

    .line 365
    return-void
.end method

.method public showOrHideFilter()V
    .locals 10

    .prologue
    const/high16 v9, 0x42480000    # 50.0f

    const v8, 0x3f666666    # 0.9f

    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;

    .line 277
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 279
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 280
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 282
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 283
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 285
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 287
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 289
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;

    .line 290
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 292
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 293
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 313
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const v1, 0x7f0f012e

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 355
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 356
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 320
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 322
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 323
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 325
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 326
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 328
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 330
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 332
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    .line 334
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 336
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    .line 334
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_0
.end method

.method public switchFilter(I)Z
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v2, :cond_2

    .line 257
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 258
    const/16 v3, 0xa1

    .line 257
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 259
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/FragmentFilter;->switchFilter(I)V

    .line 262
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 264
    .end local v0    # "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    :cond_2
    return v1
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 3
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 610
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 611
    const/16 v1, 0xb3

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 612
    const/16 v1, 0xa2

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 613
    const/16 v1, 0xc0

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 614
    const/16 v1, 0xb7

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 615
    const/16 v1, 0xc2

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 616
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomAction;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 619
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 622
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 623
    return-void
.end method

.method public updateLoading(Z)V
    .locals 4
    .param p1, "hideOrShowThumbProgress"    # Z

    .prologue
    const/4 v1, 0x1

    .line 462
    if-nez p1, :cond_1

    .line 463
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v0, :cond_0

    .line 464
    return-void

    .line 466
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 467
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 486
    :goto_0
    return-void

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 482
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 483
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 6
    .param p1, "thumbnail"    # Lcom/android/camera/Thumbnail;
    .param p2, "animation"    # Z

    .prologue
    const/16 v2, 0x8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 393
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 395
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 399
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v1, :cond_1

    .line 400
    return-void

    .line 403
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v1, :cond_2

    .line 404
    return-void

    .line 407
    :cond_2
    if-nez p1, :cond_3

    .line 408
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    return-void

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 414
    .local v0, "roundedBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 415
    invoke-virtual {v0, v4}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 416
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    if-nez p2, :cond_4

    .line 419
    return-void

    .line 439
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 440
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 441
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 442
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 443
    const-wide/16 v2, 0x50

    .line 442
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 446
    return-void
.end method
