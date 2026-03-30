.class public Lgwc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgvz;


# static fields
.field private static final i:Lsdb;


# instance fields
.field public final a:Lgqc;

.field public final b:Lgwh;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public d:I

.field public e:J

.field public f:Lsuu;

.field public g:Lsui;

.field public final h:Lgvo;

.field private final j:Lowr;

.field private final k:Lnep;

.field private final l:Lhco;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "gwc"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    sput-object v0, Lgwc;->i:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lgsn;Lgqf;Lnep;Lgvo;Lhco;Lgwh;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgwc;->k:Lnep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgwc;->j:Lowr;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lgsn;->b()Lowr;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgwc;->a:Lgqc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iput-object p6, p0, Lgwc;->b:Lgwh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lgwc;->h:Lgvo;

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

    :goto_7
    invoke-static {v0}, Lolx;->bf(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iput-object p5, p0, Lgwc;->l:Lhco;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lgwc;->m:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "snapshot-taker"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lgwc;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Lgqf;->a()Lgqc;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxn;)Lsui;
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide v2, p0, Lgwc;->e:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v1, p0, Lgwc;->g:Lsui;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    invoke-virtual {p0, p1, v1}, Lgwc;->c(Llxn;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lgwc;->f:Lsuu;

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

    :goto_10
    iput v0, p0, Lgwc;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_12
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final b(Lpog;Lpcg;)Lsui;
    .locals 0

    goto/32 :goto_3

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
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string p1, "Not implemented."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final c(Llxn;Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

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

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    const-string p2, "Snapshot taker has been closed."

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v1}, Lowr;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_24

    nop

    nop

    :goto_8
    sget-object p1, Lnen;->e:Lnen;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lgwa;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_e
    const/16 v1, 0x35c

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, p0, Lgwc;->d:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lgwc;->k:Lnep;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lnep;->c(Lnen;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lgwc;->m:Z

    nop

    nop

    goto/32 :goto_d

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lgwc;->g:Lsui;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    :goto_18
    goto/32 :goto_12

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lgwc;->l:Lhco;

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

    :goto_1b
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    if-lt v1, v2, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p2, p0, Lgwc;->j:Lowr;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Ljava/lang/IllegalStateException;

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

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lgwc;->f:Lsuu;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lgwc;->d:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "Failed to take snapshot."

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

    :goto_28
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    invoke-virtual {p1, p2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lgwc;->f:Lsuu;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, p0, v0, p1}, Lgwa;-><init>(Lgwc;Lpog;Llxn;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lhco;->a()Lpog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, v1, p1, p2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p1, Lgwc;->i:Lsdb;

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

    :goto_2f
    add-int/lit8 v2, v1, 0x1

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
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lgwc;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgwc;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
