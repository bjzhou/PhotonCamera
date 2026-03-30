.class public final Lqxe;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lqxe;

.field private static volatile c:Ltlx;


# instance fields
.field public b:Ltkv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lqxe;-><init>()V

    goto/32 :goto_a

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    const v0, 0x1f

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
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lqxe;->a:Lqxe;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lqxe;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const-class v1, Lqxe;

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
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

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lqxe;->b:Ltkv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltma;->a:Ltma;

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
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    :goto_3
    sget-object p0, Lqxe;->c:Ltlx;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "b"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lqxe;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lqxe;->a:Lqxe;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_28

    nop

    nop

    :goto_f
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    :goto_15
    const-class p1, Lqxe;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p2, Lqxe;->a:Lqxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x2

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

    :goto_1f
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Lqxe;->c:Ltlx;

    nop

    nop

    if-nez p0, :cond_7

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lqxe;->a:Lqxe;

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lqxe;->c:Ltlx;

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    goto :goto_24

    nop

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Lqxe;->a:Lqxe;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    const-string p0, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    :goto_29
    goto/32 :goto_2c

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
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    new-instance p0, Lqxe;

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

    :goto_2d
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
