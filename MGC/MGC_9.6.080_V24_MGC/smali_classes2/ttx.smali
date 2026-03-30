.class public final Lttx;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltkn;

.field public static final b:Lttx;

.field private static volatile d:Ltlx;


# instance fields
.field public c:Ltkm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lttx;->a:Ltkn;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

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

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    const-class v1, Lttx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    new-instance v0, Lqwr;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lttx;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Lqwr;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Lttx;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lttx;->b:Lttx;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltkh;->a:Ltkh;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_4

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
    iput-object v0, p0, Lttx;->c:Ltkm;

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

    :goto_4
    sget-object v0, Ltma;->a:Ltma;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_28

    nop

    nop

    :goto_0
    const-string p0, "c"

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

    :goto_1
    if-ne p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lttx;->d:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Lttx;->b:Lttx;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lttx;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x5

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

    nop

    nop

    :goto_6
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lttx;->b:Lttx;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_a
    sget-object p2, Ltnp;->l:Ltkk;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    const-string p1, "\u0001\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u082c"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const/4 p0, 0x0

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

    :goto_d
    if-ne p1, p0, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    const-class p1, Lttx;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lttx;->d:Ltlx;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    sget-object p1, Lttx;->b:Lttx;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    new-instance p0, Lttx;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne p1, p0, :cond_6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p2, Lttx;->b:Lttx;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_28
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Lttx;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    :goto_2c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    :goto_2e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
