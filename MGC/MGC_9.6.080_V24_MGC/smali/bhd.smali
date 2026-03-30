.class final Lbhd;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbhn;

.field final synthetic c:Lbhe;

.field final synthetic d:Laod;


# direct methods
.method public constructor <init>(Lbhn;Lbhe;Laod;Ltzy;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p1, 0x2

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

    nop

    nop

    :goto_2
    iput-object p2, p0, Lbhd;->c:Lbhe;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p4}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lbhd;->d:Laod;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p1, p0, Lbhd;->b:Lbhn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lbhd;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    check-cast p0, Lbhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lbhd;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lbhe;->a:Lyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lbhd;->c:Lbhe;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lbhd;->d:Laod;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lbhd;->c:Lbhe;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lyg;->g(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lbhd;->c:Lbhe;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Lcsh;->a(Lcsg;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lbhd;->d:Laod;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lcsh;->a(Lcsg;)V

    goto/32 :goto_17

    nop

    nop

    :goto_16
    iget-object p0, p0, Lbhd;->c:Lbhe;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Lyg;->g(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    :goto_19
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_1a
    throw p1

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Luag;->a:Luag;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_20
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lbhd;->b:Lbhn;

    nop

    const/4 v1, 0x1

    nop

    nop

    iput v1, p0, Lbhd;->a:I

    nop

    nop

    invoke-virtual {p1, p0}, Lbhn;->a(Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Lbhe;->a:Lyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    :try_start_1
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lbhd;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lbhd;->c:Lbhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lbhd;->d:Laod;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    const v0, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lbhd;->b:Lbhn;

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    invoke-direct {p1, v0, v1, p0, p2}, Lbhd;-><init>(Lbhn;Lbhe;Laod;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
