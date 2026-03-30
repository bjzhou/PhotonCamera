.class final Lbxi;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbxi;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v2, Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

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

    :goto_b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lbxi;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_11

    nop
.end method
