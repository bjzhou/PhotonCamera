.class final Lbdw;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lubo;

.field final synthetic c:Lubp;

.field final synthetic d:Lubo;

.field final synthetic e:Lubo;

.field final synthetic f:Laqq;

.field final synthetic g:Lubo;

.field final synthetic h:I


# direct methods
.method public constructor <init>(ILubo;Lubp;Lubo;Lubo;Laqq;Lubo;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p5, p0, Lbdw;->e:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lbdw;->d:Lubo;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lbdw;->a:I

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput p8, p0, Lbdw;->h:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Lbdw;->g:Lubo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lbdw;->b:Lubo;

    nop

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

    :goto_7
    iput-object p6, p0, Lbdw;->f:Laqq;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x2

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

    :goto_a
    iput-object p3, p0, Lbdw;->c:Lubp;

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v7, Lblm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v2, p0, Lbdw;->c:Lubp;

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

    :goto_2
    move-object v7, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget v0, p0, Lbdw;->a:I

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    check-cast p2, Ljava/lang/Number;

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

    :goto_c
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Lbdw;->d:Lubo;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Lbpd;->a(I)I

    move-result v8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Lbdw;->f:Laqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    iget p1, p0, Lbdw;->h:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lbdw;->b:Lubo;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v4, p0, Lbdw;->e:Lubo;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v6, p0, Lbdw;->g:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    invoke-static/range {v0 .. v8}, Lbdx;->c(ILubo;Lubp;Lubo;Lubo;Laqq;Lubo;Lblm;I)V

    goto/32 :goto_17

    nop

    nop
.end method
