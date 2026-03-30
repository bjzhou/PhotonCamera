.class public final Lmnf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmne;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Lcom/google/android/apps/camera/stats/Instrumentation;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/stats/Instrumentation;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/io/File;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iput-object p1, p0, Lmnf;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lmnf;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    const-string v1, "/sdcard/camera_test_score/"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 8

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v4, p1, v5, v3, v1}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lmne;->a:Lsdb;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3
    const/16 v5, 0x11a9

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0x11aa

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    throw p1

    nop

    :goto_a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Wrong file name: %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3e

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    new-instance p1, Lorg/json/JSONObject;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_10

    nop

    :catch_1
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v5, Lmnf;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    const-string v6, "The value is not an array: %s"

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x11a8

    nop

    nop

    nop

    nop

    invoke-static {v6, p1, v7, v5, v4}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    new-instance v4, Lorg/json/JSONArray;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_10
    invoke-virtual {v1}, Lmnd;->ordinal()I

    move-result v5

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    if-ne v5, v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lmkd;->t:Lmkd;

    nop

    invoke-virtual {p0, v1}, Lmnf;->b(Lmkd;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    const-string v0, "Shouldn\'t be reached: The switch statement should cover "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    nop

    :cond_2
    sget-object v1, Lmkd;->q:Lmkd;

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lmnf;->b(Lmkd;)I

    move-result v1

    nop

    nop

    :goto_11
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    nop

    nop

    nop

    new-instance v0, Ljava/io/FileWriter;

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    goto/32 :goto_52

    nop

    :cond_3
    goto/32 :goto_51

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_18
    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_19
    const/16 v1, 0x11ab

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1f
    sget v0, Lryb;->d:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v0, Lmnf;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_24
    const-string v1, "No score type given"

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_26
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v1, "com.google.android.apps.camera.testing.prod.scoreprint.OUT_FILE_NAME"

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

    nop

    :goto_2b
    goto/16 :goto_74

    nop

    nop

    nop

    :catch_3
    move-exception v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_5b

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_31
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_32
    const-string v0, "com.google.android.apps.camera.testing.prod.scoreprint.SCORE_TYPE"

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    const/16 v1, 0x11a6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_36
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_37
    iget-object v1, p0, Lmnf;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_38
    move-object p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_39
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    :goto_3a
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object p0, Lmnf;->a:Lsdb;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3c
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3f
    sget-object p1, Lmne;->a:Lsdb;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_42
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

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

    nop

    :goto_44
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v1, 0x11a4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_49
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v0, Lmne;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4f
    if-eqz p1, :cond_9

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_51
    goto/32 :goto_7c

    nop

    :goto_52
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_58
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p1, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_3e

    nop

    :goto_5b
    :try_start_6
    new-instance v1, Lrxw;

    nop

    nop

    nop

    invoke-direct {v1}, Lrxw;-><init>()V

    const-string v2, ","

    nop

    invoke-static {v2}, Lrth;->c(Ljava/lang/String;)Lrth;

    move-result-object v2

    nop

    invoke-virtual {v2, v0}, Lrth;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/String;

    nop

    const-class v4, Lmnd;

    nop

    nop

    invoke-static {v4, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lmnd;

    nop

    nop

    invoke-virtual {v1, v3}, Lrxw;->h(Ljava/lang/Object;)V

    goto :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v1}, Lrxw;->g()Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v0, 0x15

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_5e
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance p1, Lorg/json/JSONObject;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_61
    const-string v4, "Invalid JSON data: %s"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_62
    goto :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_63
    :try_start_7
    new-instance p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lshf;->h(Ljava/io/File;)[B

    move-result-object v1

    nop

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_64
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    throw p1

    nop

    :catch_4
    move-exception p0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_68
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    :goto_69
    if-eqz p1, :cond_b

    nop

    goto/32 :goto_63

    nop

    :cond_b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object v3, Lmnf;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6b
    const-string v1, "No file name given"

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_a

    nop

    :goto_6d
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6e
    const-string v3, "Unknown type:%s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    throw p1

    nop

    nop

    :catch_5
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string v1, "Intent needs some extra parameters"

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_72
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_74
    :try_start_9
    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lmnd;

    nop

    invoke-virtual {v1}, Lmnd;->name()Ljava/lang/String;

    move-result-object v3

    nop
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    nop

    nop

    nop
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_76
    const/16 v4, 0x11a5

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_77
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_79
    invoke-static {v3, v0, v4, v2, v1}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_3a

    nop

    :goto_80
    goto/32 :goto_39

    nop

    nop
.end method

.method final b(Lmkd;)I
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    const-class v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    sub-long/2addr v0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmnf;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const-class v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/stats/Instrumentation;->e(Ljava/lang/Class;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p0, Lmnf;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    long-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    const-string p1, "No CameraActivitySession has recorded."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_1c
    const/16 v4, 0x2f9

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    :goto_20
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lmnf;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_22
    aput-object p1, v2, v4

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    const v1, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x0

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

    :goto_26
    iget-wide p0, p0, Lmkp;->m:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/stats/Instrumentation;->a(Ljava/lang/Class;)Lcom/google/android/apps/camera/stats/timing/TimingSession;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_28
    const/16 p1, 0x11a7

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method
