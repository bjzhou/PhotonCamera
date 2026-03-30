.class public final Ltnn;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltnn;

.field private static volatile d:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const-class v1, Ltnn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ltnn;->a:Ltnn;

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

    :goto_2
    new-instance v0, Ltnn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    invoke-direct {v0}, Ltnn;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

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
    return-void

    nop

    :goto_2
    iput-object v0, p0, Ltnn;->c:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v0, ""

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "b"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    const/4 p0, 0x6

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

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Ltnn;->a:Ltnn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Ltnn;->a:Ltnn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2b

    nop

    nop

    :goto_b
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ltnn;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

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

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    :goto_11
    const-class p1, Ltnn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ltnn;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_1f

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
    goto/32 :goto_1b

    nop

    nop

    :goto_16
    sget-object p2, Ltnn;->a:Ltnn;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "\u0001\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u1008\u0001"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_19
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    sget-object p0, Ltnn;->d:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_20
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_4

    nop

    nop

    :goto_21
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_22
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltnn;->d:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    sget-object p2, Ltnn;->a:Ltnn;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltnn;->d:Ltlx;

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_10

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

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

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

    goto/32 :goto_b

    nop

    nop

    :goto_24
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_5

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

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    :goto_2b
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 p0, 0x4

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

    :goto_2d
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    if-ne p1, p0, :cond_7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
