.class Lcom/android/zxing/ui/QRCodeFragmentLayout$1;
.super Ljava/lang/Object;
.source "QRCodeFragmentLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/ui/QRCodeFragmentLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 68
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 69
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isPreviewFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    .line 75
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
