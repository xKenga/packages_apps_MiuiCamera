.class public Lcom/android/camera/aosp_porting/reflect/Constructor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPtr:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/aosp_porting/reflect/Constructor;->mPtr:J

    .line 21
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/aosp_porting/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->getConstructor(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/android/camera/aosp_porting/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/camera/aosp_porting/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/camera/aosp_porting/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/internal/os/Native;->getConstructor(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/NoSuchMethodException;,
            Lcom/android/camera/aosp_porting/reflect/NoSuchClassException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->getConstructor(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lcom/android/camera/aosp_porting/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Lcom/android/camera/aosp_porting/reflect/Constructor;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/miui/internal/os/Native;->getConstructor(Ljava/lang/reflect/Constructor;)Lcom/android/camera/aosp_porting/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->newInstance(Lcom/android/camera/aosp_porting/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toRefelect()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/miui/internal/os/Native;->getReflectConstructor(Lcom/android/camera/aosp_porting/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
