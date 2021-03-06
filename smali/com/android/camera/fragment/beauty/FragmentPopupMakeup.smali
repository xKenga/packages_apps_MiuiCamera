.class public Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPopupMakeup.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BaseFragment;",
        "Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mActiveProgress:I

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRTL:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lio/reactivex/FlowableEmitter;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsRTL:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;
    .param p1, "-value"    # Lio/reactivex/FlowableEmitter;

    .prologue
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setProgress(I)V

    .line 224
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0xfc

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 154
    const v0, 0x7f04001b

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsRTL:Z

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 60
    new-instance v2, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$1;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v2, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    .line 73
    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 68
    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$3;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$3;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    .line 68
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 82
    .local v0, "flowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 83
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/BeautyParameters;->getCurrentProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    .line 85
    const v2, 0x7f0a0063

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    .line 86
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 87
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    return-void
.end method

.method public onMakeupItemSelected()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters;->getCurrentProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 219
    return-void
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
    const/4 v4, 0x0

    const/16 v3, 0x50

    .line 164
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 166
    const/4 v0, 0x1

    .line 167
    .local v0, "newState":I
    packed-switch p1, :pswitch_data_0

    .line 173
    :pswitch_0
    const/4 v0, -0x1

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 178
    return-void

    .line 170
    :pswitch_1
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_1
    if-nez p2, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v1, v3}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 200
    :goto_1
    return-void

    .line 191
    :cond_2
    new-instance v1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_3
    if-nez p2, :cond_4

    .line 195
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v1, v3}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_1

    .line 197
    :cond_4
    new-instance v1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "lastFragmentInfo"    # I

    .prologue
    .line 205
    const/16 v0, 0xa7

    .line 206
    const/16 v1, 0xa1

    .line 204
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 212
    const/16 v0, 0xa8

    .line 213
    const/16 v1, 0xa2

    .line 211
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 140
    const/16 v0, 0xb4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 141
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 146
    const/16 v0, 0xb4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 150
    :cond_0
    return-void
.end method
