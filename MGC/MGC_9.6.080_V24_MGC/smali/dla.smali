.class public final Ldla;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final a:Ldkg;

.field public b:Lufs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Ltzz;

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v0}, Ldkz;-><init>(Ltzz;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v1, Ldla;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    new-instance v1, Ldkz;

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

    :goto_a
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1}, Ldla;-><init>(Ldkg;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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
.end method

.method public synthetic constructor <init>(Ldkg;I)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ldkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldla;->a:Ldkg;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, p2}, Luad;->plus(Luad;)Luad;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p2}, Luad;->plus(Luad;)Luad;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lkotlinx/coroutines/CoroutineExceptionHandler;->plus(Luad;)Luad;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

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

    :goto_6
    sget-object p1, Ldla;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    new-instance p2, Luhs;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ldkg;-><init>()V

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-interface {p2, v0}, Luad;->get(Luac;)Luab;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2}, Luhs;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p2, Luae;->a:Luae;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iput-object p1, p0, Ldla;->b:Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    and-int/lit8 p2, p2, 0x1

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

    :goto_11
    sget-object v0, Lugy;->c:Ltzz;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    sget-object v0, Ldnf;->a:Lufp;

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

    :goto_13
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
