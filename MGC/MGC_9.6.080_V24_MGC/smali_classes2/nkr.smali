.class public final Lnkr;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lnkl;

.field final synthetic b:Luaz;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:I


# direct methods
.method public constructor <init>(Lnkl;Luaz;FFI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnkr;->a:Lnkl;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lnkr;->c:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnkr;->b:Luaz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput p5, p0, Lnkr;->e:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p4, p0, Lnkr;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const/4 p1, 0x2

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1
    iget v2, p0, Lnkr;->c:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v1, 0x16

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

    :goto_3
    iget-object v1, p0, Lnkr;->b:Luaz;

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

    :goto_4
    invoke-static/range {v0 .. v5}, Lnzk;->ar(Lnkl;Luaz;FFLblm;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_5
    or-int/lit8 p0, p1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lbpd;->a(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v4, Lblm;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    iget p1, p0, Lnkr;->e:I

    nop

    nop

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

    :goto_c
    const v0, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Lnkr;->d:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnkr;->a:Lnkl;

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

    :goto_12
    move-object v4, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
