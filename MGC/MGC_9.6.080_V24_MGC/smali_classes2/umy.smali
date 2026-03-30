.class public final Lumy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lumy;->a:Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
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

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Lucg;->f(Lueb;)Lueb;

    move-result-object v0

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

    :goto_c
    invoke-static {v0}, Lucg;->i(Lueb;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

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

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const-class v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-direct {v1, v0, v2}, Ldwf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ldwf;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    const-class v0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final a(Ljava/lang/Throwable;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    const v0, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

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
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

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

    :goto_8
    const v1, 0x6

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

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
