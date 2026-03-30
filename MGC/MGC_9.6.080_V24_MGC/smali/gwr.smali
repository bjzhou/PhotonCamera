.class public final Lgwr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lrss;

.field public final c:Loyn;

.field public final d:Lgwx;

.field public final e:Lnxc;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lgwo;

.field public h:Z

.field public final i:Lhoh;


# direct methods
.method public constructor <init>(Lrss;Loyn;Lgwx;Lhoh;Lnxc;Lfwv;)V
    .locals 2

    goto/32 :goto_6

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

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p6}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgwr;->g:Lgwo;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lgwr;->i:Lhoh;

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

    :goto_6
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p3, Lgwp;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p3}, Lows;->d(Lpci;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    nop

    :goto_b
    new-instance p3, Lgqe;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_16

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_e
    invoke-virtual {p6}, Lfwv;->i()Lows;

    move-result-object p1

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

    :goto_f
    invoke-interface {p2, p3, p0}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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

    :goto_10
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object p0

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

    :goto_11
    invoke-interface {p2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p3, p0, Lgwr;->d:Lgwx;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p5, p0, Lgwr;->e:Lnxc;

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

    :goto_14
    const/4 v1, 0x1

    nop

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

    :goto_15
    iput-object v0, p0, Lgwr;->a:Ljava/util/List;

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

    :goto_16
    iput-object v0, p0, Lgwr;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-direct {p3, p0, p4}, Lgwp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v1, p0, Lgwr;->h:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p3}, Lgwr;->a(Lgwq;)Lpci;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lgwr;->b:Lrss;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p0, Lgwr;->c:Loyn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    const/16 p4, 0xa

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

    :goto_22
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p3, p0, p4}, Lgqe;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1

    nop

    :goto_25
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p1, Lgwo;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop
.end method

.method public static final c(Lgwo;Lgwo;)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v0, v1

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Lgwo;->f:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    const v0, 0x15

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_1

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
    goto/32 :goto_4

    nop

    nop

    :goto_d
    iget-boolean p0, p1, Lgwo;->f:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lgwq;)Lpci;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x11

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    iget-object v0, p0, Lgwr;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lfyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

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

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(Lgwo;Z)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lgws;->e()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

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
    goto/32 :goto_19

    nop

    nop

    :goto_5
    if-ne p1, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    iput-boolean p2, p0, Lgwx;->j:Z

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

    :goto_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_a
    iget-object v0, p0, Lgwr;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p2, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lgws;->d()V

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x2

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lgws;->f()V

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const/4 p2, 0x3

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

    :goto_13
    iget-object p0, p0, Lgwr;->d:Lgwx;

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

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p1, p2, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    if-ne p1, p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lgws;->c()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p1, p2, :cond_4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lgwo;->ordinal()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    sget-object p2, Lgwo;->a:Lgwo;

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
.end method
