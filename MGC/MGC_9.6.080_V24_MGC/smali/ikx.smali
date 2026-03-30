.class public final synthetic Likx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lila;


# direct methods
.method public synthetic constructor <init>(Lila;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Likx;->a:Lila;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 11

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    sget-object v5, Lfxh;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v6, "unknown_actual_hal3.txt"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v8, Lsxr;->b:Lsxr;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4
    iget-object v6, v4, Lijr;->b:Lsxr;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5
    goto/16 :goto_45

    nop

    :goto_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_3e

    nop

    nop

    :goto_8
    :try_start_0
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_29

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    iget-object p0, p0, Likx;->a:Lila;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_16

    nop

    :catch_0
    move-exception v4

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v6, Lfxh;->a:Lsdb;

    nop

    nop

    invoke-virtual {v6}, Lscs;->b()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    const-string v7, "dumpMetadata - Failed to close writer."

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0x3b

    nop

    invoke-static {v7, v8, v6, v4}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_8

    nop

    nop

    :catch_1
    move-exception v4

    nop

    nop

    nop

    :try_start_2
    sget-object v7, Lfxh;->a:Lsdb;

    nop

    nop

    invoke-virtual {v7}, Lscs;->b()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v7, v4}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    const/16 v7, 0x3c

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v7}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v7, "dumpMetadata - Failed to dump metadata"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v7}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_11
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v6, "Could not write capture data to file."

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    goto :goto_16

    nop

    nop

    nop

    :catch_2
    move-exception v4

    nop

    nop

    nop

    :try_start_4
    sget-object v6, Lfxh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lscs;->b()Lsdo;

    move-result-object v6

    nop

    const-string v7, "dumpMetadata - Failed to close writer."

    nop

    const/16 v8, 0x3d

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v6, v4}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_16
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v4, Lijr;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lijs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v3, v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1d
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v5

    nop

    :try_start_5
    sget-object v6, Lfxh;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lscs;->b()Lsdo;

    move-result-object v6

    nop

    const-string v7, "dumpMetadata - Failed to close writer."

    nop

    const/16 v8, 0x3e

    nop

    nop

    nop

    invoke-static {v7, v8, v6, v5}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_1e
    throw v4

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lila;->e:Lpdf;

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

    :goto_20
    if-eq v6, v8, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_6
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v8, Lsxr;->a:Lsxr;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v1, "writeDebugMetadata"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    :goto_29
    goto/32 :goto_39

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2b
    monitor-enter v0

    nop

    :try_start_7
    sget-object v1, Lijs;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lijs;->a:Ljava/util/List;

    nop

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v8, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    new-instance v5, Ljava/io/FileWriter;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v5, v8, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v6, Ljava/io/BufferedWriter;

    nop

    nop

    nop

    invoke-direct {v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :try_start_9
    invoke-interface {v4}, Lprk;->g()Ljava/util/List;

    move-result-object v8

    nop

    nop

    nop

    new-array v9, v2, [Ljava/lang/Object;

    nop

    nop

    invoke-static {v7, v9}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    const-string v9, "\n"

    nop

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_3

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    const-string v9, "    %s\n"

    nop

    nop

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v9, "        %s\n"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v8}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lfxh;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-static {v9, v8}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v3, v3, 0x1

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

    :goto_2f
    goto/16 :goto_45

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, v4, Lijr;->d:Lprk;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v6, "viewfinder_actual_hal3.txt"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_45

    nop

    nop

    :goto_34
    goto/32 :goto_44

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    sget-object v8, Lsxr;->c:Lsxr;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_37
    new-instance v8, Ljava/io/File;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v6, v8, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_a
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3b
    iget v7, v4, Lijr;->c:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v9, "  Result frame "

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v6, v7, v5, v4}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_3e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v7, 0x3f

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v6, "payload_burst_actual_hal3.txt"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_41
    if-eq v6, v8, :cond_5

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_42
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1a

    nop

    nop

    :goto_44
    const-string v6, ""

    nop

    nop

    :goto_45
    goto/32 :goto_37

    nop

    nop

    :goto_46
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_47
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v5, v4, Lijr;->a:Ljava/lang/String;

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
.end method
