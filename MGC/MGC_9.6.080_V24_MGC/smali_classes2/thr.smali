.class public final Lthr;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lthr;

.field private static volatile e:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lthq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lthr;->a:Lthr;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lthr;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-class v1, Lthr;

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

    :goto_d
    new-instance v0, Lthr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltjj;->b:Ltjj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lthr;->c:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, ""

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
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class p1, Lthr;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lthr;->a:Lthr;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lthr;->e:Ltlx;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lthr;->a:Lthr;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lthr;->e:Ltlx;

    nop

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    goto/16 :goto_2c

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "d"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    new-instance p0, Lthr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    sget-object p2, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->MEOb:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lthr;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    const-string p0, "b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_18
    sget-object p0, Lthr;->e:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    :goto_1b
    const/4 p0, 0x6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    :goto_1e
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_29

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

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    :goto_20
    const/4 p0, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    :goto_26
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    const-string p1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    sget-object p0, Lthr;->a:Lthr;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p1, Lthr;->a:Lthr;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
