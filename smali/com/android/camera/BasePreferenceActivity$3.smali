.class Lcom/android/camera/BasePreferenceActivity$3;
.super Ljava/lang/Object;
.source "BasePreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BasePreferenceActivity;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BasePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BasePreferenceActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    invoke-static {v0}, Lcom/android/camera/BasePreferenceActivity;->-wrap0(Lcom/android/camera/BasePreferenceActivity;)V

    .line 393
    return-void
.end method
