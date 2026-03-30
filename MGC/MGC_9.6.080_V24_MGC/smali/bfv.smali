.class final Lbfv;
.super Luar;
.source "PG"

# interfaces
.implements Lubp;


# instance fields
.field synthetic a:F

.field final synthetic b:Lbgp;

.field private synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbgp;Ltzy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_1

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
    iput-object p1, p0, Lbfv;->b:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p1, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p0, p0, Lbfv;->b:Lbgp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

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

    :goto_2
    new-instance v0, Lbfv;

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
    iput-object p1, v0, Lbfv;->c:Ljava/lang/Object;

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

    :goto_4
    check-cast p2, Ljava/lang/Number;

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

    :goto_5
    check-cast p1, Lufs;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    iput p2, v0, Lbfv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Lbfv;->bX(Ljava/lang/Object;)Ljava/lang/Object;

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

    :goto_a
    check-cast p3, Ltzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, p3}, Lbfv;-><init>(Lbgp;Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbfv;->b:Lbgp;

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

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lbfv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v2, v0, v1, p0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lbfu;

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

    :goto_11
    iget-object p1, p0, Lbfv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_13
    invoke-direct {v1, v0, p0, v2}, Lbfu;-><init>(Lbgp;FLtzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

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

    nop
.end method
