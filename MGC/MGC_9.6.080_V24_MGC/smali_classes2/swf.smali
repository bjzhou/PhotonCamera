.class public final Lswf;
.super Lsfm;
.source "PG"


# instance fields
.field private final a:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lswf;->a:Ljava/util/Collection;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lsfm;-><init>(Ljava/lang/String;)V

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

    nop

    nop
.end method


# virtual methods
.method public final c(Lsej;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Lsel;->c(Lsej;)V

    goto/32 :goto_17

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lsel;->d(Ljava/util/logging/Level;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lswf;->a:Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lsel;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x18

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

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    invoke-virtual {p0}, Lryb;->t()Lscq;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const v1, 0x12

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Lsej;->K()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lryb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_b

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lryb;->t()Lscq;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Lsel;->d(Ljava/util/logging/Level;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lryb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Lsel;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lswf;->a:Ljava/util/Collection;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
