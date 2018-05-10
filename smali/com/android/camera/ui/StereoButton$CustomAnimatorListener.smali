.class Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StereoButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/StereoButton;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/StereoButton;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/StereoButton;

    .prologue
    .line 448
    sget-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 449
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/StereoButton;Lcom/android/camera/ui/StereoButton$AnimationType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/StereoButton;
    .param p2, "type"    # Lcom/android/camera/ui/StereoButton$AnimationType;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 452
    iput-object p2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    .line 453
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    .line 454
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->-get1(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0, v2}, Lcom/android/camera/ui/StereoButton;->-set0(Lcom/android/camera/ui/StereoButton;Z)Z

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 473
    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/camera/ui/StereoButton$AnimationType;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    .line 458
    return-void
.end method

.method public updateParameters()V
    .locals 5

    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v2}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 477
    .local v0, "textPaint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v2}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v3}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v2

    float-to-int v1, v2

    .line 478
    .local v1, "textWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/ui/StereoButton;->-set1(Lcom/android/camera/ui/StereoButton;I)I

    .line 479
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    div-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/ui/StereoButton;->-set2(Lcom/android/camera/ui/StereoButton;I)I

    .line 480
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v3}, Lcom/android/camera/ui/StereoButton;->-get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/StereoButton;->-set3(Lcom/android/camera/ui/StereoButton;I)I

    .line 481
    return-void
.end method
