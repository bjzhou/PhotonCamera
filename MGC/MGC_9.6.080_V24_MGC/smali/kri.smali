.class public final Lkri;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkri;->a:Ljava/util/List;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lprw;->d()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Llqw;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lprw;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_17

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

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

    :goto_d
    move v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_21

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_22

    nop

    nop

    :goto_13
    iget-object v0, p1, Llqw;->a:Lprw;

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

    :goto_14
    const/4 v1, 0x0

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

    :goto_15
    move v0, v1

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v1}, Lrgw;->Z(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    const v0, 0x1f

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_1d
    move v1, v2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lkri;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1}, Lrrf;->x(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0}, Lprw;->d()J

    move-result-wide v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p1, Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    if-gez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    :goto_2c
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p1, Llqw;->a:Lprw;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method
