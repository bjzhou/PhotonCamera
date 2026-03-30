.class public final Lhcr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgb;


# instance fields
.field public final a:Lhco;

.field public final b:Ljava/lang/Runnable;

.field public final c:Lpog;

.field public final d:Ljava/lang/Runnable;

.field private final e:Lowu;

.field private final f:Lhtr;

.field private final g:Lhsp;

.field private final h:Z

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lpoi;

.field private final k:Lhoh;

.field private final l:Lhdn;

.field private final m:Lgvg;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lpog;->b:Lpog;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_e

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

    nop

    nop

    :goto_7
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_d
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhcr;->c:Lpog;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lhcr;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Lgvg;Lhco;Lowu;Lpoi;Lhtr;Lhsp;Lhdn;ZLjava/util/concurrent/atomic/AtomicBoolean;Lpog;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhcr;->k:Lhoh;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iput-object p8, p0, Lhcr;->l:Lhdn;

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

    :goto_2
    iput-object p4, p0, Lhcr;->e:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p12, p0, Lhcr;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p13, p0, Lhcr;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput-object p7, p0, Lhcr;->g:Lhsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p11, p0, Lhcr;->c:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lhcr;->m:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Lhcr;->f:Lhtr;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lhcr;->j:Lpoi;

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

    :goto_b
    iput-boolean p9, p0, Lhcr;->h:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lhcr;->a:Lhco;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p10, p0, Lhcr;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

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
.end method


# virtual methods
.method public final a(Lpdr;J)V
    .locals 4

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lhcr;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhcr;->g:Lhsp;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    :goto_3
    cmp-long v0, p2, v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1, v2}, Lhtr;->e(Ljava/lang/Throwable;)V

    :goto_5
    goto/32 :goto_2a

    nop

    nop

    :goto_6
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean p1, p0, Lhcr;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lgvg;->j()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhcr;->m:Lgvg;

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
    iget-object v2, p0, Lhcr;->k:Lhoh;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    invoke-static {p1}, Lpdr;->e(Lpdr;)Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    goto/32 :goto_39

    nop

    :goto_f
    new-instance v2, Lhts;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10
    invoke-direct {p2, p0, p3}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lhcr;->j:Lpoi;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhcr;->m:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    sget-object p2, Lpog;->b:Lpog;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    const/4 p3, 0x4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lhcr;->c:Lpog;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lhcr;->l:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lhcr;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_22
    iget-object p1, p0, Lhcr;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, v2, v3}, Lhsp;->b(Lpnv;Lhoh;Lpog;)Lpnx;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    invoke-direct {p2, p0, p3}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p0, Lhcr;->c:Lpog;

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

    nop

    nop

    :goto_26
    return-void

    nop

    :goto_27
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ltz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lgvg;->g()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Lhcr;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p2}, Lhdn;->h(Lpog;)V

    goto/32 :goto_21

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2e
    invoke-virtual {p1, p2}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2f
    new-instance p2, Lhbp;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2, v0, p1, p2, p3}, Lhts;-><init>(Lpnx;Lpdr;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p2, p0, Lhcr;->c:Lpog;

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

    :goto_32
    goto/16 :goto_5

    nop

    nop

    :goto_33
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lhcr;->f:Lhtr;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_36
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p2, Lhbp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhcr;->c:Lpog;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lhcr;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lhdn;->g(Lpog;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhcr;->l:Lhdn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
