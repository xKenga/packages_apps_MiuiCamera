.class public Lcom/android/camera/ui/V6SettingButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6SettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingButton;->mVisible:Z

    .line 17
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6SettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 26
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingButton;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    .line 30
    const/4 v1, 0x0

    .line 31
    const v2, 0x7f0a00da

    .line 32
    const/4 v3, 0x2

    move-object v5, v4

    .line 29
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 36
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingButton;->mVisible:Z

    if-nez v0, :cond_0

    .line 41
    const/16 p1, 0x8

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 44
    return-void
.end method
