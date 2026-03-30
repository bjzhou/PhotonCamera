.class public final Lnhv;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbgp;

.field final synthetic c:Lnhe;

.field final synthetic d:Lnhd;

.field final synthetic e:F

.field final synthetic f:Z

.field final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lbgp;Lnhe;Lnhd;FZI)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput p7, p0, Lnhv;->g:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iput-object p3, p0, Lnhv;->c:Lnhe;

    nop

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

    :goto_2
    iput-object p2, p0, Lnhv;->b:Lbgp;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-boolean p6, p0, Lnhv;->f:Z

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput p5, p0, Lnhv;->e:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lnhv;->d:Lnhd;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lnhv;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v5, p0, Lnhv;->f:Z

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnhv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v0 .. v7}, Lnzk;->aH(Ljava/util/List;Lbgp;Lnhe;Lnhd;FZLblm;I)V

    goto/32 :goto_1

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

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v7

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

    nop

    :goto_a
    iget-object v3, p0, Lnhv;->d:Lnhd;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lnhv;->c:Lnhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v6, p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    iget v4, p0, Lnhv;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lnhv;->b:Lbgp;

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

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_17
    check-cast v6, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    iget p1, p0, Lnhv;->g:I

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

    nop
.end method
