.class public final Lecj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lecj;->a:Lbox;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    instance-of v2, v1, Ltxw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    :try_start_0
    const-class v1, Leaw;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "androidx.compose.ui.platform.AndroidCompositionLocals_androidKt"

    nop

    nop

    nop

    nop

    nop

    const-string v3, "getLocalLifecycleOwner"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    nop

    nop

    array-length v3, v2

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_7
    if-ge v4, v3, :cond_2

    nop

    nop

    nop

    nop

    aget-object v5, v2, v4

    nop

    nop

    nop

    nop

    instance-of v5, v5, Ltxo;

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    move-object v1, v0

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    instance-of v2, v1, Lbox;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    check-cast v1, Lbox;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v0}, Lbre;-><init>(Luaz;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1b

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v0, v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v3, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const v1, 0x12

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lbre;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    goto :goto_9

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xc

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

    :goto_17
    check-cast v0, Lbox;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    move-object v0, v1

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    :goto_1d
    sget-object v0, Ltx;->b:Ltx;

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
.end method
