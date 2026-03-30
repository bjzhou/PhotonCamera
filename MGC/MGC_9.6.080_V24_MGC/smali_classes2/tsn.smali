.class public final Ltsn;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltsn;

.field private static volatile b:Ltlx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v1, Ltsn;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    goto/32 :goto_b

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    sput-object v0, Ltsn;->a:Ltsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v1, 0x18

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ltsn;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ltsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_c

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

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltjz;->a:Ltjz;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

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

    nop

    :goto_0
    new-instance p0, Ltsn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const-string v0, "\u0004\u0000"

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

    :goto_2
    invoke-direct {p1, p0, v0, p2}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltsn;->a:Ltsn;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ltsn;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    return-object p2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Ltsn;->a:Ltsn;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Ltsn;->b:Ltlx;

    nop

    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Ltsn;->a:Ltsn;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltsn;->b:Ltlx;

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    goto/16 :goto_23

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    if-ne p1, p0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_1a
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw p0

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p0, Ltsn;->b:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_26
    sget-object p1, Ltsn;->a:Ltsn;

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

    :goto_27
    new-instance p1, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_29
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :goto_2b
    const-class p1, Ltsn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
