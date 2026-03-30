.class public Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;
.super Ljha;
.source "PG"

# interfaces
.implements Liyf;
.implements Lfwm;


# static fields
.field public static final a:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

.field public static aa:I

.field public static aba:Ljava/lang/Object;

.field public static abb:Ljava/lang/Object;

.field public static ac:J

.field public static ad:Z

.field private static final z:Lsdb;


# instance fields
.field private A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private B:Z

.field private C:Ljif;

.field private D:Ljik;

.field public s:Lhsg;

.field public t:Lmka;

.field public u:Llyv;

.field public v:Lhoh;

.field public w:Lrkg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v5, v1, Lqph;->a:J

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iget-object v1, v0, Lqsp;->s:Lqsl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lqsp;->l:Lqph;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    cmp-long v3, v3, v5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "com.google.android.apps.camera.legacy.app.activity.main.CameraActivity"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object v3, v0, Lqsp;->g:Lqph;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {}, Lqzk;->f()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v3, v2, Lqph;->a:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v2, v0, Lqsp;->l:Lqph;

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->z:Lsdb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v1, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v3, :cond_4

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    if-nez v3, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v2

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    iget-object v1, v1, Lqsl;->b:Lqph;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    sget-object v0, Lqsp;->a:Lqsp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    iget-wide v3, v2, Lqph;->a:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aba:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    sput-object p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

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

    :goto_2
    new-instance v0, Ljava/util/Date;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljha;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-boolean v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ad:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    sput-wide v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ac:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const-string v0, "0knc5cmWolzL3Fmcv02bj5ibpJWZ0NXYw9yL6MHc0RHa"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/net/URL;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    nop

    nop

    nop

    new-instance v0, Ljava/io/InputStreamReader;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-object v2

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0xe

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    nop

    nop

    nop

    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectInputStream;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    nop

    nop

    if-ltz v2, :cond_1

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    if-ge v3, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    nop

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static a()V
    .locals 4

    goto/32 :goto_8

    nop

    nop

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

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_6

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

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    :try_start_0
    const-string v0, "cmVpbml0X21vZGVfaWQ="

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    nop

    invoke-virtual {v1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    nop

    nop

    nop

    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    check-cast v1, Lnne;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lnne;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "NTAw"

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    nop

    invoke-virtual {v3, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    nop

    nop

    nop

    new-instance v0, Ljava/lang/String;

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Landroid/content/Intent;

    nop

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    nop

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MzI3Njg="

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    nop

    invoke-virtual {v3, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    nop

    nop

    nop

    new-instance v1, Ljava/lang/String;

    nop

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "MjY4NDM1NDU2"

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    nop

    invoke-virtual {v3, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "MA=="

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    nop

    nop

    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast p0, Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_0

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_4

    nop

    nop

    :cond_0
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

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

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static a()Z
    .locals 5

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2
    invoke-static {v3}, Lcom/a;->aa(Ljava/lang/String;)Z

    move-result v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3
    add-long/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, L_021;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->abb:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    sget-wide v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ac:J

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    sput-object v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->abb:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v0}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    :goto_14
    cmp-long v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->n()J

    move-result-wide v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-wide v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ac:J

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    sput-object v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aba:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->k()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    sput-boolean v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ad:Z

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    add-long/2addr v0, v3

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

    nop

    :goto_1d
    cmp-long v0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    add-long/2addr v0, v3

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_24
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    const-string v1, "Y29ubmVjdGl2aXR5"

    nop

    nop

    nop

    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    sget-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    :goto_28
    sget-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aba:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    return v2

    nop

    nop

    :goto_2b
    goto/32 :goto_9

    nop

    nop

    :goto_2c
    check-cast v0, Ljava/lang/String;

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

    :goto_2d
    invoke-static {v0}, L_021;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-wide v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ac:J

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v3, :cond_8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v0}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->o()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->abb:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_36
    const-string v1, "V1d0YVYyUXhXa2hoZWpB"

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

    :goto_37
    if-nez v0, :cond_9

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_a

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b

    nop

    nop

    :goto_39
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    const-string v1, "WWtaV2QxWkhhejA"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3d
    cmp-long v0, v0, v3

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

    :goto_3e
    return v2

    nop

    nop

    :goto_3f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sput-object v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aba:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-wide v3, 0x4d3f6400

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_42
    const-string v3, "bFVwVGk="

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_43
    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a_old()Z
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v7, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    :try_start_0
    const-wide v5, 0x4d3f6400

    nop

    nop

    nop

    add-long/2addr v5, v3

    nop

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v1, v0}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "Y29ubmVjdGl2aXR5"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/net/ConnectivityManager;

    nop

    nop

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x1

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    if-lez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->m()J

    move-result-wide v0

    nop

    nop

    cmp-long v0, v0, v3

    nop

    if-gtz v0, :cond_4

    nop

    nop

    nop

    const-wide v5, 0x4d3f6400

    nop

    nop

    nop

    add-long/2addr v5, v3

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v1, "YkZWd1ZHaz0"

    nop

    nop

    invoke-static {v1, v0}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    nop

    nop

    nop

    sput v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aa:I

    nop

    nop

    nop

    nop

    return v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long v0, v0, v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    return v2

    nop

    nop

    nop

    nop

    :catchall_1
    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    sget v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const-wide v3, 0x4d3f6400

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "YkZWd1ZHaz0"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, "bFVwVGk="

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->n()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    add-long/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1}, Lcom/a;->ab(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_8
    goto/32 :goto_15

    nop

    :goto_1d
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3}, Lcom/a;->aa(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    :goto_21
    sget-wide v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->ac:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static b()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v2

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    :try_start_0
    const/16 v4, 0xa

    nop

    const/16 v5, 0x14

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v1, "files/"

    nop

    nop

    nop

    nop

    const-string v2, ""

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shared_prefs"

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "shad_map_sams"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    if-lt v3, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    sput-object v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aba:Ljava/lang/Object;

    nop

    nop

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-lt v3, v5, :cond_3

    nop

    nop

    nop

    const/16 v3, 0xf

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    sput-object v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->abb:Ljava/lang/Object;

    nop

    nop

    :cond_3
    invoke-static {v2, v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_5
    invoke-static {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    if-lt v3, v4, :cond_1

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    sput-object v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->aba:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    if-lt v3, v5, :cond_1

    nop

    nop

    nop

    const/16 v3, 0xf

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    sput-object v3, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->abb:Ljava/lang/Object;

    nop

    nop

    nop

    return-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    sput-boolean v0, Lhco;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljhy;->dv()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljhy;->cX()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const-string v1, "ReinitModule"

    nop

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

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lcom/a;->h:Ljhy;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lcom/a;->h:Ljhy;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lcom/a;->h:Ljhy;

    nop

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    invoke-virtual {v0}, Ljhy;->cY()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lcom/a;->h:Ljhy;

    nop

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljhy;->dj()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    const v1, 0x6

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-byte v4, v1, v2

    nop

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

    :goto_9
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    aget-byte v4, p0, v3

    nop

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

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v3, v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    array-length v0, p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    new-array v1, v0, [B

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/lang/String;

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

    nop

    :goto_11
    return-object v0

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const v0, 0xf

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    move-object/from16 v3, p0

    nop

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    nop

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Landroid/content/Intent;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ge v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x1e

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    return-object v3

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    return-object v3

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const-string v3, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_6
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/Properties;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    const-string v3, ""

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_f

    nop

    nop

    :catchall_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v3, ""

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    if-nez v3, :cond_1

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

    :cond_1
    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getReinitFileSharedPreferences()Ljava/io/File;

    move-result-object v1

    nop

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    nop

    nop

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getReinitFileSharedPreferences()Ljava/io/File;
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    const-string v1, "files/"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, ""

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    invoke-virtual/range {v1 .. v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string/jumbo v3, "shared_prefs"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

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

    :goto_12
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    const-string/jumbo v0, "reinit_prefs"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :goto_18
    goto/32 :goto_27

    nop

    nop

    :goto_19
    const-string v0, ".ini"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x12

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    return-object v1

    nop

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop
.end method

.method public static k()J
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "V1d0YVYyUXhXa2hoZWpB"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop
.end method

.method public static m()J
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

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

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "YkZWd1ZHaz0"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop
.end method

.method public static n()J
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const-string v0, "bFVwVGk="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public static o()J
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "WWtaV2QxWkhhejA"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a
    goto/16 :goto_2b

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    :goto_c
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_f
    if-nez v3, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/32 :goto_16

    nop

    nop

    :goto_10
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2b

    nop

    nop

    :catch_2
    move-exception v6

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v1, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    goto/16 :goto_2b

    nop

    nop

    :catch_3
    move-exception v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_d

    nop

    nop

    :catch_4
    move-exception v6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    :catch_5
    move-exception v7

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :catch_6
    move-exception v6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    move-object v3, v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v6

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

    :goto_1c
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_1e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    goto :goto_1e

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v6

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

    :goto_26
    if-nez v2, :cond_4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_5

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    :goto_29
    move-object v1, v2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2a
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    :goto_2c
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_2d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v3, v4

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

    :goto_2f
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getReinitFileSharedPreferences()Ljava/io/File;

    move-result-object v0

    nop

    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v5, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string v6, ""

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_26

    nop

    nop

    :goto_30
    const v1, 0xf

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_2d

    nop

    nop

    nop

    nop

    :catch_7
    move-exception v7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v5, Ljava/util/Properties;

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

    :goto_33
    move-object v1, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    throw v6

    nop

    nop

    nop

    nop

    nop

    :catch_8
    move-exception v6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Llyv;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Llyv;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Lhoh;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->v:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Class;)Liyg;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Liyg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Ljif;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Class;)Liyg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->D:Ljik;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Liyg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_0
    iget-object v6, v4, Ljif;->a:Ljip;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lmkv;->e()Lmkv;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-interface {v2, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_4
    iget-object v5, v4, Ljip;->h:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_6
    const v6, 0x7f0e0021

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_7
    iput-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Ljif;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super/range {p0 .. p1}, Ljha;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-static {v6}, Lixj;->c(Lmhz;)Landroid/view/Window;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->isVoiceInteractionRoot()Z

    move-result v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_c
    check-cast v1, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Ljif;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v6, v1, Ljif;->bQ:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v6 .. v16}, Liyi;-><init>(ZZZLnch;Landroid/app/Activity;Lmjv;Lfdn;Lpiz;Llyv;Lrtm;)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_d7

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-wide v9, v1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v10, Lnch;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v6, v4, Ljip;->lk:Lmhz;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v16, v4

    nop

    nop

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

    :goto_17
    check-cast v5, Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_18
    const/4 v6, 0x0

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->z:Lsdb;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v5, v5, Lmkp;->m:J

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_1b
    iget-object v4, v4, Ljif;->a:Ljip;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v6, v5, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1d
    invoke-interface {v6}, Ltur;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v2, Lpzi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Ljha;->s()Lmhz;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v2, Lmkd;->b:Lmkd;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v7, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->s:Lhsg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_22
    iget-object v5, v4, Ljip;->ak:Ltur;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1a

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_25
    iget-object v5, v4, Ljif;->am:Ltur;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v4, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->D:Ljik;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_28
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v4, v4, Ljip;->bT:Ltur;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Ljhk;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v4, 0x91b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v6}, Ltur;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_2e
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v1, Lhsg;->b:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_30
    const-string v7, "bWF4X3NjcmVlbl9icmlnaHRuZXNzX2tleQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v6, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    iput v8, v6, Lmjw;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_34
    iput-object v5, v0, Ljha;->r:Lggp;

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v4, "activityUiInitializer#get"

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->w:Lrkg;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4}, Ldt;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v5, v0, Ljha;->q:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_39
    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3a
    const-string v4, "cameraUiModule#inflate"

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v14, Lpiz;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v1, v4, v2, v5, v6}, Ljif;-><init>(Ljip;Lhon;Lmhz;Lfdo;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {}, Lmhz;->E()Landroid/os/Handler;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v5, v4, Ljip;->h:Ltur;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    :goto_40
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

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

    nop

    nop

    :goto_41
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v5, v6, Lmjw;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_45
    xor-int/2addr v6, v2

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v6, v5, Lmka;->a:Lmjw;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_47
    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->v:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v4}, Ltur;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_4b
    check-cast v16, Llyv;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4c
    move-object v14, v6

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4d
    iget-object v4, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Ljif;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v4, v4, Ljip;->a:Ljip;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_66

    nop

    nop

    :goto_51
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v7, v5}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_53
    iget-object v1, v1, Ljip;->h:Ltur;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v5, v4, Ljip;->F:Ltur;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v5, Lmka;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Ljif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v11, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_58
    iget-object v5, v4, Ljip;->H:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v7, v6, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v2, v3}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v11, v5, Lmka;->b:Lptw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object v10, v5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v4, v1, Ljif;->bQ:Lmhz;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v2, v5, Lnqa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_62
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_63
    invoke-interface {v2, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2b

    nop

    nop

    :goto_65
    move-object v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_66
    new-instance v1, Ljif;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_67
    invoke-interface {v2, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_68
    iput-object v5, v0, Ljha;->o:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_69
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v6, v4, Ljif;->a:Ljip;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_6b
    const-string v2, "activityInitializer#get"

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_6d
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v1, Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6f
    invoke-virtual {v5, v4, v1}, Liyi;->b(Lrss;Landroid/content/Intent;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {v6, v1}, Lfdo;-><init>(Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v13, Lfdn;

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_72
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v5, v1}, Liyi;->a(Landroid/content/Intent;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v6, v6, Ljip;->bW:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_75
    invoke-virtual {v4}, Lmhz;->F()Ldt;

    move-result-object v4

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v2, v6, v1}, Lpzi;-><init>(Lpic;Lpdf;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_78
    iget-object v5, v1, Lhsg;->d:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v6}, Ltur;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_7a
    iput-object v2, v1, Lhsg;->d:Lpci;

    nop

    nop

    :goto_7b
    goto/32 :goto_2f

    nop

    nop

    :goto_7c
    invoke-virtual {v5}, Ljip;->r()Z

    move-result v9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_7e
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v7, v5, Lmka;->d:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-boolean v2, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->B:Z

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v7}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->c(Landroid/app/Activity;)V

    :goto_87
    goto/32 :goto_e8

    nop

    nop

    :goto_88
    iget-object v1, v2, Lpzi;->m:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v2, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->C:Ljif;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v1, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-interface {v1}, Ltur;->a()Ljava/lang/Object;

    move-result-object v1

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

    :goto_8c
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast v5, Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_8e
    iget-object v5, v4, Ljip;->M:Ltur;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    check-cast v5, Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v5, v4, Ljif;->bQ:Lmhz;

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_91
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_93
    check-cast v1, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_94
    iget-object v1, v4, Ljik;->ag:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_95
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_96
    iget-object v1, v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->v:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_97
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_98
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_99
    check-cast v5, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v6, v6, Ljip;->M:Ltur;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lmko;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_9c
    move-object v11, v5

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_9d
    sget-object v1, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_9e
    new-instance v4, Ljik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v1, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v1, v1, Ljif;->ar:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_a2
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    nop

    nop

    :goto_a3
    goto/32 :goto_5f

    nop

    nop

    :goto_a4
    move-object v5, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const/high16 v6, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_a6
    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v1}, Ltur;->a()Ljava/lang/Object;

    move-result-object v1

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

    :goto_a9
    check-cast v5, Lggp;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->s:Lhsg;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v1, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_56

    nop

    nop

    :goto_ad
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_3
    goto/32 :goto_48

    nop

    :goto_ae
    new-instance v7, Lhsg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_af
    check-cast v4, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_b0
    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t:Lmka;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v5, v4, Ljip;->am:Ltur;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b2
    const/16 v6, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-nez v7, :cond_4

    nop

    goto/32 :goto_a3

    nop

    :cond_4
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v4}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/32 :goto_61

    nop

    nop

    :goto_b8
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v5, v1}, Liyi;->d(Lnne;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_ba
    invoke-direct {v5, v1, v6}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v5, v4, Ljip;->an:Ltur;

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v7}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_bd
    new-instance v5, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_be
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-interface {v1, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_82

    nop

    nop

    :goto_c0
    check-cast v5, Lrkg;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-interface {v6}, Ltur;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_c2
    new-instance v6, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_c4
    check-cast v1, Ljhi;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v6, v4, Ljif;->a:Ljip;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_c6
    iget-object v5, v2, Ljif;->a:Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_c7
    iget-object v5, v4, Ljif;->a:Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_c8
    new-instance v2, Lpzi;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_c9
    new-instance v15, Liyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v1

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-boolean v6, v6, Lmjw;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_cc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const-string v5, "setupDefaultActivity#init"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_ce
    new-instance v6, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_cf
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v2, v2, Ljif;->b:Ljif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_d1
    const-string v4, "activityUiInitializer#start"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_d2
    invoke-static {v1}, Lfwt;->f(Landroid/content/Intent;)V

    :goto_d3
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->setRecentsScreenshotEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d4
    add-int/lit8 v8, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v5, v4, Ljip;->i:Ltur;

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_d6
    const-wide/16 v6, 0xbb8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_d7
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_d8
    move-object v6, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_d9
    check-cast v2, Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual/range {p0 .. p0}, Ljha;->r()Lhon;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_dc
    invoke-virtual {v5}, Ljip;->q()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_dd
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_de
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_5
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move-object v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v6, v6, Ljip;->u:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e3
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v2

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    move-object/from16 v15, v16

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-interface {v1}, Ltur;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-direct {v6, v5}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_77

    nop

    nop

    :goto_e7
    invoke-virtual {v12}, Lmjy;->a()Z

    move-result v5

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    return-void

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_ea
    const-string v2, "CameraActivity#onCreate"

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-direct {v12, v5, v6}, Lmjy;-><init>(IZ)V

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v6, v6, Ljip;->hS:Ltur;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iput-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->u:Llyv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_ef
    iget-object v1, v1, Ljif;->a:Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-direct {v7, v5, v6}, Lhsg;-><init>(Lpet;Landroid/os/Handler;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f2
    iget-object v5, v4, Ljip;->lj:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-direct {v1, v4, v2}, Lfdo;-><init>(Landroid/view/LayoutInflater;Lpzi;)V

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual/range {p0 .. p0}, Ljha;->q()Lpdf;

    move-result-object v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v1}, Lghk;->b()Lsui;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f6
    move-object/from16 v7, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f7
    const v7, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    move-object v8, v5

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->isVoiceInteractionRoot()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v5, v4, Ljip;->b:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_fb
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_fc
    const-string v4, "Warning: have Launched outside activity and coming soon finish activity."

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-direct {v5, v7, v2}, Lnqa;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_ff
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v5, v4, Ljif;->a:Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_101
    invoke-interface {v1}, Lghk;->b()Lsui;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v5, v1, v6}, Liyi;->c(Landroid/content/Intent;Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_103
    check-cast v12, Lmjv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_104
    invoke-virtual {v5, v2}, Lpet;->b(Ljava/lang/String;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v5, v1, Lhsg;->a:Lpet;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_106
    const v0, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_107
    if-nez v5, :cond_8

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_108
    new-instance v5, Lhiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;-><init>(JLpty;Lmjy;Lpdf;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v5, v1, v2}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->recordActivityOnCreateStart(J)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v2, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_10d
    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_10e
    iput-object v5, v0, Ljha;->p:Ljow;

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_10f
    const-string v6, "CameraActivity onCreate: "

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-interface {v2, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    new-instance v12, Lmjy;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_113
    move-wide v9, v5

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_114
    iget-object v6, v4, Ljif;->a:Ljip;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_115
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setContentView(I)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_118
    check-cast v5, Lprb;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static {v5}, Ljpd;->c(Lfdo;)Ljow;

    move-result-object v5

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_11a
    iget-object v5, v5, Lmhz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_11b
    new-instance v5, Lnqa;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    iget-object v5, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->t:Lmka;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_11d
    iput-boolean v3, v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->B:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    check-cast v4, Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_120
    sget-object v2, Lhne;->p:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_121
    iget-object v13, v5, Lmka;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_122
    iget-object v5, v4, Ljif;->a:Ljip;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_123
    check-cast v5, Lpet;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_124
    const-string v4, "activityInitializer#start"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_9
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-direct {v4, v5, v2, v1}, Ljik;-><init>(Ljip;Ljif;Lfdo;)V

    goto/32 :goto_27

    nop

    nop

    :goto_127
    invoke-virtual {v5}, Ljip;->s()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop
.end method

.method protected final onDestroy()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {v0}, Lhsg;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->s:Lhsg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Ljha;->onDestroy()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onResume()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Ljha;->onResume()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lmkd;->j:Lmkd;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->v:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->B:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Lmkd;->i:Lmkd;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljpy;->finish()V

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    sget-object v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->b:Lmko;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljmo;->p(Lhoh;)V

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method protected final onStart()V
    .locals 8

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lpdf;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Lhsg;->a()V

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    goto/16 :goto_46

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Lmjy;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v3, v5, :cond_0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_0
    :goto_8
    goto/32 :goto_41

    nop

    nop

    :goto_9
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_13

    nop

    nop

    :goto_a
    invoke-interface {v3, v4}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-interface {v3, v4}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_c
    const v1, 0x10

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

    nop

    nop

    :goto_d
    invoke-virtual {v0, v3, v1, v2, v4}, Lmkp;->j(Ljava/lang/Enum;JLmko;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lmkd;->values()[Lmkd;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->g:Lpdh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->l:Lpty;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    const-string v4, "ShutterButtonEnabled"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_16
    iget v4, v3, Lmjy;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, v1, Lhsg;->c:Lpci;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v6, v1, v2, v7}, Lmkp;->j(Ljava/lang/Enum;JLmko;)V

    :goto_1b
    goto/32 :goto_43

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    const-string v4, "FirstFrameReceived"

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

    :goto_1e
    invoke-super {p0}, Ljha;->onStart()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    const/4 v5, 0x1

    nop

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

    :goto_20
    sget-object v4, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v4, v3, Lmjy;->a:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3}, Lmjy;->b()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_26
    invoke-virtual {v0}, Lrkg;->d()Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->w:Lrkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_29
    invoke-interface {v1}, Lpty;->a()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    aget-object v6, v3, v5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->s:Lhsg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    if-lt v5, v4, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->A:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_18

    nop

    :goto_30
    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    iput-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->f:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_32
    array-length v4, v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_33
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean v7, v6, Lmkd;->w:Z

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_35
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v3, v4}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v2, v1, Lhsg;->c:Lpci;

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    const-string v4, "FirstPreviewFrame"

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

    nop

    :goto_3a
    const-string v4, "CameraActivity onStart: "

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

    nop

    :goto_3b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v1, Lhsg;->a:Lpet;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3, v2}, Lpet;->b(Ljava/lang/String;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v7, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->k:Lmko;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    :goto_40
    sget-object v3, Lmkd;->h:Lmkd;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->o:Lnzk;

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_44
    iput-object v3, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lpdh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_45
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_47
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onStop()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lhsg;->c:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->s:Lhsg;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-interface {v1}, Lpci;->close()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, v0, Lhsg;->c:Lpci;

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lhsg;->a()V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-super {p0}, Ljha;->onStop()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    :goto_e
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected t()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
