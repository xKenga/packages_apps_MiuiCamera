.class Lcom/android/camera/snap/SnapService$1;
.super Landroid/content/BroadcastReceiver;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapService;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string/jumbo v0, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 31
    if-eqz v0, :cond_0

    .line 33
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x1a

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    .line 40
    return-void
.end method
