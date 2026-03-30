.class public final Lcom/google/vr/dynamite/client/ObjectWrapper;
.super Lfun;
.source "PG"


# instance fields
.field private final wrappedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/vr/dynamite/client/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.vr.dynamite.client.IObjectWrapper"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static unwrap(Lcom/google/vr/dynamite/client/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6
    move-object v5, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_9
    const/4 v1, 0x0

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

    :goto_a
    invoke-interface {p0}, Landroid/os/IBinder;->getClass()Ljava/lang/Class;

    move-result-object v2

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

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

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

    :goto_e
    goto/16 :goto_26

    nop

    :goto_f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_13
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_17
    const-string p1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    return-object v1

    nop

    nop

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    return-object p0

    nop

    nop

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    const-string v0, "Could not access the field in remoteBinder."

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

    :goto_1f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lt v4, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    :goto_22
    goto/32 :goto_44

    nop

    nop

    :goto_23
    const-string v0, "remoteBinder is the wrong class."

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_25
    move-object v5, v6

    nop

    nop

    :goto_26
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_40

    nop

    nop

    :goto_2c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    instance-of v2, p0, Lcom/google/vr/dynamite/client/ObjectWrapper;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2f
    sget-object v0, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->muu:Ljava/lang/String;

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

    :goto_30
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    :goto_31
    if-nez v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_33
    aget-object v6, v2, v4

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

    :goto_34
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_2c

    nop

    :goto_36
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lcom/google/vr/dynamite/client/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_23

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p0, Lcom/google/vr/dynamite/client/ObjectWrapper;

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

    :goto_3e
    throw p1

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v5, v1

    nop

    nop

    :goto_40
    goto/32 :goto_20

    nop

    nop

    :goto_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_43
    array-length v3, v2

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

    :goto_44
    invoke-interface {p0}, Lcom/google/vr/dynamite/client/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p0

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
.end method
