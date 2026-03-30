.class public final Lehs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Lyo;-><init>()V

    goto/32 :goto_e

    nop

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

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

    :goto_c
    new-instance v1, Lyo;

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

    :goto_d
    invoke-direct {p0}, Lehs;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lehs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-object p1, p0, Lehs;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/Window;[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Lehs;-><init>(Landroid/view/Window;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ldsa;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput-object p1, p0, Lehs;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    sget v0, Lehs;->c:I

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_5
    iput-object v0, p0, Lehs;->a:Ljava/lang/Object;

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
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lehs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput v0, Lehs;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Lehu;)V
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

    :goto_1
    iput-object p1, p0, Lehs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lleu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lehs;->a:Ljava/lang/Object;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object v1, p0, Lehu;->d:Landroid/os/Bundle;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "\' was not found"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lehs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lehu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_24

    nop

    :goto_c
    const v1, 0x14

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, p0, Lehu;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v4, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

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

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    :goto_21
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_23
    invoke-static {p1, v4, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    :goto_26
    throw p0

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    return-object v2

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    const-string p1, "You can \'consumeRestoredStateForKey\' only after the corresponding component has moved to the \'CREATED\' state"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lehu;->d:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2d
    goto/16 :goto_f

    nop

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

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

    :goto_30
    sget-object v4, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->FVwOFeQ:Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4

    nop

    nop

    :goto_35
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

    nop

    nop

    :goto_36
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;Lehr;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    rem-int v0, v0, v1

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
    move-object v0, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    const-string p0, "SavedStateProvider with the given key is already registered"

    nop

    nop

    nop

    nop

    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lehu;

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

    nop

    :goto_6
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lehs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    :try_start_1
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lehu;

    nop

    nop

    nop

    iget-object v1, v1, Lehu;->b:Ljava/util/Map;

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    check-cast p0, Lehu;

    nop

    nop

    nop

    iget-object p0, p0, Lehu;->b:Ljava/util/Map;

    nop

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iget-object v0, v0, Lehu;->g:Ldvz;

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

    :goto_c
    const v1, 0x3

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

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Class;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
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

    :goto_1
    iput-object v0, p0, Lehs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Leho;->a:Ljava/util/Set;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lehs;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    const-string p1, "Can not perform this action after onSaveInstanceState"

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

    :goto_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    const-string v2, "Class "

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

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    check-cast p0, Leho;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, v0, Lehu;->f:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lehs;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lehs;->a:Ljava/lang/Object;

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

    :goto_23
    new-instance v0, Leho;

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

    :goto_24
    const-string p1, " must have default constructor in order to be automatically recreated"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, p0}, Leho;-><init>(Lehs;)V

    :goto_26
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lehu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_2b
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez p0, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method public final d()Lehr;
    .locals 6

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lehu;->g:Ldvz;

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
    if-nez v3, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    move-object v0, p0

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

    nop

    :goto_6
    check-cast v0, Lehu;

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

    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lehs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-ne v5, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    :goto_c
    move-object v3, v2

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    return-object v3

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter v0

    nop

    :try_start_0
    check-cast p0, Lehu;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lehu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lehr;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_19
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    nop
.end method

.method public final e(Ldrs;J)J
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ldsa;->h:Ldrs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p1, Ldrs;->j:Ljava/util/List;

    nop

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
    invoke-virtual {p0, v5, v6, v7}, Lehs;->e(Ldrs;J)J

    move-result-wide v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4
    add-long/2addr v6, p2

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

    :goto_5
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lehs;->e(Ldrs;J)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

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

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    iget v6, v5, Ldrs;->e:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, v0, Ldsa;->h:Ldrs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    iget-object v5, p1, Ldrs;->j:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    :goto_11
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    nop

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

    :goto_12
    check-cast v5, Ldrq;

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

    :goto_13
    iget-object v6, v5, Ldrs;->d:Ldsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    return-wide p2

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_35

    nop

    nop

    :goto_19
    goto/16 :goto_2c

    nop

    :goto_1a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    iget v0, v0, Ldrs;->e:I

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

    :goto_1c
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of v1, v0, Ldrw;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v5, Ldrs;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v6, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_23
    sub-long/2addr p2, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_25
    instance-of v6, v5, Ldrs;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ldsa;->a()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_27
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    nop

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_29
    if-eq p1, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    if-lt v2, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-wide v3, p2

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    if-nez v1, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    :goto_2e
    int-to-long v6, v6

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

    :goto_2f
    sub-long/2addr p2, v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, v0, Ldsa;->i:Ldrs;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_33
    return-wide v3

    nop

    :goto_34
    goto/32 :goto_30

    nop

    nop

    :goto_35
    iget-object v0, p1, Ldrs;->d:Ldsa;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final f(Ldrs;J)J
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p2

    nop

    :goto_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    nop

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    iget-object p1, v0, Ldsa;->i:Ldrs;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v6, v5, Ldrs;->d:Ldsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    instance-of v6, v5, Ldrs;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    instance-of v1, v0, Ldrw;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v5, v6, v7}, Lehs;->f(Ldrs;J)J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object v1, v0, Ldsa;->h:Ldrs;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    return-wide p0

    nop

    nop

    :goto_10
    goto/32 :goto_2e

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, p2, p3}, Lehs;->f(Ldrs;J)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    iget-object v0, p1, Ldrs;->d:Ldsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_14
    const v0, 0xe

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

    :goto_15
    check-cast v5, Ldrs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Ldsa;->i:Ldrs;

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

    :goto_18
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    add-long/2addr v6, p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ldsa;->a()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    iget-object v5, p1, Ldrs;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v6, v0, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v5, Ldrq;

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

    :goto_22
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    :goto_26
    add-int/lit8 v2, v2, 0x1

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

    :goto_27
    goto/16 :goto_3

    nop

    :goto_28
    goto/32 :goto_31

    nop

    nop

    :goto_29
    iget-object v1, p1, Ldrs;->j:Ljava/util/List;

    nop

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

    :goto_2a
    if-lt v2, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    iget v0, v0, Ldrs;->e:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-wide v3

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1d

    nop

    nop

    :goto_30
    int-to-long v6, v6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    iget v6, v5, Ldrs;->e:I

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

    :goto_32
    add-long/2addr p2, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_33
    sub-long/2addr p2, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_34
    move-wide v3, p2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2a

    nop

    nop

    nop
.end method
