.class public final Ltz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[I

.field public static final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x13
        0x10
        0xd
        0xa
        0x0
        -0x2
        -0x4
        -0x5
        -0x6
        -0x8
    .end array-data

    :goto_1
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

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

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Ltz;->b:Ljava/util/concurrent/ThreadFactory;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    sput-object v0, Ltz;->a:[I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0xa

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final a(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/wear/widget/xrA/fuyPMnCeXU;->SDvdeSmKpV:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-static {p1, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

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

    :goto_a
    invoke-static {p1, p0, v0}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const-string p0, "Threads ("

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static final b(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lsuv;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lueo;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    sget-object v0, Luer;->a:Luer;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lueo;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-direct {v1, v2, v0}, Lueo;-><init>(ILucu;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lsuv;

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
