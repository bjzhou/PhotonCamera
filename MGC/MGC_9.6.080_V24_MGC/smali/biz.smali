.class final Lbiz;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbic;

.field final synthetic b:Lbjd;

.field final synthetic c:Lbjo;

.field final synthetic d:Lbjv;

.field final synthetic e:Lubo;

.field final synthetic f:I


# direct methods
.method public constructor <init>(Lbic;Lbjd;Lbjo;Lbjv;Lubo;I)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lbiz;->e:Lubo;

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

    :goto_1
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lbiz;->d:Lbjv;

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

    nop

    :goto_3
    iput-object p3, p0, Lbiz;->c:Lbjo;

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

    :goto_4
    iput-object p2, p0, Lbiz;->b:Lbjd;

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
    iput p6, p0, Lbiz;->f:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lbiz;->a:Lbic;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Lbiz;->e:Lubo;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lbiz;->c:Lbjo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    move-object v5, p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    check-cast v5, Lblm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lbiz;->a:Lbic;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_17

    nop

    nop

    :goto_e
    iget-object v3, p0, Lbiz;->d:Lbjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    const v1, 0x7

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

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-static/range {v0 .. v6}, Lbja;->a(Lbic;Lbjd;Lbjo;Lbjv;Lubo;Lblm;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_14
    iget-object v1, p0, Lbiz;->b:Lbjd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v6

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

    :goto_17
    iget p1, p0, Lbiz;->f:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
