.class public final Lrcr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/String; = "rcr"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a()Landroid/view/View;
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_36

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    :goto_4
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    move-object v4, v1

    nop

    nop

    :goto_6
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lrcm;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_b
    throw v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2a

    nop

    nop

    :goto_10
    move-object v3, v1

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_6

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    :try_start_0
    const-string v3, "android.view.WindowManagerImpl"

    nop

    nop

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    const-string v4, "getDefault"

    nop

    nop

    nop

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v4, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    const-string v5, "mViews"

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_d

    nop

    check-cast v0, [Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v4, v2

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

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    :try_start_1
    const-string v2, "android.view.WindowManagerGlobal"

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v3, "getInstance"

    nop

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "mViews"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    instance-of v5, v4, Ljava/util/List;

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    check-cast v4, Ljava/util/List;

    nop

    nop

    nop

    goto :goto_1c

    nop

    :cond_2
    check-cast v4, [Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    :goto_1c
    const-string v5, "mLock"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    nop

    const-string v3, "Lock field cannot be null as it is needed to synchronize access to views field."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, ". This means that there is no Activity in the process and that the process is likely just running a Service or BroadcastReceiver"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "Failed to get views from window manager. This is probably because the device is newer than Android 5.0, or the device\'s window manager implementation deviates from stock Android."

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_20
    const-string v3, "Window manager does not contain any windows for process: "

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    :goto_22
    const-string v3, "Failed to get views from WindowManagerGlobal."

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    move-object v2, v4

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

    :goto_24
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_2

    nop

    :goto_25
    return-object v3

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_26
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_9

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Landroid/view/View;

    nop

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_8

    nop

    nop

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    move-object v1, v4

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_7
    move-object v1, v4

    nop

    goto :goto_27

    nop

    nop

    nop

    nop

    :cond_8
    move-object v3, v4

    nop

    nop

    nop

    nop

    goto :goto_27

    nop

    nop

    :cond_9
    :goto_28
    if-eqz v1, :cond_a

    nop

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_a

    nop

    sget-object v0, Lrcr;->a:Ljava/lang/String;

    nop

    nop

    nop

    const-string v4, "Could not find a focused window, using top-most visible window instead."

    nop

    nop

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    sget-object v0, Lrcr;->a:Ljava/lang/String;

    nop

    nop

    const-string v4, "Could not find a visible window, using top-most non-visible window instead."

    nop

    nop

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-exit v2

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_29
    const-string v2, "Failed to get views from WindowManagerImpl."

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2b
    move-object v2, v4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lrcm;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v4, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3

    nop

    :goto_34
    sget-object v1, Lrcr;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_35
    throw v0

    nop

    :goto_36
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_6

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object v1

    nop

    :goto_39
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop
.end method
