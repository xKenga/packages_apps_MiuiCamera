.class Lcom/android/camera/backup/CameraSettingsBackupImpl$1;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/backup/CameraSettingsBackupImpl;->onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/backup/CameraSettingsBackupImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;->this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 0
    .param p1, "sharedPref"    # Landroid/content/SharedPreferences;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "entries"    # [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .prologue
    .line 82
    invoke-static {p1, p2, p3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper;->backup(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 83
    return-void
.end method
