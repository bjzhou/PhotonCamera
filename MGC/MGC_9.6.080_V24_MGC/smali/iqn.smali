.class public final Liqn;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Liqn;

.field private static volatile c:Ltlx;


# instance fields
.field public b:Liqo;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

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

    :goto_1
    sput-object v0, Liqn;->a:Liqn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Liqn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Liqn;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    const-class v1, Liqn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string p2, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Liqn;->c:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    const-string p0, "d"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_9
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Liqn;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Liqn;->a:Liqn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Liqn;->c:Ltlx;

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

    sget-object p2, Liqn;->a:Liqn;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Liqn;->c:Ltlx;

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p1

    nop

    goto/16 :goto_25

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

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    :goto_16
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

    :goto_17
    const-class p1, Liqn;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    if-ne p1, p0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    sget-object p2, Liqn;->a:Liqn;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    if-ne p1, p0, :cond_4

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

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p0, Liqn;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x0

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

    :goto_22
    const/4 p0, 0x4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_a

    nop

    nop

    :goto_26
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_28
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p1, Liqn;->a:Liqn;

    nop

    goto/32 :goto_2b

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
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop
.end method
