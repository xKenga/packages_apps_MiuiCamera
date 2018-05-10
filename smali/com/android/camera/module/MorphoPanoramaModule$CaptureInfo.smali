.class Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureInfo"
.end annotation


# instance fields
.field mId:I

.field mStatus:I

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p2, "id"    # I
    .param p3, "status"    # I

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    .line 901
    iput p3, p0, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    .line 902
    return-void
.end method
