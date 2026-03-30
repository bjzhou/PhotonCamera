.class public final Lttt;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lttt;

.field private static volatile b:Ltlx;


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
    rem-int v0, v0, v1

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lttt;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lttt;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lttt;->a:Lttt;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    const-class v1, Lttt;

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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

    :goto_1
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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lttt;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-class p1, Lttt;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lttt;->a:Lttt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
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

    nop

    :goto_12
    sget-object p0, Lttt;->a:Lttt;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p1, Ltmb;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Lttt;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lttt;->b:Ltlx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, p0, v0, p2}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lttt;->b:Ltlx;

    nop

    nop

    if-nez p0, :cond_6

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Lttt;->a:Lttt;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lttt;->b:Ltlx;

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit p1

    nop

    goto/16 :goto_26

    nop

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    sget-object p1, Lttt;->a:Lttt;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p2

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
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

    :goto_20
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "\u0004\u0000"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    const/4 p2, 0x0

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

    nop

    :goto_23
    return-object p0

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    :goto_26
    goto/32 :goto_27

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_f

    nop

    nop

    :goto_29
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :goto_2b
    goto/32 :goto_12

    nop

    nop
.end method
