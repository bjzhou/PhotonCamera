.class final Lbhk;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbhn;

.field private synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbhn;Ltzy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x2

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbhk;->a:Lbhn;

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lufs;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lbhk;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    nop

    :goto_2
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lbhk;

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

    :goto_4
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    check-cast p2, Ltzy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lbhk;->a:Lbhn;

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

    :goto_1
    new-instance v0, Lbhi;

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

    :goto_2
    new-instance v0, Lbhh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lbhj;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v2, v1, v0, v3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    check-cast p1, Lufs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v2, v1, v0, v3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    invoke-static {p1, v2, v1, v0, v3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lbhk;->a:Lbhn;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lbhk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_12
    invoke-direct {v0, p0, v2}, Lbhj;-><init>(Lbhn;Ltzy;)V

    goto/32 :goto_5

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    invoke-direct {v0, v4, v2}, Lbhi;-><init>(Lbhn;Ltzy;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v2}, Lbhh;-><init>(Lbhn;Ltzy;)V

    goto/32 :goto_15

    nop

    nop

    :goto_19
    iget-object v4, p0, Lbhk;->a:Lbhn;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, v0, Lbhk;->b:Ljava/lang/Object;

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

    :goto_1
    invoke-direct {v0, p0, p2}, Lbhk;-><init>(Lbhn;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Lbhk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbhk;->a:Lbhn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop
.end method
