.class public final Lqwu;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lqwu;

.field private static volatile e:Ltlx;


# instance fields
.field public b:I

.field public c:Lqwq;

.field public d:Lqws;


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
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    const-class v1, Lqwu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-direct {v0}, Lqwu;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lqwu;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lqwu;->a:Lqwu;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const-string v0, "d"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lqwu;->e:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lqwu;->a:Lqwu;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lqwu;->e:Ltlx;

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    sget-object p0, Lqwu;->a:Lqwu;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    sget-object p1, Lqwu;->a:Lqwu;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x4

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

    :goto_11
    sget-object p2, Lqwu;->a:Lqwu;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p0, Lqwu;->e:Ltlx;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne p1, p0, :cond_2

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

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lqwu;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    if-ne p1, p0, :cond_3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    new-instance p0, Lqwu;

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

    :goto_1d
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    const-string p0, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_22
    const-string p2, "c"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    const-class p1, Lqwu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    :goto_25
    return-object p0

    nop

    :goto_26
    goto/32 :goto_21

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

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    :goto_2c
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
