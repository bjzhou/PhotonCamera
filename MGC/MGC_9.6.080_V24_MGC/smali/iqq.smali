.class public final Liqq;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Liqq;

.field private static volatile d:Ltlx;


# instance fields
.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

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

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const-class v1, Liqq;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Liqq;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    sput-object v0, Liqq;->a:Liqq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    new-instance v0, Liqq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

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
    invoke-direct {p0}, Ltkg;-><init>()V

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Liqq;->a:Liqq;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, "b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

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

    :goto_f
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v0

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p1, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Liqq;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p1, p0, :cond_3

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_16
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Liqq;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Liqq;->a:Liqq;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Liqq;->d:Ltlx;

    nop

    nop

    :cond_4
    monitor-exit p1

    nop

    goto :goto_1a

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    const-class p1, Liqq;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Liqq;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p2, "c"

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

    nop

    :goto_1f
    new-instance p0, Liqq;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p2, Liqq;->a:Liqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    :goto_26
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_29
    if-nez p1, :cond_6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Liqq;->a:Liqq;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
