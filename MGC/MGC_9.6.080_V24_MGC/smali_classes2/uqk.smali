.class public final Luqk;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Luqk;

.field private static volatile d:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Luqk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const-class v1, Luqk;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Luqk;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    sput-object v0, Luqk;->a:Luqk;

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v1, 0x1b

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

    :goto_c
    goto/32 :goto_5

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Luqk;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    nop

    :goto_2
    invoke-direct {p0}, Luqk;-><init>()V

    goto/32 :goto_1d

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const-string p0, "b"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    sget-object p0, Luqk;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    sget-object p0, Luqk;->a:Luqk;

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

    :goto_8
    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1008\u0000"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x6

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

    :goto_b
    new-instance p0, Luqk;

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

    :goto_c
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p2, Luqk;->a:Luqk;

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

    :goto_12
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    sget-object p1, Luqk;->a:Luqk;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne p1, p0, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_20
    const-class p1, Luqk;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    :goto_23
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string p2, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    if-ne p1, p0, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Luqk;->d:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Luqk;->a:Luqk;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Luqk;->d:Ltlx;

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    goto :goto_2e

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_28

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

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    :goto_2e
    goto/32 :goto_3

    nop

    nop

    nop
.end method
