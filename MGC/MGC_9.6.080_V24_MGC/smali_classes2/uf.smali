.class final Luf;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lufp;

.field final synthetic c:Lubk;

.field final synthetic d:J


# direct methods
.method public constructor <init>(Lufp;Lubk;JLtzy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Luf;->c:Lubk;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p5}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Luf;->b:Lufp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-wide p3, p0, Luf;->d:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ltzy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

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

    :goto_4
    invoke-virtual {p0, p1}, Luf;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_5
    check-cast p0, Luf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

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
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

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

    nop

    :goto_1
    sget-object p1, Lug;->a:Lufs;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Luf;->a:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v3, v1, v5, v4}, Lrt;-><init>(Lubk;Ltzy;I)V

    goto/32 :goto_22

    nop

    nop

    :goto_5
    iget-object v1, p0, Luf;->c:Lubk;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v2, Lug;->a:Lufs;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, p1, v3, v1}, Lucd;->v(Lufs;Luad;Lubo;I)Lufy;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

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

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_e
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v2, v3, p0}, Lucu;->m(JLubo;Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    iget-wide v1, p0, Luf;->d:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Luf;->a:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    invoke-direct {v3, p1, v5, v4}, Lrt;-><init>(Lufy;Ltzy;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v3, Lrt;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    iget-object p1, p0, Luf;->b:Lufp;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    const v0, 0x17

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Lrt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v3, p0, Luf;->d:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object v1, p0, Luf;->b:Lufp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    invoke-direct/range {v0 .. v5}, Luf;-><init>(Lufp;Lubk;JLtzy;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v0, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Luf;->c:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    move-object v5, p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Luf;

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

    nop

    :goto_10
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method
