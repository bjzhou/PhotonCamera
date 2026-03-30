.class public final Lkuf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkoj;


# instance fields
.field final synthetic a:Lkug;

.field private final b:Lkub;

.field private final c:Lfvw;

.field private final d:Lpdf;

.field private final e:Llko;


# direct methods
.method public constructor <init>(Lkug;Lkub;Llko;Lfvw;Lpdf;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkuf;->a:Lkug;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lkuf;->e:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkuf;->b:Lkub;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p4, p0, Lkuf;->c:Lfvw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lkmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :cond_0
    :try_start_0
    iget-object v4, p0, Lkuf;->a:Lkug;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkug;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v5, "PictureTakerCommand.run: got captureCommand="

    nop

    nop

    nop

    nop

    invoke-static {v3, v5}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v4, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v5, "collect3AStats"

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, p0, Lkuf;->c:Lfvw;

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    invoke-virtual {v4, v5}, Lfvw;->b(I)V

    iget-object v4, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V

    iget-object v4, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V

    iget-object v4, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    const-string v5, "captureImage"

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, p0, Lkuf;->b:Lkub;

    nop

    iget-object v5, p0, Lkuf;->e:Llko;

    nop

    nop

    invoke-interface {v3, v4, v5}, Lkuc;->c(Lkub;Llko;)V

    iget-object v3, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    iget-object v3, p0, Lkuf;->a:Lkug;

    nop

    iget-object v3, v3, Lkug;->j:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v4, Llyr;->aG:Llze;

    nop

    nop

    nop

    check-cast v3, Llyv;

    nop

    nop

    invoke-virtual {v3, v4}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_1

    nop

    nop

    iget-object v3, p0, Lkuf;->a:Lkug;

    nop

    nop

    nop

    iget-object v3, v3, Lkug;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Lfdn;

    nop

    nop

    nop

    invoke-virtual {v3}, Lfdn;->s()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    iget-object v3, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v4, "FFListener#onImageCaptured"

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lkuf;->a:Lkug;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lkug;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Lfdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfdn;->r()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Licg;

    nop

    nop

    nop

    invoke-interface {v3}, Licg;->c()V

    iget-object v3, p0, Lkuf;->d:Lpdf;

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v4}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2, v1}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Llko;->c:Ljava/lang/Object;

    nop

    nop

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

    :goto_6
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->bYmZhDkNlPL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    iget-object v3, v3, Lkug;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Llko;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_9
    iget-object v0, v0, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkmq;->f:Lows;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    :try_start_1
    iget-object v4, p0, Lkuf;->a:Lkug;

    nop

    iget-object v5, v4, Lkug;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v4, v4, Lkug;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v4}, Lsui;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-interface {v5, v0, v3}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_d
    iget-object v1, v1, Lkug;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lkuf;->e:Llko;

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

    :goto_f
    iget-object v1, v1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, v2}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v3, v2}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    move-object v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "PictureTakerCommand.run: success=false"

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v3, p0, Lkuf;->d:Lpdf;

    nop

    const-string v4, "PictureTakerCommand#run"

    nop

    nop

    nop

    invoke-static {v4}, Lhst;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lkuf;->a:Lkug;

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, v3, Lkug;->b:Ljava/lang/Object;

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v5, 0x3e8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v5, v6, v4}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lkuc;

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v3}, Lkuc;->a()Loyd;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    nop

    nop

    const-string v4, "Take picture was invoked, but the picture taker is not available! Command "

    nop

    invoke-static {v3, v4}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lkuf;->a:Lkug;

    nop

    nop

    iget-object v4, v4, Lkug;->c:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v4, v3}, Lpcu;->d(Ljava/lang/String;)V

    new-instance v4, Lpfi;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lpfi;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Lkub;->close()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Lkuf;->a:Lkug;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    iget-object v2, p0, Lkuf;->b:Lkub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lkuf;->a:Lkug;

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

    :goto_1a
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lkmq;->f:Lows;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v2, "Unknown exception in PictureTaker."

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0, v1}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    throw v0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_30

    nop

    :goto_21
    iget-object p0, p0, Lkuf;->b:Lkub;

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

    :goto_22
    invoke-interface {v0, v2}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lkuf;->e:Llko;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lkuf;->e:Llko;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_2

    nop

    nop

    :goto_26
    iget-object v0, p0, Lkuf;->b:Lkub;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    invoke-interface {v2}, Lkub;->close()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

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

    :goto_29
    invoke-interface {v0}, Lktq;->f()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Lkub;->close()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lkug;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :catch_1
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_6
    new-instance v4, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

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

    :goto_2d
    check-cast p0, Lkmq;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Lkuf;->e:Llko;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2f
    goto/32 :goto_1f

    nop

    nop

    :goto_30
    goto/32 :goto_45

    nop

    nop

    :goto_31
    invoke-interface {v1}, Lkub;->close()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v1}, Lktq;->f()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_33
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :goto_35
    goto/32 :goto_17

    nop

    nop

    :goto_36
    iget-object v1, p0, Lkuf;->a:Lkug;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_37
    check-cast p0, Lkmq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Lktq;->f()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lkuf;->e:Llko;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    :goto_3b
    const v0, 0x9

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lkuf;->a:Lkug;

    nop

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

    :goto_3d
    iget-object p0, p0, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lkuf;->b:Lkub;

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

    :goto_3f
    goto :goto_35

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    iget-object v3, p0, Lkuf;->a:Lkug;

    nop

    nop

    iget-object v3, v3, Lkug;->c:Ljava/lang/Object;

    nop

    const-string v4, "ImageCaptureCommand retrieval timed out"

    nop

    nop

    invoke-interface {v3, v4, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v1, 0x0

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

    :goto_41
    invoke-interface {v1, v0}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_47

    nop

    nop

    :goto_42
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lkuf;->e:Llko;

    nop

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

    :goto_44
    iget-object p0, p0, Lkmq;->f:Lows;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_45
    const-string v0, "PictureTaker command failed: "

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, v1, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lkuf;->e:Llko;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_48
    iget-object v0, v0, Lkug;->c:Ljava/lang/Object;

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

    :goto_49
    new-instance v1, Ljava/lang/RuntimeException;

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

    :goto_4a
    iget-object v0, p0, Lkuf;->e:Llko;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4c
    iget-object v1, p0, Lkuf;->e:Llko;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "PictureTakerCommand"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
