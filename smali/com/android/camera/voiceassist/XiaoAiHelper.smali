.class public Lcom/android/camera/voiceassist/XiaoAiHelper;
.super Ljava/lang/Object;
.source "XiaoAiHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/camera/voiceassist/XiaoAiHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/voiceassist/XiaoAiHelper;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public static isActionFromXiaoAi(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1

    .line 43
    .local v1, "refer":Landroid/net/Uri;
    const-string/jumbo v0, "NONE"

    .line 44
    .local v0, "caller":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    const-string/jumbo v2, "com.miui.voiceassist"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    const-string/jumbo v2, "com.xiaomi.voiceassistant"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 47
    if-eqz v2, :cond_1

    .line 50
    sget-object v2, Lcom/android/camera/voiceassist/XiaoAiHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An illegal caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " use the XIAOAI_CONTROL intent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v2, 0x0

    return v2

    .line 54
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getCountDownTime()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 70
    iget-object v1, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 71
    return v4

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extras.COUNT_DOWN_TIME"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "countDownTime":I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 76
    const/4 v0, 0x3

    .line 78
    :cond_1
    return v0
.end method

.method public shouldCountDownFromAction()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 61
    return v2

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/voiceassist/XiaoAiHelper;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extras.COUNT_DOWN_TIME"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, "countDownTime":I
    const-string/jumbo v3, "android.media.action.XIAOAI_CONTROL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.android.camera.action.XIAOAI_CONTROL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    :cond_1
    if-eq v1, v5, :cond_2

    const/4 v2, 0x1

    .line 65
    :cond_2
    return v2
.end method
