.class final Lcom/android/camera/Util$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/Util$PackageInstallerListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;


# direct methods
.method constructor <init>(Lcom/android/camera/Util$PackageInstallerListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/Util$2;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    .line 1760
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1763
    const-string/jumbo v1, "CameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageInstalled: packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returnCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v1, p0, Lcom/android/camera/Util$2;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    if-eqz v1, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/android/camera/Util$2;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    if-ne p2, v0, :cond_1

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/android/camera/Util$PackageInstallerListener;->onPackageInstalled(Ljava/lang/String;Z)V

    .line 1767
    :cond_0
    return-void

    .line 1765
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
