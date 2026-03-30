.class public final Leby;
.super Lecg;
.source "PG"

# interfaces
.implements Lece;


# instance fields
.field private a:Landroid/app/Application;

.field private final b:Lece;

.field private c:Landroid/os/Bundle;

.field private d:Lear;

.field private e:Lehs;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

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

    :goto_1
    new-instance v0, Lecd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Leby;->b:Lece;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lecd;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lecg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Application;Leht;Landroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    :goto_1
    new-instance p1, Lecd;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p2, Lecd;

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

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Leby;->a:Landroid/app/Application;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p2, Lecd;->a:Lecd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-direct {p2, p1}, Lecd;-><init>(Landroid/app/Application;)V

    goto/32 :goto_a

    nop

    nop

    :goto_7
    iput-object p1, p0, Leby;->b:Lece;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Leby;->d:Lear;

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

    :goto_9
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object p2, Lecd;->a:Lecd;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    :goto_c
    invoke-interface {p2}, Leht;->getLifecycle()Lear;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Leht;->getSavedStateRegistry()Lehs;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lecg;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Leby;->e:Lehs;

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

    nop

    :goto_10
    iput-object p3, p0, Leby;->c:Landroid/os/Bundle;

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

    :goto_11
    invoke-direct {p1}, Lecd;-><init>()V

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p1, Lecd;->a:Lecd;

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


# virtual methods
.method public final a(Ljava/lang/Class;)Lecb;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    invoke-virtual {p0, v0, p1}, Leby;->d(Ljava/lang/String;Ljava/lang/Class;)Lecb;

    move-result-object p0

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

    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "Local and anonymous classes can not be ViewModels"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop
.end method

.method public final b(Ljava/lang/Class;Lecm;)Lecb;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v2}, Lebz;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    :goto_3
    check-cast v0, Landroid/app/Application;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-class v1, Leae;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lebv;->a:Lecl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, v1}, Lecm;->a(Lecl;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v2, p0}, Lebz;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lecb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v1}, Lecm;->a(Lecl;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_d
    sget-object v0, Lecd;->b:Lecl;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    const v0, 0x1b

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

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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
    throw p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v2, Lebz;->a:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

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
    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_1b
    invoke-interface {p0, p1, p2}, Lece;->b(Ljava/lang/Class;Lecm;)Lecb;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Leby;->b:Lece;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1, v2, p0}, Lebz;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lecb;

    move-result-object p0

    nop

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

    :goto_21
    invoke-virtual {p2, v0}, Lecm;->a(Lecl;)Ljava/lang/Object;

    move-result-object v0

    nop

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

    nop

    :goto_22
    goto/32 :goto_f

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p2}, Lebv;->a(Lecm;)Lebq;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_35

    nop

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_29
    sget-object v2, Lebz;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2a
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    :goto_2b
    invoke-static {p2}, Lebv;->a(Lecm;)Lebq;

    move-result-object p0

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

    :goto_2c
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    :goto_2d
    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lecf;->d:Lecl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    sget-object v1, Lebv;->b:Lecl;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_33
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1, v2}, Lebz;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    iget-object p2, p0, Leby;->d:Lear;

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

    :goto_37
    goto :goto_3e

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_3e

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2b

    nop

    nop

    :goto_3b
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2, v0}, Lecm;->a(Lecl;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v0, p1}, Leby;->d(Ljava/lang/String;Ljava/lang/Class;)Lecb;

    move-result-object p0

    nop

    :goto_3e
    goto/32 :goto_31

    nop

    nop

    :goto_3f
    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

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

    :goto_40
    add-int v0, v0, v1

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
.end method

.method public final synthetic c(Ludp;Lecm;)Lecb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Ldvw;->w(Lece;Ludp;Lecm;)Lecb;

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

    nop
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Lecb;
    .locals 7

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    :goto_1
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    :goto_5
    iget-object p1, v5, Lebs;->a:Lebq;

    nop

    nop

    goto/32 :goto_a

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

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, p1}, Lehs;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    nop

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

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_b
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Leby;->a:Landroid/app/Application;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    goto :goto_14

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2, v2, p0}, Lebz;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lecb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_39

    nop

    nop

    :goto_15
    new-instance v5, Lebs;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_2

    nop

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v5, p1, v4}, Lebs;-><init>(Ljava/lang/String;Lebq;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Leby;->a:Landroid/app/Application;

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

    nop

    nop

    :goto_1a
    invoke-static {p2, v2, p0}, Lebz;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lecb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_1c
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2, v2}, Lebz;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Leby;->e:Lehs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, p2}, Lece;->a(Ljava/lang/Class;)Lecb;

    move-result-object p0

    nop

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

    :goto_20
    iget-object v2, p0, Leby;->a:Landroid/app/Application;

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

    :goto_21
    sget-object v6, Lebq;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0}, Lecf;-><init>()V

    goto/32 :goto_33

    nop

    nop

    :goto_23
    invoke-static {p2}, Ldvy;->c(Ljava/lang/Class;)Lecb;

    move-result-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    :goto_25
    invoke-static {v5, v4}, Lebm;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Lebq;

    move-result-object v4

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

    :goto_26
    if-lez v0, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    :goto_27
    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, v5, Lebs;->a:Lebq;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    const v0, 0x9

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_2e
    sget-object p0, Lecf;->c:Lecf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1, v5}, Lecb;->h(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v2, Lebz;->a:Ljava/util/List;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_32
    iget-object p0, p0, Leby;->b:Lece;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_33
    sput-object p0, Lecf;->c:Lecf;

    nop

    :goto_34
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v2, Lebz;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    iget-object v4, p0, Leby;->c:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

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

    :goto_38
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_39
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Leby;->d:Lear;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3c
    invoke-virtual {v5, v3, v0}, Lebs;->b(Lehs;Lear;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3, v0}, Ldxp;->e(Lehs;Lear;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object p0, Lecf;->c:Lecf;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3f
    if-eqz v2, :cond_7

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

    :cond_7
    goto/32 :goto_c

    nop

    nop

    :goto_40
    invoke-static {p2, v2}, Lebz;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    nop

    :goto_41
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_42
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_43
    goto :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v1, :cond_8

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_46
    new-instance p0, Lecf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    const-class v1, Leae;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop
.end method

.method public final e(Lecb;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Leby;->e:Lehs;

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

    :goto_1
    invoke-static {p1, p0, v0}, Ldxp;->d(Lecb;Lehs;Lear;)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Leby;->d:Lear;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
