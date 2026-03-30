.class public final synthetic Lqci;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lpwl;

.field public final synthetic e:Lpwn;

.field public final synthetic f:Lhdn;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lhdn;Landroid/net/Uri;Lpwl;Lpwn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqci;->a:Landroid/content/Context;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object p4, p0, Lqci;->c:Landroid/net/Uri;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lqci;->f:Lhdn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Lqci;->e:Lpwn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p2, p0, Lqci;->b:Ljava/lang/String;

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

    :goto_7
    iput-object p5, p0, Lqci;->d:Lpwl;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 7

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "AndroidSharingUtil"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v6, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v2, v0}, Lqck;-><init>(ILjava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v0}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget p0, Lqbq;->a:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_49

    nop

    nop

    nop

    :catchall_0
    move-exception v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9
    goto/16 :goto_49

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x16

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "System limit exceeded for file %s, group %s"

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
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_49

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lraa;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4a

    nop

    nop

    :goto_15
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_16
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_17
    const-string v0, "Error while copying file %s, group %s, to the shared blob storage"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v2, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    const-string v1, "%s: Malformed lease uri file %s, file group %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lqci;->a:Landroid/content/Context;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1d
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_2
    move-exception v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    const-string v1, "%s: Failed to copy to the blobstore after download for file %s, file group %s"

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    iget-object p0, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    new-instance p0, Lqck;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v6, Lpwl;->c:Ljava/lang/String;

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

    :goto_27
    const-string p0, "UnsupportedFileStorageOperation was thrown: "

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_29
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    const-string v0, "Malformed blob Uri for file %s, group %s"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, v0}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v6, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2d
    iget-object v2, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_2f
    iget-object v4, p0, Lqci;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Lraa;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_31
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v2, 0x19

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

    nop

    :goto_36
    iget-object v2, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_37
    iget-object v0, v6, Lpwl;->c:Ljava/lang/String;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_39
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "%s: Failed to share after download for file %s, file group %s due to LimitExceededException"

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, v6, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3f
    iget-object v5, p0, Lqci;->c:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_42
    throw p0

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_44
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x19

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    :goto_47
    iget-object v2, p0, Lpwn;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_48
    const/16 v2, 0x18

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4a
    iget-object v1, v6, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto :goto_4c

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v3

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Lraa; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lqzx; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lqzy; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4e
    iget-object v3, p0, Lqci;->f:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v6, p0, Lqci;->d:Lpwl;

    nop

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

    :goto_50
    iget-object v0, v6, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_52
    invoke-static {v1, v0}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    :goto_53
    iget-object p0, p0, Lqci;->e:Lpwn;

    nop

    :try_start_5
    invoke-static {v2, v4}, Lpuq;->D(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    new-instance v4, Lras;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Lras;-><init>()V

    invoke-virtual {v3, v5, v4}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/io/InputStream;

    nop
    :try_end_5
    .catch Lraa; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lqzx; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lqzy; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    new-instance v5, Lraw;

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Lraw;-><init>()V

    invoke-virtual {v3, v2, v5}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/io/OutputStream;

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v4, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Lraa; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lqzx; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lqzy; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop
.end method
