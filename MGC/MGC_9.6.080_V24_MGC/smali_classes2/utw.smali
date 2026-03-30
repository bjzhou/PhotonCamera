.class public final Lutw;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lutw;

.field private static volatile d:Ltlx;


# instance fields
.field public b:I

.field public c:Lrem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lutw;->a:Lutw;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lutw;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Lutw;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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
    goto/32 :goto_8

    nop

    :goto_d
    const-class v1, Lutw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lutw;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lutw;->d:Ltlx;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

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

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Lutw;

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

    :goto_16
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Lutw;->d:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

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

    sget-object p2, Lutw;->a:Lutw;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lutw;->d:Ltlx;

    nop

    nop

    nop

    :cond_4
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_e

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p2, Lutw;->a:Lutw;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    :goto_20
    const/4 p0, 0x1

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

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string p2, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    const-class p1, Lutw;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    sget-object p0, Lutw;->a:Lutw;

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

    :goto_28
    if-nez p1, :cond_5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

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

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-ne p1, p0, :cond_6

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

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p1, Lutw;->a:Lutw;

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

    nop

    :goto_2e
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop
.end method
