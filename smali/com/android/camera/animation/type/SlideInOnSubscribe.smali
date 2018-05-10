.class public Lcom/android/camera/animation/type/SlideInOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "SlideInOnSubscribe.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "mGravity"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 18
    iput p2, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mGravity:I

    .line 19
    return-void
.end method

.method public static directSetResult(Landroid/view/View;I)V
    .locals 1
    .param p0, "aniView"    # Landroid/view/View;
    .param p1, "gravity"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 60
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 24
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "srcX":I
    const/4 v1, 0x0

    .line 29
    .local v1, "srcY":I
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 30
    .local v3, "viewWidth":I
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 32
    .local v2, "viewHeight":I
    iget v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 47
    :goto_0
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    int-to-float v5, v0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 48
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    int-to-float v5, v1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 49
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 53
    iget-object v4, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mAniView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    return-object v4

    .line 34
    :sswitch_0
    neg-int v0, v3

    .line 35
    goto :goto_0

    .line 37
    :sswitch_1
    neg-int v1, v2

    .line 38
    goto :goto_0

    .line 40
    :sswitch_2
    move v0, v3

    .line 41
    goto :goto_0

    .line 43
    :sswitch_3
    move v1, v2

    .line 44
    goto :goto_0

    .line 32
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method
