.class public final Lkotlinx/coroutines/android/AndroidExceptionPreHandler;
.super Ltzt;
.source "PG"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method private final 14c1c4fc8f22bbc327d897df900c8d60m()Ljava/lang/reflect/Method;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    move-object v0, v1

    nop

    :catchall_0
    :cond_2
    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iput-object v0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

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

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    const-class v1, Ljava/lang/Thread;

    nop

    nop

    nop

    const-string v2, "getUncaughtExceptionPreHandler"

    nop

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_3

    nop

    :goto_11
    goto/16 :goto_7

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/reflect/Method;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Ltzz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ltzt;-><init>(Luac;)V

    goto/32 :goto_3

    nop

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

    :goto_3
    iput-object p0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public handleException(Luad;Ljava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
