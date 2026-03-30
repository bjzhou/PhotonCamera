.class public final Lfry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final b:Lfsh;


# instance fields
.field private volatile a:Lfio;

.field private final c:Lfdo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    invoke-direct {v0, v1}, Lfsh;-><init>([B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

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

    :goto_4
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

    :goto_5
    sput-object v0, Lfry;->b:Lfsh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    new-instance v0, Lfsh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lfdo;-><init>([C)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance v0, Lwu;

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

    :goto_8
    new-instance v0, Lfdo;

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

    :goto_9
    sget p0, Lfqd;->a:I

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

    :goto_a
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iput-object v0, p0, Lfry;->c:Lfdo;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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
.end method

.method private static b(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    goto/32 :goto_5

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

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

    nop

    :goto_5
    instance-of v0, p0, Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/content/ContextWrapper;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-static {p0}, Lfry;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    instance-of v0, p0, Landroid/content/ContextWrapper;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lfio;
    .locals 6

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lfry;->a:Lfio;

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

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    invoke-static {v0}, Lfia;->b(Landroid/content/Context;)Lfia;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lfrp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lfrp;-><init>()V

    new-instance v2, Lfrw;

    nop

    nop

    invoke-direct {v2}, Lfrw;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    new-instance v3, Lfio;

    nop

    nop

    nop

    invoke-direct {v3, v0, v1, v2, p1}, Lfio;-><init>(Lfia;Lfrt;Lfrz;Landroid/content/Context;)V

    iput-object v3, p0, Lfry;->a:Lfio;

    nop

    nop

    nop

    :cond_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lbr;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_4
    new-instance p1, Lfrv;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {p1, p0, v2}, Lfrv;-><init>(Lfdo;Lear;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lfry;->a:Lfio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-object v2, p1, Ldh;->f:Lear;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lfry;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lfry;->a(Landroid/content/Context;)Lfio;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_2d

    nop

    nop

    :goto_11
    const-string p1, "You cannot start a load for a destroyed activity"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_14
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    :goto_15
    throw p1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_17
    instance-of v0, p1, Landroid/app/Application;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_18
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    nop

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

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v4, Lfrw;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Lfry;->a(Landroid/content/Context;)Lfio;

    move-result-object p0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Lftw;->g()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_6
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Lbr;

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

    :goto_25
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    :goto_26
    throw p0

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lbr;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    const v1, 0x8

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Lftw;->i()Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Lfia;->b(Landroid/content/Context;)Lfia;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v3, v2}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Lear;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v5, v0, v3, v4, p1}, Lfio;-><init>(Lfia;Lfrt;Lfrz;Landroid/content/Context;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Landroid/content/ContextWrapper;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_30
    instance-of v0, p1, Lbr;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v4}, Lfrw;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    :goto_35
    instance-of v0, p1, Landroid/content/ContextWrapper;

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

    :goto_36
    add-int v0, v0, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_e

    nop

    :goto_38
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3a
    iget-object v3, p0, Lfdo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lfry;->c:Lfdo;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v3, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3e
    invoke-static {}, Lftw;->g()V

    goto/32 :goto_21

    nop

    nop

    :goto_3f
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v0, p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_42
    move-object p0, v5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a(Lfru;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

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

    :goto_46
    const-string p1, "You cannot start a load on a null Context"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_6

    nop

    nop

    :goto_49
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4a
    return-object p0

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_39

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object p0, v3

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_d

    nop

    :goto_50
    invoke-static {}, Lftw;->j()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3c

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Lfry;->a:Lfio;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_57
    invoke-virtual {v5}, Lfio;->h()V

    :goto_58
    goto/32 :goto_42

    nop

    nop

    :goto_59
    invoke-virtual {p1}, Lbr;->dq()Lcj;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v3, Lfio;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v5, Lfio;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5c
    iget-object p1, p0, Lfdo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

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
