.class Lcom/android/camera/ui/PortraitButton$1;
.super Landroid/os/Handler;
.source "PortraitButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PortraitButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PortraitButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PortraitButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PortraitButton;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/PortraitButton$1;->this$0:Lcom/android/camera/ui/PortraitButton;

    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton$1;->this$0:Lcom/android/camera/ui/PortraitButton;

    invoke-static {v0}, Lcom/android/camera/ui/PortraitButton;->-get0(Lcom/android/camera/ui/PortraitButton;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    .line 44
    :cond_0
    return-void
.end method
