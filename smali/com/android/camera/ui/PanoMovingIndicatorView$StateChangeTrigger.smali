.class Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;
.super Ljava/lang/Object;
.source "PanoMovingIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoMovingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChangeTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatestState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatestTimes:I

.field private mMaxTimesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoMovingIndicatorView;Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoMovingIndicatorView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;, "Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger<TT;>;"
    .local p2, "dValue":Ljava/lang/Object;, "TT;"
    .local p3, "timesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mLatestTimes:I

    .line 216
    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mLatestState:Ljava/lang/Object;

    .line 217
    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mCurrentState:Ljava/lang/Object;

    .line 218
    iput-object p3, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mMaxTimesMap:Ljava/util/HashMap;

    .line 219
    return-void
.end method


# virtual methods
.method public setCurrentState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;, "Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger<TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mCurrentState:Ljava/lang/Object;

    .line 223
    return-void
.end method
