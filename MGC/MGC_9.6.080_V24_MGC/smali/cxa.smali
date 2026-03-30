.class public final Lcxa;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a()Z
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

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

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    sget-object v1, Lcxv;->a:Ljava/lang/Class;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    const-string v1, "android.os.SystemProperties"

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    sput-object v1, Lcxv;->a:Ljava/lang/Class;

    nop

    sget-object v1, Lcxv;->a:Ljava/lang/Class;

    nop

    if-eqz v1, :cond_0

    nop

    const-string v3, "getBoolean"

    nop

    nop

    nop

    const-class v4, Ljava/lang/String;

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_0
    move-object v1, v2

    nop

    nop

    :goto_7
    sput-object v1, Lcxv;->b:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v1, Lcxv;->b:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    const-string v3, "debug.layout"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_2
    move-object v1, v2

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v3, v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    :cond_3
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
