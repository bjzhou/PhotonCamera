.class public Lrua;
.super Lrwu;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Lrvg;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public transient a:Ljava/util/Map;

.field public transient b:Lrua;

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Set;

.field private transient e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lrua;->i(Ljava/util/Map;Ljava/util/Map;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrwu;-><init>()V

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
.end method

.method public constructor <init>(Ljava/util/Map;Lrua;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Lrwu;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p2, p0, Lrua;->b:Lrua;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    throw p0

    nop
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop
.end method

.method public final clear()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrua;->b:Lrua;

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

    nop

    :goto_5
    iget-object v0, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrua;->b:Lrua;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lrwu;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d()Lrvg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrua;->b:Lrua;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrua;->h(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_3
    iget-object v0, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lrtw;-><init>(Lrua;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrua;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lrua;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lrtw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final f()Ljava/util/Map;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final g()Ljava/util/Set;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrua;->d:Ljava/util/Set;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrtz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lrtz;-><init>(Lrua;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object v0, p0, Lrua;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrua;->a:Ljava/util/Map;

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

    :goto_3
    iget-object p0, p0, Lrua;->b:Lrua;

    nop

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
.end method

.method final i(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    move v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lrtx;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrua;->a:Ljava/util/Map;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

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

    :goto_11
    move v0, v1

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

    nop

    :goto_12
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_15
    move v0, v2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

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

    nop

    :goto_18
    const v1, 0x1d

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    if-ne p1, p2, :cond_3

    nop

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

    :goto_1a
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    :goto_1d
    goto :goto_1c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p1, p2, p0}, Lrtx;-><init>(Ljava/util/Map;Lrua;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_21

    nop

    nop

    :goto_21
    iget-object v0, p0, Lrua;->b:Lrua;

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

    :goto_22
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lrua;->a:Ljava/util/Map;

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

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Lrua;->b:Lrua;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final j(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrua;->a:Ljava/util/Map;

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
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_5

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
    iget-object p0, p0, Lrua;->b:Lrua;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p3}, Lrua;->h(Ljava/lang/Object;)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Lrty;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrua;->c:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object v0, p0, Lrua;->c:Ljava/util/Set;

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Lrty;-><init>(Lrua;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0, v1, p2}, Lrua;->j(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lrwu;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lrua;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, "value already present: %s"

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

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v2, p2}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    xor-int/lit8 v1, v1, 0x1

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

    :goto_10
    invoke-virtual {p0, p2}, Lrua;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    :goto_11
    return-object p2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lrua;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-virtual {p0, p2}, Lrwu;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2, v1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    return-object v1

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lrwu;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/16 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1d

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1, v0}, Lrwu;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lrua;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lrwu;->containsKey(Ljava/lang/Object;)Z

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

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrua;->g()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
