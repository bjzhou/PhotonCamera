.class public final Lbvx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpx;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lyj;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Lxa;

.field private final i:Lxa;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(I)V
    .locals 9

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v5, v0, v6}, Lbvy;->a(Lxa;II)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v3, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_28

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_52

    nop

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
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lbvx;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    invoke-interface {v3, v0, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-le p1, v6, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v4, v1}, Lxa;-><init>([B)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_43

    nop

    nop

    :goto_18
    new-instance v5, Lxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_19
    iget v7, v6, Lxa;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

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

    :goto_1b
    if-ge v7, v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    if-eq v8, v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    if-lt v0, p1, :cond_5

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4, v0}, Lxa;->a(I)I

    move-result v7

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    :goto_22
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_23
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v3, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_25
    invoke-virtual {v4, v8}, Lxa;->d(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_26
    invoke-static {v3}, Lrkm;->ag([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    move-object v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lt v7, v8, :cond_7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_7
    :goto_2a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v6, p0, Lbvx;->g:Ljava/util/List;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2c
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v5, v7}, Lxa;->d(I)V

    goto/32 :goto_30

    nop

    nop

    :goto_2f
    invoke-virtual {v5, v7}, Lxa;->d(I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v4, Lxa;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_31
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_33
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, v6}, Lxa;->a(I)I

    move-result v8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v5, v1}, Lxa;-><init>([B)V

    goto/32 :goto_2e

    nop

    nop

    :goto_36
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v5, v0}, Lxa;->a(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_39
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5, v6}, Lxa;->a(I)I

    move-result v8

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

    :goto_3c
    iget-object v0, p0, Lbvx;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_3d
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v6, v2}, Lxa;->a(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v8, v2}, Lxa;->b(I)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_41
    iget-object v6, p0, Lbvx;->i:Lxa;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v7, v2}, Lxa;->b(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_43
    move v0, v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_44
    iget-object v7, p0, Lbvx;->i:Lxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, v8}, Lxa;->d(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_47
    if-lt v6, v2, :cond_9

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

    :cond_9
    goto/32 :goto_38

    nop

    nop

    :goto_48
    move v6, v1

    nop

    :goto_49
    goto/32 :goto_47

    nop

    nop

    :goto_4a
    goto/16 :goto_28

    nop

    :goto_4b
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4d
    invoke-static {v4, v0, v6}, Lbvy;->a(Lxa;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v8, p0, Lbvx;->h:Lxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_50
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_52
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object v4, v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3a

    nop

    nop

    :goto_55
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_44

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbvx;->h:Lxa;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    invoke-direct {p1, v0}, Lxa;-><init>([B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbvx;->g:Ljava/util/List;

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
    new-instance p1, Lxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lbvx;->e:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    new-instance p1, Ljava/util/ArrayList;

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

    nop

    :goto_9
    iput-object p1, p0, Lbvx;->i:Lxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput-object p1, p0, Lbvx;->c:Ljava/util/Set;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lbvx;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lbvx;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/util/ArrayList;

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

    :goto_e
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_f
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_11
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lbvx;->f:Ljava/util/List;

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

    :goto_14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p1, Lxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-direct {p1, v0}, Lxa;-><init>([B)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lbpy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbvx;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

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

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Lbvx;->c:Ljava/util/Set;

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
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lbvx;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lbpy;

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lbpy;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const-string v0, "Compose:abandons"

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

.method public final c()V
    .locals 5

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Compose:onForgotten"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

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

    :goto_3
    const v1, 0x16

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lbvx;->d:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    :goto_9
    if-ge v2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lbpy;

    nop

    nop

    iget-object v4, p0, Lbvx;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lbpy;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_22

    nop

    nop

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_f
    goto :goto_12

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lbvx;->d:Ljava/util/List;

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

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lbvx;->b:Lyj;

    nop

    iget-object v1, p0, Lbvx;->f:Ljava/util/List;

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    :cond_3
    :goto_14
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    if-ltz v1, :cond_0

    nop

    nop

    nop

    iget-object v2, p0, Lbvx;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    instance-of v3, v2, Lbpy;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    iget-object v3, p0, Lbvx;->c:Ljava/util/Set;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v3, v2

    nop

    check-cast v3, Lbpy;

    nop

    nop

    invoke-interface {v3}, Lbpy;->cc()V

    :cond_4
    instance-of v3, v2, Lbli;

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    invoke-virtual {v0, v2}, Lyj;->a(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    check-cast v2, Lbli;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lbli;->c()V

    goto :goto_14

    nop

    nop

    nop

    :cond_5
    check-cast v2, Lbli;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lbli;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lbvx;->f:Ljava/util/List;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    const v0, 0x1

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

    :goto_19
    const-string v0, "Compose:onRemembered"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v0, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v0}, Lbvx;->23ce148e54b083367f51e25c7971761em(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_b

    nop

    :goto_21
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Object;III)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p3}, Lxa;->d(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-lt p4, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lbvx;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-gez p4, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lbvx;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iget-object p0, p0, Lbvx;->i:Lxa;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lbvx;->h:Lxa;

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

    :goto_c
    invoke-virtual {p0, p4}, Lxa;->d(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p2}, Lbvx;->23ce148e54b083367f51e25c7971761em(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
