.class public final Lhxi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ldux;)V
    .locals 0

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
    iput-object p2, p0, Lhxi;->a:Ljava/lang/Object;

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

    nop

    :goto_2
    iput-object p3, p0, Lhxi;->d:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lhoh;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lhxi;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    invoke-direct {v0, p1, v1}, Lny;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    iput-object v0, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_d
    goto/32 :goto_16

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lhxi;->f:Ljava/lang/Object;

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
    iput-object p1, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lny;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_14
    const v1, 0x7f15047e

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    :goto_17
    iput-object v0, p0, Lhxi;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/content/Context;

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
.end method

.method public constructor <init>(Lmtj;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lhxi;->d:Ljava/lang/Object;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lows;Ltud;Libn;Lpdf;Ljava/util/concurrent/Executor;Lhoh;)V
    .locals 7

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {v1 .. v6}, Lhkf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, p4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

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

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lhxi;->d:Ljava/lang/Object;

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

    :goto_7
    const/4 v6, 0x0

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

    :goto_8
    sget-object v0, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_9
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    iput-object p3, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    move-object v1, p2

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

    nop

    nop

    :goto_e
    const v1, 0xf

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->createHandle()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    new-instance p2, Lhkf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

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

    :goto_15
    iput-object p2, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_18
    const-class v0, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "gcastartup"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1c
    const v0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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
    move-object v3, p5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lhxi;->c:Ljava/lang/Object;

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

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    :goto_22
    const/4 v5, 0x2

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


