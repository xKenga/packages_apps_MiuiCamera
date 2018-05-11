.class public Lcom/android/camera/aosp_porting/reflect/Method;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPtr:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/aosp_porting/reflect/Method;->mPtr:J

    .line 24
    return-void
.end method

.method public static varargs of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/android/camera/aosp_porting/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/camera/aosp_porting/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p3, p2}, Lcom/android/camera/aosp_porting/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/aosp_porting/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/NoSuchClassException;,
            Lcom/android/camera/aosp_porting/reflect/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/aosp_porting/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lcom/android/camera/aosp_porting/reflect/Method;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/reflect/Method;)Lcom/android/camera/aosp_porting/reflect/Method;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invoke(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public varargs invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeBoolean(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs invokeByte(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeByte(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method public varargs invokeChar(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")C"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeChar(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method public varargs invokeDouble(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeDouble(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs invokeFloat(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeFloat(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public varargs invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeInt(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs invokeLong(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeLong(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeObject(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeShort(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")S"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/aosp_porting/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeShort(Lcom/android/camera/aosp_porting/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public toReflect()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/miui/internal/os/Native;->getReflectMethod(Lcom/android/camera/aosp_porting/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
