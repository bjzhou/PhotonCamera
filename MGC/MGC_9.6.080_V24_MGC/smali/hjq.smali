.class public final Lhjq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbzz;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:I


# direct methods
.method public constructor <init>(ZLbzz;FFI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lhjq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p5, p0, Lhjq;->e:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lhjq;->d:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhjq;->b:Lbzz;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p3, p0, Lhjq;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, p0, Lhjq;->d:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lhjq;->c:F

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iget-object v1, p0, Lhjq;->b:Lbzz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static/range {v0 .. v5}, Lhst;->O(ZLbzz;FFLblm;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    check-cast v4, Lblm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v5

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

    nop

    :goto_c
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lhjq;->a:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p1, p0, Lhjq;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_15
    const v0, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_e

    nop

    nop
.end method
