.class Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraBrightness;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraBrightness;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$CameraBrightnessTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraBrightness;
    .param p2, "-this1"    # Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;)V

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 152
    .local v8, "time":J
    const-string/jumbo v6, ""

    .line 153
    .local v6, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 155
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 156
    .local v5, "proc":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v10

    if-eqz v10, :cond_0

    .line 157
    const-string/jumbo v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exit value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v6

    .line 160
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 161
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 160
    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v2    # "in":Ljava/io/BufferedReader;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 164
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 170
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    move-object v2, v3

    .line 171
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "proc":Ljava/lang/Process;
    :goto_1
    const-string/jumbo v10, "CameraBrightness"

    const-string/jumbo v11, "execCommand InterruptedException"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 177
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-object v6

    .line 167
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "proc":Ljava/lang/Process;
    .restart local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string/jumbo v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "execCommand lcd value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " cost="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 173
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "proc":Ljava/lang/Process;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    .local v2, "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 174
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    const-string/jumbo v10, "CameraBrightness"

    const-string/jumbo v11, "execCommand IOException"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 173
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "proc":Ljava/lang/Process;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getCurrentBackLight()I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "backLight":Ljava/lang/String;
    const/4 v5, 0x0

    .line 109
    .end local v0    # "backLight":Ljava/lang/String;
    .local v5, "tryTimes":I
    :cond_0
    :goto_0
    const-string/jumbo v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    :cond_2
    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentBackLight currentSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 125
    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string/jumbo v7, "config_backlightBits"

    invoke-static {v6, v7}, Lcom/android/camera/CameraBrightness;->-wrap0(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "backLightBits":I
    if-gtz v1, :cond_3

    .line 128
    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string/jumbo v7, "config_backlightBit"

    invoke-static {v6, v7}, Lcom/android/camera/CameraBrightness;->-wrap1(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    .line 130
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v2, v6

    .line 131
    .local v2, "bl":I
    const/16 v6, 0x8

    if-le v1, v6, :cond_7

    .line 132
    add-int/lit8 v4, v1, -0x8

    .line 133
    .local v4, "shift":I
    const/4 v6, 0x1

    shl-int/2addr v6, v4

    if-ge v2, v6, :cond_6

    .line 134
    const/4 v2, 0x1

    .line 138
    :goto_1
    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentBackLight convert to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v2

    .line 113
    .end local v1    # "backLightBits":I
    .end local v2    # "bl":I
    .end local v4    # "shift":I
    :cond_4
    const-string/jumbo v6, "cat sys/class/leds/lcd-backlight/brightness"

    invoke-direct {p0, v6}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "backLight":Ljava/lang/String;
    const-string/jumbo v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v0, :cond_0

    .line 116
    :cond_5
    const-wide/16 v6, 0x12c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "CameraBrightness"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 136
    .end local v0    # "backLight":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "backLightBits":I
    .restart local v2    # "bl":I
    .restart local v4    # "shift":I
    :cond_6
    shr-int/2addr v2, v4

    goto :goto_1

    .line 142
    .end local v4    # "shift":I
    :cond_7
    return v9

    .line 146
    .end local v1    # "backLightBits":I
    .end local v2    # "bl":I
    :cond_8
    return v9
.end method

.method private updateBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 91
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 94
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 95
    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 99
    :goto_0
    const-string/jumbo v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBrightness setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " useDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v3}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    const-string/jumbo v3, " screenBrightness="

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1, p1}, Lcom/android/camera/CameraBrightness;->-set0(Lcom/android/camera/CameraBrightness;I)I

    .line 103
    return-void

    .line 97
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 42
    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doInBackground useDefaultValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v8}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " paused="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v8}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get4(Lcom/android/camera/CameraBrightness;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 44
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getCurrentBackLight()I

    move-result v3

    .line 45
    .local v3, "currentBackLight":I
    const-string/jumbo v6, "CameraBrightness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current back light -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-gtz v3, :cond_0

    .line 47
    return-object v9

    .line 49
    :cond_0
    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-wrap2(Lcom/android/camera/CameraBrightness;)V

    .line 51
    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 52
    .local v4, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 53
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v2, v6, v7

    .line 54
    .local v2, "brightnessF":F
    const/4 v5, 0x0

    .line 55
    .local v5, "lcdbrightness":I
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 56
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 61
    :goto_0
    sub-int v6, v5, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_2

    .line 62
    const-string/jumbo v6, "CameraBrightness"

    const-string/jumbo v7, "doInBackground brightness unchanged"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v9

    .line 58
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    .line 66
    .end local v2    # "brightnessF":F
    .end local v5    # "lcdbrightness":I
    :cond_2
    move v0, v3

    .line 67
    .local v0, "brightness":I
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get3()Landroid/util/Spline;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 68
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get3()Landroid/util/Spline;

    move-result-object v6

    int-to-float v7, v3

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    float-to-int v0, v6

    .line 73
    :cond_3
    const/16 v6, 0xb9

    invoke-static {v0, v12, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x43390000    # 185.0f

    div-float/2addr v6, v7

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    .line 72
    const v7, 0x3dcccccd    # 0.1f

    add-float v1, v7, v6

    .line 74
    .local v1, "brightnessAdjustRatio":F
    int-to-double v6, v0

    float-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 75
    const/16 v6, 0xff

    invoke-static {v0, v12, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 78
    .end local v0    # "brightness":I
    .end local v1    # "brightnessAdjustRatio":F
    .end local v3    # "currentBackLight":I
    .end local v4    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 84
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness(I)V

    .line 87
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
