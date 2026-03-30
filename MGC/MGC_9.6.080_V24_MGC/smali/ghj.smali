.class public final Lghj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lpdf;

.field public c:Lpcu;

.field public d:Lpic;

.field private final e:Lsuu;

.field private f:Lsui;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lghj;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p1, p0, Lghj;->f:Lsui;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lghj;->c:Lpcu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lsuu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lghj;->b:Lpdf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lpdd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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
    invoke-direct {v0}, Lpdd;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lpcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lpcx;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lghj;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lghj;->e:Lsuu;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    iget-object v0, p0, Lghj;->e:Lsuu;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v3, Lstd;->a:Lstd;

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

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    if-eqz v0, :cond_1

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
    goto/32 :goto_13

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_b
    invoke-direct {v2, p0}, Lghi;-><init>(Lghj;)V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lghj;->d:Lpic;

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

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    iget-object v0, p0, Lghj;->e:Lsuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    iget-object v0, p0, Lghj;->c:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lghj;->f:Lsui;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iget-object p0, p0, Lghj;->f:Lsui;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    new-instance v2, Lghi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v2, v3}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

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

    :goto_1f
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lsuu;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    invoke-static {v2}, Lrrf;->x(Z)V

    goto/32 :goto_d

    nop

    nop
.end method

.method public final b(Ltxm;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, p2}, Lhps;->a(Lpcu;Lsui;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, p1}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    new-instance v1, Lock;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lghj;->c:Lpcu;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_9
    const-string v0, " complete."

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

    :goto_a
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iput-object p1, p0, Lghj;->f:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_d
    iget-object p0, p0, Lghj;->c:Lpcu;

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lghj;->f:Lsui;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, " failed!"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    const/4 v2, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    const-string v1, "Futures.transform: "

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, p0, p2, p1, v2}, Lock;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lghj;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop
.end method

.method public final c(Ltxm;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const v1, 0xd

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lghj;->f:Lsui;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljjr;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, p0, p2, p1, v2}, Ljjr;-><init>(Lghj;Ljava/lang/String;Ltxm;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v0, 0x17

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

    :goto_f
    iget-object p0, p0, Lghj;->a:Ljava/util/concurrent/Executor;

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
.end method
