.class public Lhqs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:Llxn;

.field public final c:Llxo;

.field public final d:Lj$/util/Optional;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Z

.field public g:Lj$/time/Instant;

.field final synthetic h:Lhqu;

.field private final i:Lj$/time/Instant;

.field private j:Lj$/time/Instant;

.field private k:I

.field private l:Lpdh;

.field private m:Lpdj;


# direct methods
.method public constructor <init>(Lhqu;Llxn;Lj$/time/Instant;Lj$/util/Optional;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhqs;->m:Lpdj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lhqs;->f:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sget-object p1, Lj$/time/Instant;->MIN:Lj$/time/Instant;

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput v0, p0, Lhqs;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhqs;->l:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v0, p2, Llxn;->b:J

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    :goto_e
    iput-object p1, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iput-object p3, p0, Lhqs;->i:Lj$/time/Instant;

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
    sget-object p1, Lpdj;->a:Lpdj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    iget-object p1, p2, Llxn;->d:Llxo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lhqs;->c:Llxo;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_15
    iput-object p2, p0, Lhqs;->b:Llxn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iput-object p3, p0, Lhqs;->g:Lj$/time/Instant;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p4, p0, Lhqs;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p1, Lpdh;->a:Lpdh;

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

    :goto_1e
    iput-wide v0, p0, Lhqs;->a:J

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lhqs;->j:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public a()Lsui;
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "persisted"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1, v2, v3, v0}, Lhra;->a(JLj$/time/Instant;)Lsui;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Lpdh;->a()V

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v2}, Lhqs;->d(Lj$/time/Instant;Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v2, p0, Lhqs;->a:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lhqs;->l:Lpdh;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v1, Lhqu;->h:Lhra;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lpdh;->a:Lpdh;

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_12
    iget-object v1, p0, Lhqs;->h:Lhqu;

    nop

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

    :goto_13
    iget-object v1, p0, Lhqs;->l:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, "PERSISTED"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lsue;->a:Lsui;

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lhqu;->f:Lj$/time/Clock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    const v1, 0xb

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

    :goto_1f
    const/4 v2, 0x0

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

    :goto_20
    iget-object v1, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v1}, Lhqs;->e(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public b()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
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

    :goto_1
    const-string v0, "deleted"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v1

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

    :goto_3
    invoke-virtual {p0, v0}, Lhqs;->e(Ljava/lang/String;)V

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v1, Lhqu;->f:Lj$/time/Clock;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Lhqs;->a:J

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

    :goto_10
    iget-object v0, v0, Lhqu;->h:Lhra;

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

    :goto_11
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_13
    const-string v0, "DELETED"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    iget-object v0, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    goto/16 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    :goto_18
    const v1, 0x13

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

    nop

    :goto_19
    iget-object v1, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lhqs;->h:Lhqu;

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

    :goto_1b
    invoke-interface {v0, v2, v3, v1}, Lhra;->d(JLj$/time/Instant;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1, v0}, Lhqs;->d(Lj$/time/Instant;Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, p1}, Lhqs;->d(Lj$/time/Instant;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object v0, v0, Lhqu;->f:Lj$/time/Clock;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public d(Lj$/time/Instant;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-wide v1, p0, Lhqs;->a:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, v0, Lhqu;->h:Lhra;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    iput-object p1, p0, Lhqs;->g:Lj$/time/Instant;

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

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_a
    iget-object v0, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v1, v2, p1, p2}, Lhra;->e(JLj$/time/Instant;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const v0, 0x12

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

    :goto_11
    invoke-virtual {p0, p2}, Lhqs;->f(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final e(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lhqs;->b:Llxn;

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const-string v0, "%s() on shot %d (%s), but it was already finished."

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lhqs;->a:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-static {v0, p1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    iget-object p0, p0, Lhqu;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    const v1, 0x17

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

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_5

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    iget-object p0, p0, Lhqu;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-static {v0, p1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const-string v0, "On shot %d (%s) tried to log \'%s\', but shot was already finished."

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

    :goto_b
    iget-object v1, p0, Lhqs;->b:Llxn;

    nop

    nop

    goto/32 :goto_12

    nop

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

    nop

    :goto_d
    goto/32 :goto_10

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Lpcu;->g(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    iget-wide v0, p0, Lhqs;->a:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public g(Ljava/lang/Integer;)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    const-string v4, "onShotProgress "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

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

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lhqs;->h:Lhqu;

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
    iget-object p0, p1, Lhqu;->h:Lhra;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_b
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0x1

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

    nop

    :goto_d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lhqs;->e(Ljava/lang/String;)V

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-interface {v1, p1}, Lpdj;->c(I)V

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    :goto_14
    iput v0, p0, Lhqs;->k:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    const-string v1, " ("

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lhqs;->g:Lj$/time/Instant;

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

    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, ")"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lhqs;->b:Llxn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lhqs;->j:Lj$/time/Instant;

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

    nop

    :goto_1c
    sget-object p1, Lhqu;->b:Lj$/time/Duration;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string p1, "makingProgress"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    iget v0, p0, Lhqs;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_23
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_1

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lhqs;->m:Lpdj;

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

    :goto_29
    iget v2, p0, Lhqs;->k:I

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

    :goto_2a
    iget-object p1, p0, Lhqs;->j:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2c
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lhqu;->f:Lj$/time/Clock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p1}, Lj$/time/Instant;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    iget-wide v1, p0, Lhqs;->a:J

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

    :goto_32
    invoke-interface {p0, v1, v2, v0}, Lhra;->f(JLj$/time/Instant;)V

    goto/32 :goto_35

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lhqu;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    :goto_36
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop
.end method

.method public h(Lj$/time/Instant;)V
    .locals 3

    goto/32 :goto_14

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

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

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

    :goto_8
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-wide v1, p0, Lhqs;->a:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-interface {p0, v1, v2, p1}, Lhra;->h(JLj$/time/Instant;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lhqs;->f:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

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

    :goto_11
    const-string p1, "markStuck"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, v0, Lhqu;->h:Lhra;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Lhqs;->e(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public i()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string v4, "Shot #"

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

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    const-string v0, "started"

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

    :goto_5
    iget-object v2, p0, Lhqs;->i:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lhqs;->m:Lpdj;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v1, p0, Lhqs;->a:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lhqs;->b:Llxn;

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1, v2, v3}, Lhra;->i(Llxn;Lj$/time/Instant;Llxo;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    const-string v4, "ShotProgress #"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lhqu;->h:Lhra;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v1}, Lpdf;->b(Ljava/lang/String;)Lpdj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lhqs;->l:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_1e
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lhqs;->c:Llxo;

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

    nop

    :goto_20
    iget-object v0, v0, Lhqu;->e:Lpdf;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0}, Lhqs;->e(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    nop

    :goto_28
    iget-wide v1, p0, Lhqs;->a:J

    nop

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

    :goto_29
    iget-object v0, v0, Lhqu;->e:Lpdf;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public j()V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    iget-wide v2, p0, Lhqs;->a:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhqs;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :goto_5
    iget-object v1, p0, Lhqs;->h:Lhqu;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1, v0}, Lhqs;->d(Lj$/time/Instant;Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

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

    :goto_c
    iget-object v0, p0, Lhqs;->h:Lhqu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v1

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

    :goto_12
    iget-object v0, v0, Lhqu;->h:Lhra;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-interface {v0, v2, v3, v1}, Lhra;->c(JLj$/time/Instant;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    const-string v0, "canceled"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v1, Lhqu;->f:Lj$/time/Clock;

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

    :goto_18
    const v1, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lhqs;->e(Ljava/lang/String;)V

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "CANCELED"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
