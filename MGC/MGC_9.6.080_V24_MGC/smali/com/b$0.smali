.class public Lcom/b$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/io/File;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "ERROR_CLEAR_LOG_FOLDER"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-static {v2}, Lcom/b$0;->a(Ljava/io/File;)V

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    goto/32 :goto_20

    nop

    nop

    :goto_11
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-lt v1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_13
    aget-object v2, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    const-string v4, "failed to delete file: "

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_27

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "not a readable directory: "

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    :goto_23
    const v1, 0x18

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v4, "ERROR_CLEAR_LOG_FOLDER"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_8

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public run()V
    .locals 16

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-direct {v14, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5
    const-string v14, "_"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-static {v6}, Lcom/b$0;->a(Ljava/io/File;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v13, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v13, :cond_0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    :goto_d
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_e
    const-string v14, "/MGC_CRASH_LOG/9.6.080/"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v14, Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    new-instance v13, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_14
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    const-string v9, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_17
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1b
    const-string v8, " "

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v14, ".log"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    const-string v8, "yyyy-MM-dd_HH-mm-ss"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    const-string v8, " "

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    const-string v14, "_"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    const-string v8, " "

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2b
    goto/16 :goto_4

    nop

    nop

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_28

    nop

    nop

    :goto_31
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v6, Ljava/io/File;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_35
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_36
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_37
    const-string v9, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v7, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v11, Ljava/lang/ProcessBuilder;

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    new-array v12, v12, [Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x2

    nop

    nop

    nop

    new-array v12, v12, [Ljava/lang/String;

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    const-string v14, "logcat"

    nop

    nop

    nop

    aput-object v14, v12, v13

    nop

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v14, "-c"

    nop

    nop

    nop

    nop

    aput-object v14, v12, v13

    nop

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    new-instance v11, Ljava/lang/ProcessBuilder;

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    new-array v12, v12, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    nop

    const/4 v12, 0x3

    nop

    nop

    new-array v12, v12, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    const-string v14, "sh"

    nop

    nop

    nop

    nop

    nop

    aput-object v14, v12, v13

    nop

    const/4 v13, 0x1

    nop

    nop

    const-string v14, "-c"

    nop

    nop

    nop

    nop

    nop

    aput-object v14, v12, v13

    nop

    nop

    nop

    nop

    nop

    const-string v13, "bG9nY2F0IC12IGxvbmcgLWIgbWFpbixzeXN0ZW0sZXZlbnRzLGNyYXNoLGtlcm5lbCAqOlYgfCBncmVwIC12ICdJTkZPOkNPTlNPTEUnID4g"

    nop

    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    nop

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    aput-object v14, v12, v13

    nop

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    invoke-static {v7}, Ljava/lang/ProcessBuilder$Redirect;->appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v12

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    const/4 v12, 0x1

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_39
    goto/32 :goto_25

    nop

    nop

    :goto_3a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v9, ""

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3f
    const-string v14, "_"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_40
    new-instance v7, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto/32 :goto_2b

    nop

    nop

    :goto_43
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop
.end method
