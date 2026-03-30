.class public final Lthx;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lthx;

.field private static volatile b:Ltlx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lthx;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const-class v1, Lthx;

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

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lthx;->a:Lthx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lthx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

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

    nop

    :goto_0
    return-void

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_26

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lthx;->b:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lthx;->a:Lthx;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lthx;->b:Ltlx;

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_17

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lthx;->a:Lthx;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "\u0004\u0000"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_10
    new-instance p1, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p0, v0, p2}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lthx;->a:Lthx;

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

    :goto_14
    sget-object p0, Lthx;->b:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Lthx;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Lthx;->a:Lthx;

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

    :goto_1f
    const/4 p0, 0x2

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

    nop

    :goto_20
    const-class p1, Lthx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-direct {p0}, Lthx;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    :goto_24
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_3

    nop

    nop

    :goto_2b
    if-ne p1, p0, :cond_7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop
.end method
