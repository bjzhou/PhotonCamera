.class public final Lnhs;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lnbh;

.field final synthetic b:Laed;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:I


# direct methods
.method public constructor <init>(Lnbh;Laed;IIJJI)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p7, p0, Lnhs;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput p9, p0, Lnhs;->g:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iput-wide p5, p0, Lnhs;->e:J

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput p3, p0, Lnhs;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lnhs;->a:Lnbh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lnhs;->b:Laed;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p4, p0, Lnhs;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_13

    nop

    nop

    :goto_0
    iget p1, p0, Lnhs;->g:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_7
    move-object v8, p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lnhs;->b:Laed;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v4, p0, Lnhs;->e:J

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

    :goto_a
    const v1, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    iget-wide v6, p0, Lnhs;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-static {p0}, Lbpd;->a(I)I

    move-result v9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    or-int/lit8 p0, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v8, Lblm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iget v2, p0, Lnhs;->c:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    const v0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-static/range {v0 .. v9}, Lnzk;->aE(Lnbh;Laed;IIJJLblm;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, p0, Lnhs;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnhs;->a:Lnbh;

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop
.end method
