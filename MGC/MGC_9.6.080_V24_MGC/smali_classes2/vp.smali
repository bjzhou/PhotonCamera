.class public final Lvp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final a:Lvu;

.field private final b:Ljava/util/Set;

.field private final c:Luen;


# direct methods
.method public constructor <init>(Lvu;)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    iput-object p1, p0, Lvp;->a:Lvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v3, Lqq;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    check-cast v2, Lvs;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    invoke-direct {v3, v2}, Lqq;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Luer;->a:Luer;

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

    :goto_14
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_15
    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-static {v1}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

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
    const v0, 0x10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lvp;->b:Ljava/util/Set;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    new-instance v0, Luen;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lvp;->c:Luen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    iget v2, v2, Lvs;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p1, Lvu;->d:Ljava/util/List;

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

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    :goto_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_4
    iget v0, v0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lvp;->a:Lvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Lvr;->c()V

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    check-cast v3, Lvs;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v4, p0, Lvp;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Luen;->a(ZZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    :goto_14
    const v0, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lvu;->c:Lvq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lvp;->c:Luen;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lvp;->a:Lvu;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    iget v5, v3, Lvs;->a:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v6, Lqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    check-cast v0, Ltzh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lvu;->d:Ljava/util/List;

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

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lvr;->c()V

    goto/32 :goto_18

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v3, Lvu;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    invoke-direct {v6, v5}, Lqq;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_24
    iget-object v3, p0, Lvp;->a:Lvu;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    return v1

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0}, Lvp;->a()Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    const-string v1, "! This indicates a memory leak and could cause the camera to stall, or images to be lost."

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :goto_5
    invoke-static {p0, v0, v1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "Failed to close "

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lvp;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    const v1, 0x10

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

    nop

    nop

    :goto_11
    const-string v0, "CXCP"

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lvp;->a:Lvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0}, Lvu;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
