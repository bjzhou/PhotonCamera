.class public Lljo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final a:Lows;

.field public final b:Lhoh;

.field public final c:Lhwy;

.field private final e:Likv;

.field private final f:Llgc;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/util/List;)Ljava/util/Set;
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    check-cast v1, Lpge;

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

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

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

    :goto_e
    return-object v0

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Lljo;->b(Lpge;)Z

    move-result v1

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

    :goto_12
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
    sput-object v0, Lljo;->d:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "ljo"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhwy;Likv;Llgc;Lhoh;Lows;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p2, p0, Lljo;->e:Likv;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lljo;->b:Lhoh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lljo;->a:Lows;

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
    iput-object p3, p0, Lljo;->f:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p1, p0, Lljo;->c:Lhwy;

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


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v5, Loel;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lljo;->b:Lhoh;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6
    check-cast v2, Lpge;

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

    :goto_7
    if-nez v2, :cond_1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2}, Lpge;->d()Lpro;

    move-result-object v3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2, v1}, Likv;->t(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_12
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_14
    const v0, 0xd

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_24

    nop

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v4, p0, Lljo;->f:Llgc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lhmu;->ao:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1}, Lljo;->33f5b80483094659737b73d90f80a8a4m(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v5}, Loel;->d()Lphh;

    move-result-object v2

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

    :goto_1d
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Lljo;->e:Likv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :goto_21
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, p0, Lljo;->e:Likv;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_27
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p0, Lljo;->d:Lsdb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2b
    invoke-interface {v4, v3, v2}, Likv;->c(Lpro;Lpnx;)I

    move-result v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, p1}, Lljo;->33f5b80483094659737b73d90f80a8a4m(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_31
    if-eq p0, p1, :cond_3

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_35
    const/16 p1, 0xed8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    invoke-direct {v5, v4, v2}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    :goto_3a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_6
    goto/32 :goto_b

    nop

    :goto_3c
    invoke-interface {v2}, Lphh;->d()Lpnx;

    move-result-object v2

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

    nop

    :goto_3d
    const-string p1, "[live-tb] Binning has claimed all frames. Giving up and sending all frames to Gcam."

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

    :goto_3e
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object v0

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_22

    nop

    nop

    :goto_41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final b(Lpge;)Z
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lljo;->d:Lsdb;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/4 p0, 0x1

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
    const/16 v2, 0xed9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_4
    new-instance v1, Loel;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    :try_start_0
    iget-object p0, p0, Lljo;->e:Likv;

    nop

    invoke-virtual {v1}, Loel;->d()Lphh;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-interface {v1}, Lphh;->d()Lpnx;

    move-result-object v1

    nop

    invoke-interface {p0, v0, v1}, Likv;->z(Lpro;Lpnx;)Z

    move-result p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_2
    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "Error locking frame."

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    iget-object v2, p0, Lljo;->f:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_12
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return p1

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
