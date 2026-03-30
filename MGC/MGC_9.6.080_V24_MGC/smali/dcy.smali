.class public final Ldcy;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Landroid/view/View;)V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-boolean v0, Ldcz;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    return-void

    nop

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-boolean v1, Ldcz;->c:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    sput-boolean v0, Ldcz;->c:Z

    nop

    nop

    nop

    nop

    const-class v1, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "getDeclaredMethod"

    nop

    const-class v3, Ljava/lang/String;

    nop

    const/4 v4, 0x0

    nop

    new-array v5, v4, [Ljava/lang/Class;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    filled-new-array {v3, v5}, [Ljava/lang/Class;

    move-result-object v3

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    const-class v2, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "updateDisplayListIfDirty"

    nop

    nop

    nop

    nop

    new-array v4, v4, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/reflect/Method;

    nop

    nop

    sput-object v1, Ldcz;->a:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    const-class v1, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-string v2, "getDeclaredField"

    nop

    nop

    nop

    nop

    const-class v3, Ljava/lang/String;

    nop

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    const-class v2, Landroid/view/View;

    nop

    const-string v3, "mRecreateDisplayList"

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/reflect/Field;

    nop

    nop

    nop

    sput-object v1, Ldcz;->b:Ljava/lang/reflect/Field;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ldcz;->a:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1
    sget-object v1, Ldcz;->b:Ljava/lang/reflect/Field;

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    sget-object v1, Ldcz;->b:Ljava/lang/reflect/Field;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :cond_3
    sget-object v1, Ldcz;->a:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
