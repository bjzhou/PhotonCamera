.class public final Llwh;
.super Llwf;
.source "PG"


# direct methods
.method public constructor <init>(Llvt;Ljava/lang/String;Lgii;Llxg;)V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v8, p4, Llxg;->a:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const/4 v7, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v1, Llxo;->l:Llxo;

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

    :goto_3
    move-object v3, p3

    nop

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

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {v0 .. v9}, Llvt;->a(Llxo;Ljava/lang/String;Lgii;Llxg;Llqc;Lrss;ZJ)Llvs;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    move-object v4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    const/4 v5, 0x0

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

    nop

    :goto_10
    invoke-direct {p0, p1}, Llwf;-><init>(Llvs;)V

    goto/32 :goto_6

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized X(Lpck;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    invoke-super {p0, p1}, Llwf;->X(Lpck;)V

    invoke-virtual {p0}, Llwf;->Q()V

    iget-object p1, p0, Llwf;->b:Llvs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llwf;->j()Llxm;

    move-result-object v0

    nop

    invoke-virtual {p1, v0}, Llvs;->K(Llxm;)V

    invoke-virtual {p0}, Llwf;->g()Llwb;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {}, Ljrl;->a()Ljrk;

    move-result-object v0

    nop

    invoke-virtual {p0}, Llwf;->k()Llxo;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, v0, Ljrk;->a:Llxo;

    nop

    invoke-virtual {v0}, Ljrk;->a()Ljrl;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Llwb;->c(Ljrl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized s([BLmla;)Lsui;
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    monitor-exit p0

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

    nop

    :goto_5
    const v1, 0x8

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

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->caVdM:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Llwf;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfdo;->M()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Llwf;->J(Ljava/lang/String;)V

    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return-object p1

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    const/4 v2, 0x2

    nop

    nop

    filled-new-array {v2, v1}, [I

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lfdo;->P([I)V

    invoke-virtual {p0}, Llwf;->f()Lgii;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lgii;->b()Lrss;

    move-result-object v0

    nop

    nop

    iput-object v0, p2, Lmla;->c:Lrss;

    nop

    nop

    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lfdo;->Q(I)V

    iget-object p2, p2, Lmla;->b:Lrss;

    nop

    invoke-virtual {p2}, Lrss;->f()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llwf;->ag()Lmjn;

    move-result-object v0

    nop

    iput-object p2, v0, Lmjn;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {p0}, Llwf;->h()Llxc;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llwf;->z()Ljava/util/concurrent/Executor;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Lkss;

    nop

    nop

    const/16 v4, 0x10

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-object v2, p1

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-interface {p2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_b
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
