.class public final Lrek;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lrek;

.field private static volatile c:Ltlx;


# instance fields
.field public b:Ltkv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lrek;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

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

    :goto_5
    goto/32 :goto_3

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lrek;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const-class v1, Lrek;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lrek;->a:Lrek;

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

    :goto_d
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

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
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object v0, p0, Lrek;->b:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    const-class p2, Lrei;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-class p1, Lrek;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p1, p0, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_9
    sget-object p1, Lrek;->a:Lrek;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lrek;->a:Lrek;

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

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    :goto_d
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x3

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

    :goto_f
    const-string p0, "b"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    :goto_17
    sget-object p2, Lrek;->a:Lrek;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Lrek;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

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

    nop

    nop

    :goto_1e
    const-string p1, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Lrek;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lrek;->c:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_25
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    :goto_26
    return-object p0

    nop

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lrek;->c:Ltlx;

    nop

    if-nez p0, :cond_6

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    sget-object p2, Lrek;->a:Lrek;

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lrek;->c:Ltlx;

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne p1, p0, :cond_7

    nop

    goto/32 :goto_2d

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
