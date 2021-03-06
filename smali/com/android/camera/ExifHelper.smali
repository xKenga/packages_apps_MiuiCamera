.class public Lcom/android/camera/ExifHelper;
.super Ljava/lang/Object;
.source "ExifHelper.java"


# static fields
.field private static mDateTimeStampFormat:Ljava/text/DateFormat;

.field private static mGPSDateStampFormat:Ljava/text/DateFormat;

.field private static mGPSTimeStampFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 23
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 24
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 27
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 28
    .local v0, "tzUTC":Ljava/util/TimeZone;
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 29
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDoubleToLaLon(D)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 82
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 83
    .local v0, "degrees":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 84
    .local v2, "minutes":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    div-double v8, v2, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 85
    .local v4, "seconds":D
    const-wide/16 v6, 0x0

    cmpg-double v1, p0, v6

    if-gez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 92
    sparse-switch p0, :sswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 94
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static writeExif(Ljava/lang/String;ILandroid/location/Location;J)V
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "orientation"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "timeTaken"    # J

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/Util;->isPathExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 36
    :cond_0
    const-string/jumbo v6, "ExifHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeExif. the file:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] is not exist or empty"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 39
    :cond_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v6, "GPSDateStamp"

    .line 41
    sget-object v7, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v6, "GPSTimeStamp"

    .line 43
    sget-object v7, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v6, "DateTime"

    .line 45
    sget-object v7, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v6, "Orientation"

    invoke-static {p1}, Lcom/android/camera/ExifHelper;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v6, "Make"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 51
    .local v2, "latValue":D
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 52
    .local v4, "longValue":D
    const-string/jumbo v6, "GPSLatitude"

    invoke-static {v2, v3}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v6, "GPSLongitude"

    invoke-static {v4, v5}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_4

    .line 55
    const-string/jumbo v6, "GPSLatitudeRef"

    const-string/jumbo v7, "N"

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5

    .line 60
    const-string/jumbo v6, "GPSLongitudeRef"

    const-string/jumbo v7, "E"

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v2    # "latValue":D
    .end local v4    # "longValue":D
    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v6, :cond_6

    .line 66
    :cond_3
    const-string/jumbo v6, "Model"

    const-string/jumbo v7, "MiTwo"

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v6, "FocalLength"

    const-string/jumbo v7, "354/100"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_2
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 75
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :goto_3
    return-void

    .line 57
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "latValue":D
    .restart local v4    # "longValue":D
    :cond_4
    const-string/jumbo v6, "GPSLatitudeRef"

    const-string/jumbo v7, "S"

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "latValue":D
    .end local v4    # "longValue":D
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_3

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "latValue":D
    .restart local v4    # "longValue":D
    :cond_5
    const-string/jumbo v6, "GPSLongitudeRef"

    const-string/jumbo v7, "W"

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .end local v2    # "latValue":D
    .end local v4    # "longValue":D
    :cond_6
    const-string/jumbo v6, "Model"

    sget-object v7, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
