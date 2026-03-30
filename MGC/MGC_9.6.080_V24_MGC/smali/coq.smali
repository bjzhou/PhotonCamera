.class final Lcoq;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcou;


# direct methods
.method public constructor <init>(Lcou;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcoq;->a:Lcou;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Lcqf;->b()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-ge v0, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_e
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Lcou;->l:Lbtg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lcoq;->a:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    :goto_17
    iget-object v1, p0, Lcoq;->a:Lcou;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v0}, Lbtg;->a(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Lcou;->e:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    check-cast p1, Lcqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method
