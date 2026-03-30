.class public final Lepj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I = 0x0

.field private static final b:Ljava/lang/String; = "epj"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static final a(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Leoy;
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_37

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Leoy;-><init>(Ljava/util/List;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2
    goto :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Leoy;-><init>(Ljava/util/List;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    :goto_b
    sget-object v2, Leor;->a:Leor;

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_d
    new-instance v5, Leoe;

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

    :goto_e
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3c

    nop

    nop

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

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_12
    invoke-direct {v5, v1}, Leoe;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    if-ne v2, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    nop

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

    :goto_15
    sget-object v2, Lepj;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v3, Leoq;->b:Leoq;

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    new-instance v4, Leos;

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

    :goto_19
    invoke-direct {v4, v5, v2, v3}, Leos;-><init>(Leoe;Leor;Leoq;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v3, Leoq;->a:Leoq;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3, v4}, Leoj;->a(Ljava/lang/String;Lubk;)Leoj;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_48

    nop

    nop

    :goto_23
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    sget-object v4, Lua;->n:Lua;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v3, v4}, Leoj;->a(Ljava/lang/String;Lubk;)Leoj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_28
    const/4 v5, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v4, Lua;->m:Lua;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2a
    check-cast v2, Landroidx/window/sidecar/SidecarDisplayFeature;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v3, "Type must be either TYPE_FOLD or TYPE_HINGE"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1a

    nop

    nop

    :goto_30
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2, v3, v4}, Leoj;->a(Ljava/lang/String;Lubk;)Leoj;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_32
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v2, Leok;

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

    :goto_34
    const-string v3, "Feature bounds must not be 0"

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

    :goto_35
    add-int v0, v0, v1

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

    :goto_36
    goto/32 :goto_1c

    nop

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_39

    nop

    nop

    nop

    :catch_0
    :try_start_0
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->HJzqS:Ljava/lang/String;

    nop

    nop

    nop

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    :goto_39
    goto/32 :goto_24

    nop

    nop

    :goto_3a
    const-string v3, "Feature be pinned to either left or top"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance p0, Leoy;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p0, Leoy;

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

    :goto_3d
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2, v1}, Leok;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_40
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-object p0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_43
    if-ne v4, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    :goto_44
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move-object v3, v4

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v4, Lua;->p:Lua;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2, v3, v4}, Leoj;->a(Ljava/lang/String;Lubk;)Leoj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4f
    if-ne v2, v5, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    nop

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

    :goto_52
    invoke-static {p1}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iput p1, v0, Landroidx/window/sidecar/SidecarDeviceState;->posture:I

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2}, Leoj;->b()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_54
    sget-object p1, Ltyw;->a:Ltyw;

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

    :goto_55
    if-ne v4, v5, :cond_7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    :goto_56
    sget-object v4, Lua;->o:Lua;

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

    :goto_57
    check-cast v1, Landroidx/window/sidecar/SidecarDisplayFeature;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_59
    const-string v3, "TYPE_FOLD must have 0 area"

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v2, Leor;->b:Leor;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
