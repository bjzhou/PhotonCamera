.class final Luma;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:[Lujp;

.field final synthetic c:I

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Luis;


# direct methods
.method public constructor <init>([Lujp;ILjava/util/concurrent/atomic/AtomicInteger;Luis;Ltzy;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p4, p0, Luma;->e:Luis;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p3, p0, Luma;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p5}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Luma;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Luma;->b:[Lujp;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Luma;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Luma;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lufs;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Luma;->b:[Lujp;

    nop

    nop

    nop

    iget v1, p0, Luma;->c:I

    nop

    nop

    nop

    nop

    aget-object p1, p1, v1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lulz;

    nop

    nop

    nop

    iget-object v3, p0, Luma;->e:Luis;

    nop

    nop

    nop

    invoke-direct {v2, v3, v1}, Lulz;-><init>(Luis;I)V

    const/4 v1, 0x1

    nop

    nop

    nop

    iput v1, p0, Luma;->a:I

    nop

    nop

    invoke-interface {p1, v2, p0}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Luma;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Luma;->e:Luis;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lucd;->F(Lujg;)V

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_15

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_c
    goto/32 :goto_e

    nop

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    invoke-static {p0}, Lucd;->F(Lujg;)V

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_1
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Luma;->e:Luis;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Luma;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_10

    nop

    :catchall_0
    move-exception p1

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

    :goto_21
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_24
    iget v1, p0, Luma;->a:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Luma;->e:Luis;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {v0 .. v5}, Luma;-><init>([Lujp;ILjava/util/concurrent/atomic/AtomicInteger;Luis;Ltzy;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Luma;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    move-object v0, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Luma;->c:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    move-object v5, p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    return-object p1

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Luma;->b:[Lujp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Luma;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

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
.end method
