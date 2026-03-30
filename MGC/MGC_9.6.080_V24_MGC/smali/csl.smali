.class public final Lcsl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Lj$/util/List;
.implements Lucv;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:[J

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-array v1, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lcsl;->c:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v0, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Lcsl;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lcsl;->b:[J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    new-array v0, v0, [J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()J
    .locals 7

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ltz v4, :cond_0

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    aget-wide v4, v4, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

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

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-le v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_22

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_14

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

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

    :goto_11
    goto :goto_1a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-wide v0, v4

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    :goto_15
    cmpg-float v4, v4, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Lcsl;->c:I

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

    :goto_19
    return-wide v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v1}, Lcsf;->c(J)Z

    move-result v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v4, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1}, Lcsm;->a(FZ)J

    move-result-wide v0

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

    nop

    :goto_1f
    invoke-static {v4, v5, v0, v1}, Lcsf;->b(JJ)I

    move-result v6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_20
    if-ne v2, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    :goto_21
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, p0, Lcsl;->b:[J

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

    :goto_23
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    if-gez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    :goto_26
    invoke-static {v0, v1}, Lcsf;->a(J)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, La;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, La;->b()Z

    move-result p0

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
    return p0

    nop

    nop
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-static {}, La;->l()Z

    move-result p0

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
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, La;->c()Z

    move-result p0

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

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {}, La;->i()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, La;->i()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(I)Lbzy;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcsl;->a:[Ljava/lang/Object;

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

    :goto_2
    check-cast p0, Lbzy;

    nop

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

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    aget-object p0, p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    if-ge v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_2
    array-length v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcsl;->b:[J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lcsl;->c:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcsl;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lcsl;->b:[J

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lcsl;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    add-int/lit8 v2, v2, 0x10

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

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final clear()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcsl;->d()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcsl;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

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

    goto/32 :goto_13

    nop

    nop

    :goto_1
    check-cast p1, Lbzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcsl;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    if-ne p0, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

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

    :goto_8
    instance-of v0, p1, Lbzy;

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
    const/4 p1, -0x1

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
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lbzy;

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

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lcsl;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    :goto_0
    iget-object v2, p0, Lcsl;->a:[Ljava/lang/Object;

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

    :goto_1
    const/4 v3, 0x0

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

    :goto_2
    iget v0, p0, Lcsl;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_4
    iput v0, p0, Lcsl;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    iget v0, p0, Lcsl;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto :goto_10

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

    :goto_c
    const v1, 0x14

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

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-le v0, v1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    :goto_10
    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    aput-object v3, v2, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final e(FZ)Z
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

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

    :goto_1
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v1

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

    :goto_2
    invoke-static {p1, p2}, Lcsm;->a(FZ)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p1, p2}, Lcsf;->b(JJ)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    const v0, 0x1b

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcsl;->a()J

    move-result-wide v0

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
    iget v0, p0, Lcsl;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    if-gtz p0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
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
    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcsl;->b(I)Lbzy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    move v1, v2

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
    return v1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

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

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    return v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lbzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    if-gez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    iget-object v3, p0, Lcsl;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-static {v3, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

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

    nop

    :goto_13
    add-int v0, v0, v1

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

    nop

    :goto_14
    aget-object v3, v3, v2

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

    nop

    :goto_15
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v0

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

    :goto_16
    if-ne v2, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, -0x1

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

    :goto_18
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_19
    goto/16 :goto_6

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    instance-of v0, p1, Lbzy;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_2

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lcsl;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    new-instance v0, Lcsj;

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

    :goto_4
    return-object v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1, v2}, Lcsj;-><init>(Lcsl;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const v1, 0x8

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

    :goto_c
    const/4 v2, 0x7

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

    :goto_d
    goto/32 :goto_9

    nop

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-gez v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

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

    :goto_5
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    instance-of v0, p1, Lbzy;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_19

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    move v1, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    :goto_f
    goto :goto_c

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lcsl;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v2, v2, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    :goto_16
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    const v1, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v0

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lbzy;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lcsj;

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

    :goto_7
    const v1, 0x17

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, v1, v2}, Lcsj;-><init>(Lcsl;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    new-instance v0, Lcsj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    invoke-direct {v0, p0, p1, v1}, Lcsj;-><init>(Lcsl;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

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

    nop

    nop
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {}, La;->e()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {}, La;->b()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-static {}, La;->c()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic removeFirst()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, La;->f()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

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

.method public final synthetic removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final bridge synthetic removeLast()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, La;->f()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, La;->j()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, La;->c()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {}, La;->g()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_1

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
    iget p0, p0, Lcsl;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final sort(Ljava/util/Comparator;)V
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

    :goto_1
    invoke-static {}, La;->k()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic spliterator()Lj$/util/Spliterator;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/List$-CC;->$default$spliterator(Ljava/util/List;)Lj$/util/Spliterator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final synthetic stream()Lj$/util/stream/Stream;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

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

.method public final subList(II)Ljava/util/List;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcsk;-><init>(Lcsl;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcsk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lucc;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lucc;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method
