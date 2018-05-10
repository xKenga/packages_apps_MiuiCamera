.class Lcom/android/camera/fragment/top/FragmentTopConfig$3;
.super Ljava/lang/Object;
.source "FragmentTopConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopConfig;->setRecordingTimeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$state:I

.field final synthetic val$topAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/top/FragmentTopConfig;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$topAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$state:I

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$topAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$state:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(I)V

    .line 1131
    return-void
.end method
