.class final Lbfe;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lbfe;->b:I

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

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbfe;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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
    sub-int/2addr v4, v6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lcpo;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iget v6, v5, Lcpp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

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

    :goto_9
    goto/16 :goto_19

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v5, Lcpp;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v5, v2, v4}, Lcpo;->f(Lcpo;Lcpp;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-int/lit8 v4, v4, 0x2

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

    :goto_e
    goto/32 :goto_6

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-lt v3, v1, :cond_0

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

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_12
    iget-object v0, p0, Lbfe;->a:Ljava/util/ArrayList;

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

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v4, p0, Lbfe;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
