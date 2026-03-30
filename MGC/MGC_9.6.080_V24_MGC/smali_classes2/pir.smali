.class public final Lpir;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpgo;

.field public final b:Ljava/util/Set;

.field public c:Lpgi;

.field private final d:Ljava/util/List;

.field private e:Lpro;

.field private f:I

.field private g:Z

.field private h:Z

.field private final i:Lhdn;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(Lpuq;)V
    .locals 20

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v12, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v3, p1

    nop

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

    :goto_2
    iget-object v2, v0, Lpir;->i:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iget-boolean v1, v0, Lpir;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x0

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

    :goto_7
    iget-object v1, v0, Lpir;->c:Lpgi;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    xor-int/lit8 v19, v0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

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

    :goto_a
    move/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_f
    const/4 v4, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    xor-int/lit8 v16, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

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

    :goto_12
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v17, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    move-object/from16 v0, p0

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

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v18, v2

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

    :goto_1f
    if-ne v1, v3, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-virtual/range {v11 .. v19}, Lhdn;->R(Lpuq;ZZLpgi;ZLpro;ZZ)V

    goto/32 :goto_1a

    nop

    nop

    :goto_22
    invoke-direct/range {p0 .. p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v0

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

    :goto_23
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    iget-object v11, v0, Lpir;->i:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    iget-object v3, v0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    invoke-virtual/range {v2 .. v10}, Lhdn;->R(Lpuq;ZZLpgi;ZLpro;ZZ)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x19

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

    :goto_2a
    iget v1, v0, Lpir;->f:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x0

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

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1d

    nop

    nop
.end method

.method public constructor <init>(Lhdn;Lpgo;Ljava/util/Set;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iput-object v0, p0, Lpir;->e:Lpro;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lpir;->c:Lpgi;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lpir;->a:Lpgo;

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

    :goto_c
    iput-object p1, p0, Lpir;->i:Lhdn;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_f
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, p0, Lpir;->h:Z

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

.method private final d116db4599d9ddc8c35e61366a4f4967m()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpir;->c:Lpgi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lpir;->g:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, p0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    iget v0, p0, Lpir;->f:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static o(Lpic;Lpgo;Ljava/util/Set;)Lpir;
    .locals 4

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Lpgo;->d()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_6
    check-cast v1, Lpmo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v3, v1, p1}, Lqrg;->E(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lpmo;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lpgo;->d()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    invoke-interface {v1}, Lpmo;->d()Lphh;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, p1, p2}, Lpir;-><init>(Lhdn;Lpgo;Ljava/util/Set;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lpic;->a:Ljava/lang/Object;

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

    :goto_18
    goto :goto_1b

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    new-instance v0, Lpir;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_27
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x1

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

    :goto_29
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

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

    :goto_2b
    check-cast p0, Lhdn;

    nop

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

    :goto_2c
    invoke-interface {v1}, Lpmo;->d()Lphh;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Lqrg;->B(Z)V

    goto/32 :goto_15

    nop

    nop

    :goto_2e
    invoke-static {p2}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1, v0}, Lpmo;->k(Lpir;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_33
    const-string v3, "%s is not present in %s"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)Lpci;
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v5}, Lows;->d(Lpci;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_5
    goto/32 :goto_35

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v5, Lpmo;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v6, v3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_36

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lpir;->b:Ljava/util/Set;

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

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v1

    nop

    :goto_1b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    :goto_1e
    move v6, v2

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

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    invoke-interface {v5}, Lpmo;->b()Lpci;

    move-result-object v5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_10

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    :goto_25
    const v1, 0x12

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    :goto_27
    invoke-interface {v5}, Lpmo;->a()Lpci;

    move-result-object v5

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lpmo;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Lows;

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

    :goto_2f
    return-object p0

    nop

    :goto_30
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0}, Lpmo;->b()Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_34
    return-object v1

    nop

    nop

    :goto_35
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_36
    or-int/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_37
    invoke-interface {p0}, Lpmo;->a()Lpci;

    move-result-object p0

    nop

    nop

    :goto_38
    goto/32 :goto_2f

    nop

    nop

    :goto_39
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3c
    if-nez v5, :cond_7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3d
    goto :goto_32

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez p1, :cond_8

    nop

    goto/32 :goto_19

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final b()Lpci;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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
    return-object p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lpir;->a(Z)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized c(Lphh;)Lpmo;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown stream "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested for "

    nop

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    const v1, 0x9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpmo;

    nop

    nop

    nop

    invoke-interface {v1}, Lpmo;->d()Lphh;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()Lpro;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpir;->e:Lpro;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lphh;)Lprw;
    .locals 1

    goto/32 :goto_2

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, p1}, Lpir;->f(Lphh;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lphk;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lphk;->b:Lprw;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Lphh;)Ljava/util/List;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v0, p0, Lpir;->f:I

    nop

    nop

    iget-object v1, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lpir;->h:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, p1}, Lpir;->c(Lphh;)Lpmo;

    move-result-object p1

    nop

    nop

    invoke-interface {p1}, Lpmo;->h()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_b
    :try_start_5
    sget p1, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()V
    .locals 2

    goto/32 :goto_7

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_1
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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

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

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Lpir;->h:Z

    nop

    if-nez v0, :cond_1

    nop

    nop

    invoke-direct {p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lpir;->h:Z

    nop

    nop

    nop

    iget-object v0, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lpuq;

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lpir;->132cd3b981019b59dc42653eea0b34b4m(Lpuq;)V

    goto :goto_d

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Lpir;->d:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method final h()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    invoke-interface {p0}, Lpci;->close()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lpir;->a(Z)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final declared-synchronized i()V
    .locals 11

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v1, 0x1f

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

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_1
    iget v0, p0, Lpir;->f:I

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    add-int/2addr v0, v1

    nop

    nop

    nop

    iput v0, p0, Lpir;->f:I

    nop

    nop

    iget-object v2, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-gt v0, v2, :cond_1

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    :goto_8
    invoke-static {v1}, Lqrg;->B(Z)V

    iget v0, p0, Lpir;->f:I

    nop

    nop

    nop

    iget-object v1, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_3

    nop

    invoke-direct {p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v0

    nop

    iget-object v1, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    move-object v3, v2

    nop

    nop

    nop

    check-cast v3, Lpuq;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpir;->i:Lhdn;

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    const/4 v9, 0x1

    nop

    const/4 v4, 0x0

    nop

    const/4 v5, 0x0

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    move v10, v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v2 .. v10}, Lhdn;->R(Lpuq;ZZLpgi;ZLpro;ZZ)V

    goto :goto_9

    nop

    :cond_2
    if-eqz v0, :cond_3

    nop

    nop

    iget-object v0, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method public final declared-synchronized j(Lpgi;)V
    .locals 10

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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
    monitor-exit p0

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

    :goto_2
    return-void

    nop

    :cond_0
    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Lqrg;->B(Z)V

    iget-boolean v1, p0, Lpir;->h:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    iget-object v1, p0, Lpir;->c:Lpgi;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    move v1, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    :cond_1
    move v1, v2

    nop

    nop

    :goto_8
    new-array v3, v2, [Ljava/lang/Object;

    nop

    const-string v4, "FrameId should only be set once"

    nop

    nop

    invoke-static {v1, v4, v3}, Lqrg;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lpir;->e:Lpro;

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    move v1, v0

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move v1, v2

    nop

    nop

    :goto_9
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    sget-object v3, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->FinGznMrfitKyj:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v1, v3, v2}, Lqrg;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lpir;->g:Z

    nop

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->jDthFkojjX:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, p1}, Lqrg;->C(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iput-object p1, p0, Lpir;->c:Lpgi;

    nop

    nop

    iget-object v0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpmo;

    nop

    nop

    invoke-interface {v1, p1}, Lpmo;->j(Lpgi;)V

    goto :goto_a

    nop

    nop

    nop

    :cond_4
    iget-boolean p1, p0, Lpir;->h:Z

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    goto/16 :goto_3

    nop

    :cond_5
    invoke-direct {p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result p1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lpuq;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpir;->i:Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpir;->c:Lpgi;

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    move v8, p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v8}, Lhdn;->R(Lpuq;ZZLpgi;ZLpro;ZZ)V

    goto :goto_b

    nop

    :cond_6
    if-eqz p1, :cond_0

    nop

    nop

    iget-object p1, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_7

    nop

    goto/32 :goto_10

    nop

    :cond_7
    goto/32 :goto_f

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final declared-synchronized k(Lpro;)V
    .locals 13

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpir;->h:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v0, 0x0

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    iget-object v2, p0, Lpir;->c:Lpgi;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_2
    move v2, v0

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_3
    :goto_d
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    const-string v3, "setFrameId must ALWAYS come before setMetadata."

    nop

    nop

    nop

    invoke-static {v2, v3, v0}, Lqrg;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lpir;->g:Z

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    iget-object v2, p0, Lpir;->c:Lpgi;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Metadata was already set for frame %s!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v3, v2}, Lqrg;->C(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lpir;->g:Z

    nop

    iput-object p1, p0, Lpir;->e:Lpro;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    move-object v5, v1

    nop

    check-cast v5, Lpuq;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpir;->i:Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, p0, Lpir;->e:Lpro;

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v9, 0x1

    nop

    move v12, p1

    nop

    nop

    nop

    invoke-virtual/range {v4 .. v12}, Lhdn;->R(Lpuq;ZZLpgi;ZLpro;ZZ)V

    goto :goto_f

    nop

    nop

    nop

    :cond_4
    if-eqz p1, :cond_0

    nop

    iget-object p1, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop
.end method

.method public final declared-synchronized l()Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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
    goto :goto_9

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lpir;->h:Z

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized m()Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const/4 p0, 0x1

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_3
    return p0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    :goto_9
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

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

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpir;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iget v1, p0, Lpir;->f:I

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    if-eq v1, v0, :cond_1

    nop

    nop

    nop

    invoke-virtual {p0}, Lpir;->l()Z

    move-result v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized n()Z
    .locals 1

    goto/32 :goto_a

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

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

    nop

    nop

    :goto_5
    goto :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpir;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lpir;->l()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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
.end method

.method public final declared-synchronized p(Lpuq;)V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lpir;->d116db4599d9ddc8c35e61366a4f4967m()Z

    move-result v8

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lpir;->h:Z

    nop

    if-eqz v0, :cond_0

    nop

    if-eqz v8, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    :cond_2
    invoke-direct {p0, p1}, Lpir;->132cd3b981019b59dc42653eea0b34b4m(Lpuq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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
    if-eqz v8, :cond_3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    iget-object v0, p0, Lpir;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    iget-object v0, p0, Lpir;->i:Lhdn;

    nop

    nop

    nop

    iget-object v4, p0, Lpir;->c:Lpgi;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    const/4 v2, 0x0

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    move v3, v1

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    move v3, v2

    nop

    nop

    :goto_e
    iget-boolean v5, p0, Lpir;->g:Z

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lpir;->e:Lpro;

    nop

    iget v7, p0, Lpir;->f:I

    nop

    iget-object v9, p0, Lpir;->b:Ljava/util/Set;

    nop

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    nop

    nop

    if-ne v7, v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    move v7, v1

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_5
    move v7, v2

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v8}, Lhdn;->R(Lpuq;ZZLpgi;ZLpro;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_10
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpir;->c:Lpgi;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_0
    iget-wide v0, v0, Lpgi;->c:J

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    :goto_6
    const-string v1, "Frame-"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop
.end method
