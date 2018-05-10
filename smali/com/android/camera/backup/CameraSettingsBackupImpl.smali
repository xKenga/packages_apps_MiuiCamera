.class public Lcom/android/camera/backup/CameraSettingsBackupImpl;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    }
.end annotation


# static fields
.field private static final PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    sput-object v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 10
    .param p0, "prefEntries"    # [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .param p1, "cloudPrefix"    # Ljava/lang/String;

    .prologue
    .line 169
    array-length v8, p0

    new-array v2, v8, [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 170
    .local v2, "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, p0

    if-ge v5, v8, :cond_8

    .line 171
    aget-object v3, p0, v5

    .line 172
    .local v3, "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    .line 174
    .local v7, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "cloudKey":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "localKey":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "defaultValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 178
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 179
    if-nez v1, :cond_1

    .line 180
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .line 203
    .end local v1    # "defaultValue":Ljava/lang/Object;
    .end local v4    # "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_0
    :goto_1
    aput-object v4, v2, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .restart local v4    # "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v6, v8}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 184
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_2
    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 185
    if-nez v1, :cond_3

    .line 186
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 188
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_3
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v0, v6, v8}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 190
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 191
    if-nez v1, :cond_5

    .line 192
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 194
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_5
    check-cast v1, Ljava/lang/String;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 196
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_6
    const-class v8, Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    if-nez v1, :cond_7

    .line 198
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 200
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_7
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v0, v6, v8, v9}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 205
    .end local v0    # "cloudKey":Ljava/lang/String;
    .end local v3    # "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v4    # "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v6    # "localKey":Ljava/lang/String;
    .end local v7    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-object v2
.end method

.method private static checkCameraId(I)Z
    .locals 3
    .param p0, "cameraId"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    if-gez p0, :cond_0

    .line 64
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cameraId is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static getAvailableCameraIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v1

    .line 158
    .local v1, "backCameraId":I
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v2

    .line 159
    .local v2, "frontCameraId":I
    invoke-static {v1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    invoke-static {v2}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    return-object v0
.end method

.method private static getCloudPrefix(II)Ljava/lang/String;
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "intentType"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    .line 51
    .local v0, "backCameraId":I
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    .line 52
    .local v1, "frontCameraId":I
    if-ne p0, v0, :cond_1

    .line 53
    const/4 p0, 0x0

    .line 59
    .end local v0    # "backCameraId":I
    .end local v1    # "frontCameraId":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera_settings_simple_mode_local_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 54
    .restart local v0    # "backCameraId":I
    .restart local v1    # "frontCameraId":I
    :cond_1
    if-ne p0, v1, :cond_0

    .line 55
    const/4 p0, 0x1

    goto :goto_0
.end method

.method private static getCloudPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    .line 31
    .local v0, "backCameraId":I
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    .line 32
    .local v1, "frontCameraId":I
    if-ne p0, v0, :cond_1

    .line 33
    const/4 p0, 0x0

    .line 39
    .end local v0    # "backCameraId":I
    .end local v1    # "frontCameraId":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera_settings_simple_mode_local_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    invoke-static {p0, p1}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 34
    .restart local v0    # "backCameraId":I
    .restart local v1    # "frontCameraId":I
    :cond_1
    if-ne p0, v1, :cond_0

    .line 35
    const/4 p0, 0x1

    goto :goto_0
.end method

.method private static getSharedPreferencesName(II)Ljava/lang/String;
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "intentType"    # I

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBackupOrRestore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "handler"    # Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;

    .prologue
    .line 133
    const/4 v13, 0x0

    const/4 v14, 0x1

    filled-new-array {v13, v14}, [I

    move-result-object v10

    .line 134
    .local v10, "intentTypes":[I
    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvailableCameraIds()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    array-length v15, v10

    move v14, v13

    :goto_0
    if-ge v14, v15, :cond_2

    aget v9, v10, v14

    .line 136
    .local v9, "intentType":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cameraId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 138
    .local v3, "cameraId":I
    invoke-static {v3, v9}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getSharedPreferencesName(II)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "sharedPrefName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 141
    .local v11, "sharedPref":Landroid/content/SharedPreferences;
    if-eqz v11, :cond_0

    .line 142
    invoke-static {v3, v9}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCloudPrefix(II)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "cloudPrefix":Ljava/lang/String;
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v13, v5}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v7

    .line 144
    .local v7, "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v11, v1, v7}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    goto :goto_1

    .line 135
    .end local v3    # "cameraId":I
    .end local v5    # "cloudPrefix":Ljava/lang/String;
    .end local v7    # "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v11    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v12    # "sharedPrefName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_0

    .line 150
    .end local v4    # "cameraId$iterator":Ljava/util/Iterator;
    .end local v9    # "intentType":I
    :cond_2
    const-string/jumbo v13, "camera_settings_global"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 151
    .local v8, "globalSharedPref":Landroid/content/SharedPreferences;
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-string/jumbo v14, "camera_settings_global"

    invoke-static {v13, v14}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    .line 152
    .local v6, "entriesWithGlobalPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v8, v1, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 153
    return-void
.end method

.method private handleVersion1Restore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "handler"    # Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;

    .prologue
    .line 106
    const/4 v13, 0x0

    const/4 v14, 0x1

    filled-new-array {v13, v14}, [I

    move-result-object v10

    .line 107
    .local v10, "intentTypes":[I
    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvailableCameraIds()Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    array-length v15, v10

    move v14, v13

    :goto_0
    if-ge v14, v15, :cond_3

    aget v9, v10, v14

    .line 109
    .local v9, "intentType":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cameraId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 111
    .local v3, "cameraId":I
    invoke-static {v3, v9}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getSharedPreferencesName(II)Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "sharedPrefName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 114
    .local v11, "sharedPref":Landroid/content/SharedPreferences;
    if-eqz v11, :cond_0

    .line 116
    if-nez v9, :cond_1

    .line 117
    sget-object v13, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    .line 115
    :goto_2
    invoke-static {v3, v13}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCloudPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "cloudPrefix":Ljava/lang/String;
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v13, v5}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v7

    .line 119
    .local v7, "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p2

    invoke-static {v11, v0, v7}, Lcom/android/camera/backup/CameraBackupHelper;->restoreVersion1LocalSettings(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    goto :goto_1

    .line 117
    .end local v5    # "cloudPrefix":Ljava/lang/String;
    .end local v7    # "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_1
    sget-object v13, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    goto :goto_2

    .line 108
    .end local v3    # "cameraId":I
    .end local v11    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v12    # "sharedPrefName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_0

    .line 125
    .end local v4    # "cameraId$iterator":Ljava/util/Iterator;
    .end local v9    # "intentType":I
    :cond_3
    const-string/jumbo v13, "camera_settings_global"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 127
    .local v8, "globalSharedPref":Landroid/content/SharedPreferences;
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-string/jumbo v14, "camera_settings_global"

    invoke-static {v13, v14}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    .line 128
    .local v6, "entriesWithGlobalPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v8, v1, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 129
    return-void
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v0, 0x3

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 78
    const-string/jumbo v1, "CameraSettingsBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackupSettings: localVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCurrentVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    .line 85
    .local v0, "backupHandler":Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    .line 86
    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "packageVersion"    # I

    .prologue
    .line 90
    const-string/jumbo v1, "CameraSettingsBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRestoreSettings: cloudVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    .line 97
    .local v0, "restoreHandler":Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleVersion1Restore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    goto :goto_0
.end method
