.class final Lrm;
.super Luar;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field a:I

.field final synthetic b:Lufy;


# direct methods
.method public constructor <init>(Lufy;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrm;->b:Lufy;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lrm;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrm;->b:Lufy;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ltzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lrm;

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

    :goto_5
    invoke-direct {v0, p0, p1}, Lrm;-><init>(Lufy;Ltzy;)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    :goto_8
    iget-object p1, p0, Lrm;->b:Lufy;

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

    :goto_9
    goto :goto_7

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
    invoke-interface {p1, p0}, Lufy;->eI(Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

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

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_f
    iput v1, p0, Lrm;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    :goto_11
    iget v1, p0, Lrm;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-object p1

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