# virtual methods
.method public D(Ljava/util/Map;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

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

    :goto_1
    iget-object v2, v2, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xe

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

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_1a

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
    goto/32 :goto_13

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v3, Landroid/content/Context;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Lhxi;->d:Ljava/lang/Object;

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

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lhxi;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Lhdu;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v1, v2, v3}, Lhxi;->E(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public E(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 5

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Lcom/Eb;->setOrder(I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroid/preference/Preference;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

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

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_5
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    :goto_8
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_3e

    nop

    :goto_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_40

    nop

    .local p1, "p1":Ljava/lang/String;
    .local p2, "p2":Ljava/lang/Object;
    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {v0, p2}, Lcom/Eb;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lcom/Eb;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_f
    const v2, 0x7f0e011a

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of v0, p2, Ljava/lang/Integer;

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

    :goto_11
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_12
    if-nez p2, :cond_3

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    :goto_15
    check-cast p2, Ljava/lang/Long;

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

    :goto_16
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v0, p1}, Liof;-><init>(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    const v3, 0x1002

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lcom/Ea;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lhxi;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1c
    const p2, 0x7f140800

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1d
    instance-of v0, p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    const/16 v3, 0x3002

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_39

    nop

    nop

    :goto_21
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Lcom/a;->ab(Ljava/lang/String;)Z

    move-result v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_35

    nop

    :goto_25
    goto/32 :goto_34

    nop

    nop

    :goto_26
    instance-of v0, p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v3, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v2}, Lcom/Eb;->setLayoutResource(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_4c

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_42

    nop

    nop

    :goto_31
    const v3, 0x1002

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

    :goto_32
    const-string v2, ""

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Lcom/a;->ab(Ljava/lang/String;)Z

    move-result v2

    nop

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

    :goto_34
    check-cast p2, Ljava/lang/String;

    nop

    :goto_35
    goto/32 :goto_e

    nop

    nop

    :goto_36
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_7

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    :goto_39
    instance-of v0, p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v2}, Lcom/Ea;->setOrder(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    :goto_3c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    :goto_3e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Lcom/Eb;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v2, p0, Lhxi;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_43
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_45
    invoke-virtual {v0, p1}, Lcom/Ea;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_63

    nop

    nop

    :goto_47
    goto/32 :goto_62

    nop

    nop

    :goto_48
    check-cast v2, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_49
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2a

    nop

    nop

    :goto_4a
    invoke-direct {v0, p3}, Lcom/Eb;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4e

    nop

    nop

    :goto_4b
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto :goto_4c

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_12

    nop

    nop

    :goto_53
    invoke-virtual {v0, p1}, Lcom/Eb;->setKey(Ljava/lang/String;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0, v2}, Lcom/Ea;->setLayoutResource(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0, p2}, Lcom/Ea;->setChecked(Z)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, p1}, Lcom/Eb;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_57
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, p2}, Lcom/Eb;->setText(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v0, :cond_b

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0xd

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5c
    invoke-direct {v0, p3}, Lcom/Ea;-><init>(Landroid/content/Context;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance v1, Liof;

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

    :goto_5e
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_c

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez p1, :cond_d

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_61
    invoke-static {p1}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_62
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, p1}, Lcom/Ea;->setKey(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->releaseHandle(J)V

    :cond_1
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lcom/google/googlex/gcam/ShotMetadata;Lprw;)Lrss;
    .locals 21

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    return-object v0

    nop

    :cond_0
    :goto_6
    :try_start_0
    sget-object v0, Lrsa;->a:Lrsa;

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v2, v1, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Lrss;

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_1
    iget-object v2, v1, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    check-cast v2, Libn;

    nop

    invoke-virtual {v2, v3, v4}, Libn;->a(J)Llsc;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    iget-object v3, v2, Llsc;->q:[Llsf;

    nop

    nop

    nop

    nop

    array-length v3, v3

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lhxi;->a:Ljava/lang/Object;

    nop

    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lhxi;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v6, Lhmh;->f:Lhmn;

    nop

    nop

    nop

    nop

    check-cast v3, Lhoh;

    nop

    nop

    invoke-virtual {v3, v6}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v3, v1, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lltb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v2, v5}, Lltb;->a(Lprw;Llsc;Z)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_2
    invoke-interface/range {p2 .. p2}, Lprw;->c()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Llsc;->t:Landroid/graphics/Rect;

    nop

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    int-to-float v6, v6

    nop

    nop

    invoke-interface/range {p2 .. p2}, Lprw;->b()I

    move-result v7

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v2, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llsc;->q:[Llsf;

    nop

    new-instance v9, Ljava/util/ArrayList;

    nop

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    nop

    nop

    nop

    nop

    :goto_11
    array-length v11, v2

    nop

    if-ge v10, v11, :cond_8

    nop

    nop

    nop

    aget-object v11, v2, v10

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v12

    nop

    nop

    if-eqz v12, :cond_3

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    check-cast v12, Llsy;

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v12, Llsy;->a:[Llsx;

    nop

    nop

    nop

    aget-object v12, v12, v10

    nop

    nop

    nop

    iget-object v12, v12, Llsx;->k:Lrss;

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_3
    sget-object v12, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_12
    div-float v13, v7, v8

    nop

    div-float v14, v3, v6

    nop

    nop

    nop

    nop

    iget-object v15, v11, Llsf;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Landroid/graphics/Rect;

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    iget v2, v15, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v3

    nop

    iget v3, v15, Landroid/graphics/Rect;->top:I

    nop

    nop

    int-to-float v3, v3

    nop

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    iget v4, v15, Landroid/graphics/Rect;->right:I

    nop

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    int-to-float v15, v15

    nop

    mul-float/2addr v15, v13

    nop

    nop

    nop

    nop

    mul-float/2addr v4, v14

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v3, v13

    nop

    nop

    nop

    mul-float/2addr v2, v14

    nop

    nop

    nop

    nop

    nop

    float-to-int v2, v2

    nop

    float-to-int v3, v3

    nop

    nop

    float-to-int v4, v4

    nop

    nop

    nop

    nop

    float-to-int v15, v15

    nop

    nop

    nop

    invoke-direct {v5, v2, v3, v4, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v11, Llsf;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    invoke-static {v2, v14, v13}, Lhst;->h(Landroid/graphics/PointF;FF)Landroid/graphics/Point;

    move-result-object v2

    nop

    nop

    iget-object v3, v11, Llsf;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    invoke-static {v3, v14, v13}, Lhst;->h(Landroid/graphics/PointF;FF)Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v11, Llsf;->f:Landroid/graphics/PointF;

    nop

    nop

    invoke-static {v4, v14, v13}, Lhst;->h(Landroid/graphics/PointF;FF)Landroid/graphics/Point;

    move-result-object v4

    nop

    nop

    nop

    iget-object v15, v11, Llsf;->e:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v15, v14, v13}, Lhst;->h(Landroid/graphics/PointF;FF)Landroid/graphics/Point;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    move/from16 v19, v6

    nop

    nop

    nop

    nop

    iget-object v6, v11, Llsf;->g:Landroid/graphics/PointF;

    nop

    invoke-static {v6, v14, v13}, Lhst;->h(Landroid/graphics/PointF;FF)Landroid/graphics/Point;

    move-result-object v6

    nop

    nop

    nop

    nop

    move/from16 v20, v7

    nop

    nop

    iget-object v7, v11, Llsf;->h:Landroid/graphics/PointF;

    nop

    invoke-static {v7, v14, v13}, Lhst;->h(Landroid/graphics/PointF;FF)Landroid/graphics/Point;

    move-result-object v7

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    if-eqz v3, :cond_7

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_7

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_7

    nop

    if-eqz v7, :cond_7

    nop

    nop

    nop

    nop

    iget v13, v11, Llsf;->b:I

    nop

    nop

    nop

    nop

    nop

    int-to-float v13, v13

    nop

    invoke-static {v5}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->a(Landroid/graphics/Rect;)Lhxl;

    move-result-object v5

    nop

    nop

    nop

    iput-object v2, v5, Lhxl;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    iput-object v3, v5, Lhxl;->f:Landroid/graphics/Point;

    nop

    nop

    iput-object v4, v5, Lhxl;->g:Landroid/graphics/Point;

    nop

    iput-object v15, v5, Lhxl;->h:Landroid/graphics/Point;

    nop

    nop

    nop

    iput-object v6, v5, Lhxl;->i:Landroid/graphics/Point;

    nop

    iput-object v7, v5, Lhxl;->j:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    const/high16 v2, -0x40800000    # -1.0f

    nop

    nop

    add-float/2addr v13, v2

    nop

    nop

    const/high16 v3, 0x42c60000    # 99.0f

    nop

    div-float/2addr v13, v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iput-object v3, v5, Lhxl;->c:Ljava/lang/Float;

    nop

    nop

    iget v3, v11, Llsf;->k:F

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iput-object v3, v5, Lhxl;->d:Ljava/lang/Float;

    nop

    iget v3, v11, Llsf;->i:I

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    iput-object v3, v5, Lhxl;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v12}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lryb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lryb;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    new-array v4, v3, [F

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_13
    if-ge v6, v3, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lryb;

    nop

    nop

    invoke-virtual {v7, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_4

    nop

    nop

    nop

    move v7, v2

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput v7, v4, v6

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    :cond_5
    iput-object v4, v5, Lhxl;->k:[F

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v5}, Lhxl;->a()Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    move-object/from16 v2, v16

    nop

    nop

    move/from16 v3, v17

    nop

    nop

    nop

    nop

    move-object/from16 v4, v18

    nop

    nop

    nop

    move/from16 v6, v19

    nop

    nop

    nop

    nop

    move/from16 v7, v20

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    const-string v2, "Required face feature missing"

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    nop

    new-array v3, v2, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;

    nop

    nop

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->generateFaceInfos([Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;)[J

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface/range {p2 .. p2}, Lprw;->c()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-interface/range {p2 .. p2}, Lprw;->b()I

    move-result v3

    nop

    nop

    iget-object v4, v1, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Lrss;

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v15, v4, v5}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->generateFaceThumbnails(II[JJ)[J

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameMetadata;->a()F

    move-result v13

    nop

    nop

    nop

    sget v13, Lcom/a;->sCorrectorExposure_time_ms:F

    nop

    nop

    check-cast v0, Lppl;

    nop

    nop

    nop

    iget-wide v11, v0, Lppl;->a:J

    nop

    nop

    nop

    nop

    new-instance v0, Lhxj;

    nop

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v10 .. v15}, Lhxj;-><init>(JF[J[J)V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_9
    goto/32 :goto_9

    nop
.end method

.method public final c(Landroid/preference/PreferenceScreen;)V
    .locals 9

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1
    iget-object v6, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    check-cast v0, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    :goto_5
    array-length v4, p1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_3f

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lhrv;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    new-instance v0, Lhrv;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v6, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :goto_13
    goto/32 :goto_65

    nop

    nop

    :goto_14
    new-instance v6, Ljlu;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_16
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lhmq;->aF:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_18
    const-string v4, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v5, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v6}, Lhxi;->D(Ljava/util/Map;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lt v6, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3b

    nop

    :goto_1f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v5, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_25
    check-cast v1, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    iput-object v0, v5, Lhrx;->b:Landroid/widget/SearchView$OnQueryTextListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v6}, Lvl;-><init>(I)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v6, p0, Lhxi;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Lhmn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v6, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2e
    sget-object v1, Lhmq;->aE:Lhmn;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_30
    const-string v5, "camera.onscreen_logcat_filter"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lhxi;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v6, 0x7f0e011a

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v7, "Gca"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v6, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_38
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_39
    const-string v0, " items)"

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_3a
    move v6, v3

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_40
    new-instance v0, Landroid/preference/EditTextPreference;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lhxi;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v8, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_45
    iget-object v6, p0, Lhxi;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v5}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_38

    nop

    nop

    :goto_49
    iget-object v0, p0, Lhxi;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object p1, Lhmq;->aE:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v1, Landroid/preference/Preference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4d
    sget-object v3, Lhnz;->a:Lhmo;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p1, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4f
    iget-object p1, p1, Lhmn;->a:Ljava/lang/String;

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

    :goto_50
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a3

    nop

    :goto_52
    const/16 v6, 0xa

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_53
    const-string v0, "Primes Log"

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_54
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_55
    const-string v1, "dev_setting_filter_key"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_56
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

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

    nop

    nop

    :goto_57
    check-cast p0, Landroid/preference/PreferenceScreen;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_58
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v6, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v0, Lhmq;->aF:Lhmn;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v0, v5}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p1, p1, Lhmn;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_5f
    if-nez p0, :cond_6

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6f

    nop

    nop

    :goto_62
    iget-object v0, p0, Lhxi;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {v6, p0, v2}, Ljlu;-><init>(Lhxi;I)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_65
    new-instance v0, Lhrw;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setOrder(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_67
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/32 :goto_41

    nop

    nop

    :goto_69
    new-instance v0, Lvl;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_6a
    new-instance v2, Landroid/preference/PreferenceCategory;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v1, Landroid/preference/Preference;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6c
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :goto_6d
    goto/32 :goto_70

    nop

    nop

    :goto_6e
    iget-object v6, v5, Lhrx;->a:Landroid/widget/SearchView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_7
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    :goto_73
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_75
    iget-object p1, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_76
    new-instance v7, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto/32 :goto_83

    nop

    nop

    :goto_78
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v0, p0, Lhxi;->c:Ljava/lang/Object;

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

    :goto_7a
    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v1, v1, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_7e
    iget-object v1, v1, Lhmn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast v0, Landroid/preference/PreferenceScreen;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v7, :cond_8

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_85
    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_86
    iput-object p1, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v6, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_88
    const v0, 0x13

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

    nop

    :goto_89
    iget-object v0, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8a
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v6, Landroid/preference/PreferenceScreen;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p1, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_8d
    iput-object v0, v5, Lhrx;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_8f
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_90
    const v0, 0x7f0e0104

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_7

    nop

    nop

    :goto_92
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v5, Lhrx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v0, p0, v3}, Lhrv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_95
    if-nez p1, :cond_9

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v6}, Lhoh;->v()Ljava/util/Map;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_97
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_10

    nop

    nop

    :goto_98
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_b

    nop

    nop

    :goto_99
    aget-object v7, p1, v6

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v7, v0}, Liof;-><init>(Landroid/preference/Preference;)V

    goto/32 :goto_64

    nop

    nop

    :goto_9c
    const-string v0, "Reset to default values ("

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_9d
    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v0, p0, v2}, Lhrv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v0, "(,|\\s)+"

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_a1
    new-instance v1, Landroid/preference/Preference;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a2
    invoke-direct {v0, p0, v2}, Lhrw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    :goto_a3
    goto/32 :goto_2c

    nop

    nop

    :goto_a4
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v0}, Lhoh;->v()Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_a6
    check-cast v0, Landroid/preference/PreferenceScreen;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    sget-object v7, Lhnz;->a:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-direct {v5, v6}, Lhrx;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast v0, Lhoh;

    nop

    goto/32 :goto_a5

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lhxi;->c(Landroid/preference/PreferenceScreen;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    return-void

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

    nop

    nop

    :goto_10
    const-string v1, "dev_setting_filter_key"

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    check-cast p1, Landroid/preference/PreferenceScreen;

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
.end method

.method public final e(Leoy;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1d

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

    :goto_2
    const/16 v1, 0x13

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

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
    new-instance v0, Lat;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1, v1}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    iput-object p1, p0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
