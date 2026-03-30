.class public final Lthy;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lthy;

.field private static volatile b:Ltlx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const-class v1, Lthy;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lthy;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lthy;->a:Lthy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    new-instance v0, Lthy;

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

    :goto_a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lthy;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lthy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x6

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

    :goto_5
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lthy;->b:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Lthy;->a:Lthy;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lthy;->b:Ltlx;

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    goto/16 :goto_1b

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lthy;->b:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    sget-object p1, Lthy;->a:Lthy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p2

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, p0, v0, p2}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "\u0004\u0000"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p1, p0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    :goto_18
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

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
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-class p1, Lthy;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    const/4 p0, 0x5

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

    :goto_21
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    sget-object p0, Lthy;->a:Lthy;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    return-object p1

    nop

    nop

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    :goto_29
    new-instance p1, Ltmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne p1, p0, :cond_7

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

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Lthy;->a:Lthy;

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
