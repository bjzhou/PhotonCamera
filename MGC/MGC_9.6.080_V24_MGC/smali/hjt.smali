.class public final Lhjt;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lubk;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:F

.field final synthetic f:I


# direct methods
.method public constructor <init>(IZLubk;Ljava/lang/String;FI)V
    .locals 0

    goto/32 :goto_5

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

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lhjt;->c:Lubk;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

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

    :goto_3
    iput-object p4, p0, Lhjt;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iput p6, p0, Lhjt;->f:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput p1, p0, Lhjt;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p5, p0, Lhjt;->e:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p2, p0, Lhjt;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget p1, p0, Lhjt;->f:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lhjt;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lhjt;->c:Lubk;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iget v4, p0, Lhjt;->e:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static/range {v0 .. v6}, Lhst;->P(IZLubk;Ljava/lang/String;FLblm;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v5, Lblm;

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

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lhjt;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget-boolean v1, p0, Lhjt;->b:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    or-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    move-object v5, p1

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

    nop

    :goto_17
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
