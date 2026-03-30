.class public final Lbvh;
.super Ltys;
.source "PG"

# interfaces
.implements Lj$/util/Set;
.implements Lbtq;


# static fields
.field public static final a:Lbvh;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Lbui;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    const v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lbvh;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    sput-object v0, Lbvh;->a:Lbvh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v2, Lbui;->a:Lbui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lbvk;->a:Lbvk;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v1, v2}, Lbvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lbui;)V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lbui;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltys;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p3, p0, Lbvh;->d:Lbui;

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

    :goto_3
    iput-object p2, p0, Lbvh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lbvh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lbvh;->d:Lbui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltyn;->e()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)Lbtq;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, v0, v3}, Lbvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v3, Lbvk;->a:Lbvk;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    check-cast v1, Lbvg;

    nop

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

    :goto_5
    sget-object v1, Lbvk;->a:Lbvk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lbvh;->d:Lbui;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1, p1, p0}, Lbvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lbui;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, p1}, Lbvg;->a(Ljava/lang/Object;)Lbvg;

    move-result-object v1

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

    :goto_9
    invoke-direct {v1, p0, p1, v0}, Lbvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lbui;)V

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v1}, Lbvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ltyi;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    new-instance v0, Lbvh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1, v0}, Lbui;->f(Ljava/lang/Object;Ljava/lang/Object;)Lbui;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const v1, 0x13

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

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    iget-object v0, p0, Lbvh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Ltyn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Lbvh;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lbvh;->d:Lbui;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p1, v2}, Lbui;->f(Ljava/lang/Object;Ljava/lang/Object;)Lbui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_22
    iget-object p0, p0, Lbvh;->d:Lbui;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v2, Lbvg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lbvh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v0, v1}, Lbui;->f(Ljava/lang/Object;Ljava/lang/Object;)Lbui;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Ltyn;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lbvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    iget-object v2, p0, Lbvh;->d:Lbui;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;)Lbtq;
    .locals 5

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ltyn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget-object p1, v0, Lbvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v1, Lbui;->b:Lbuz;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v3, p1, v2}, Lbuz;->j(ILjava/lang/Object;I)Lbuz;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object p1, p0, Lbvh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c
    iget-object v3, v0, Lbvg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, v0, Lbvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    check-cast p1, Lbvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_f
    iget-object v2, v0, Lbvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    new-instance v2, Lbui;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3e

    nop

    nop

    :goto_13
    iget-object v0, p0, Lbvh;->d:Lbui;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_15
    invoke-direct {v4, v3, p1}, Lbvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lbvg;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_19
    invoke-virtual {v0}, Lbvg;->b()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p1, p0, v1}, Lbvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lbui;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1d
    new-instance v0, Lbvh;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    iget-object p1, v0, Lbvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, v1, Lbui;->b:Lbuz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lbvg;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lbvh;->c:Ljava/lang/Object;

    nop

    nop

    :goto_25
    goto/32 :goto_1d

    nop

    nop

    :goto_26
    new-instance v4, Lbvg;

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

    :goto_27
    invoke-virtual {v0}, Lbvg;->c()Z

    move-result p1

    nop

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

    :goto_28
    goto :goto_30

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ltyn;->e()I

    move-result v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, v0, Lbvg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v1, v2

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lbvh;->d:Lbui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

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

    :goto_34
    iget-object p1, p1, Lbvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v2, p1, v1}, Lbui;-><init>(Lbuz;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_32

    nop

    nop

    :goto_38
    sget-object v1, Lbui;->a:Lbui;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1f

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Lbvg;->b()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v2, p1}, Lbui;->f(Ljava/lang/Object;Ljava/lang/Object;)Lbui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v0, Lbvg;->a:Ljava/lang/Object;

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

    :goto_3f
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2, v4}, Lbui;->f(Ljava/lang/Object;Ljava/lang/Object;)Lbui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, v0, Lbvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    :goto_44
    goto/16 :goto_30

    nop

    :goto_45
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v3}, Lbvg;->a(Ljava/lang/Object;)Lbvg;

    move-result-object p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4d
    if-eq v2, p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x18

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Lbvg;->c()Z

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltyn;->containsKey(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_1
    iget-object p0, p0, Lbvh;->d:Lbui;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, p0}, Lbvi;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lbvi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lbvh;->d:Lbui;

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

    :goto_7
    const v0, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
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

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lbvh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    const v1, 0xe

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
.end method
