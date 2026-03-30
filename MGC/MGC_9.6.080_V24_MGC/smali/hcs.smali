.class public final Lhcs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lfkd;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    new-instance v0, Liof;

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

    :goto_4
    iput-object v0, p0, Lhcs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    new-instance v3, Lfty;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Liof;-><init>([B)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, v3}, Lfna;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhcs;->d:Ljava/lang/Object;

    nop

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

    :goto_a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v1}, Lfdn;-><init>([B[C)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Bitmap"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_f
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lfdn;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Lfdo;-><init>([B)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    new-instance v0, Liof;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_30

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Lfdo;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lfkd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lhcs;->i:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    const-string v0, "legacy_append"

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

    :goto_1d
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v3}, Lfty;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lhcs;->e:Ljava/lang/Object;

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

    :goto_20
    new-instance v0, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lfdo;

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

    :goto_22
    invoke-direct {v0, v1, v1}, Lfdo;-><init>([B[B)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_23
    const-string v1, "BitmapDrawable"

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xf

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_25
    iput-object v0, p0, Lhcs;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_26
    const v0, 0x12

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_46

    nop

    nop

    :goto_28
    goto/32 :goto_0

    nop

    nop

    :goto_29
    iput-object v0, p0, Lhcs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v1, v1}, Liof;-><init>([B[B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v1}, Liof;->M(Ljava/util/List;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Ldvb;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v4, v0, v2, v3}, Lfua;-><init>(Lduz;Lftz;Lfuc;)V

    goto/32 :goto_38

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lhcs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_30
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v4, Lfua;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, v2}, Ldvb;-><init>(I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v2, "legacy_prepend_all"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Lhcs;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_36
    const-string v2, "Animation"

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_37
    const/4 v3, 0x2

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

    :goto_38
    iput-object v4, p0, Lhcs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3a
    invoke-direct {v0, v4}, Liof;-><init>(Lduz;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v0, p0, Lhcs;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    const/4 v1, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_41
    iput-object v0, p0, Lhcs;->j:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_42
    invoke-direct {v0}, Lfsi;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Lfsi;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    :goto_46
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p0, Liof;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_49
    new-instance v2, Lfna;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhcs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lhcs;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    iput-object p6, p0, Lhcs;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p10, p0, Lhcs;->j:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p9, p0, Lhcs;->i:Ljava/lang/Object;

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

    :goto_a
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iput-object p4, p0, Lhcs;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p8, p0, Lhcs;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p7, p0, Lhcs;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p3, p0, Lhcs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p2, p0, Lhcs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lfka;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfkd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhcs;->g:Ljava/lang/Object;

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

    :goto_2
    return-object p0

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfkd;->a(Ljava/lang/Object;)Lfka;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/util/List;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lfig;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfdo;->b()Ljava/util/List;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lfdo;

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
    iget-object p0, p0, Lhcs;->b:Ljava/lang/Object;

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

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

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

    :goto_9
    invoke-direct {p0}, Lfig;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;)Ljava/util/List;
    .locals 7

    goto/32 :goto_22

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhcs;->j:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    invoke-interface {v5, p1}, Lfoh;->a(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    sub-int v1, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

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

    :goto_f
    invoke-direct {v0, p1, p0}, Lfih;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Liof;->T(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    check-cast v5, Lfoh;

    nop

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

    :goto_17
    return-object v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    :goto_1f
    new-instance v0, Lfih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1a

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

    :goto_23
    if-lt v4, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_25
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_23

    nop

    nop

    :goto_27
    invoke-direct {p0, p1}, Lfih;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_2f

    nop

    nop

    :goto_29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Lfih;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v1, v2

    nop

    nop

    :goto_30
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Class;Lfjd;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhcs;->a:Ljava/lang/Object;

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
    check-cast p0, Lfdo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lfdo;->e(Ljava/lang/Class;Lfjd;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final e(Ljava/lang/Class;Lfjs;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lfdn;->m(Ljava/lang/Class;Lfjs;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lfdn;

    nop

    nop

    goto/32 :goto_0

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
    iget-object p0, p0, Lhcs;->e:Ljava/lang/Object;

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
.end method

.method public final f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V
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

    :goto_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "legacy_append"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Liof;->U(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Liof;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhcs;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhcs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p4, p2, p3}, Liof;->L(Ljava/lang/String;Lfjr;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p0, Liof;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Lfjf;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhcs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-virtual {p0, p1}, Lfdo;->c(Lfjf;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lfdo;

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

.method public final j(Lfjz;)V
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
    iget-object p0, p0, Lhcs;->g:Ljava/lang/Object;

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
    check-cast p0, Lfkd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfkd;->b(Lfjz;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final k(Ljava/lang/Class;Ljava/lang/Class;Lfrn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhcs;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3}, Lfdo;->h(Ljava/lang/Class;Ljava/lang/Class;Lfrn;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
