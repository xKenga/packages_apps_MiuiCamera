.class public Lcom/android/camera/animation/type/TranslateXOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "TranslateXOnSubscribe.java"


# instance fields
.field private mDistanceX:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "distanceX"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 16
    iput p2, p0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->mDistanceX:I

    .line 17
    return-void
.end method

.method public static directSetResult(Landroid/view/View;I)V
    .locals 1
    .param p0, "aniView"    # Landroid/view/View;
    .param p1, "distanceX"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 28
    int-to-float v0, p1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->mAniView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 23
    iget v1, p0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->mDistanceX:I

    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
