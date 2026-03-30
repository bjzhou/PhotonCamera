.class public final Ltcy;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltcy;

.field private static volatile d:Ltlx;


# instance fields
.field public b:D

.field public c:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v1, Ltcy;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

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

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ltcy;

    nop

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ltcy;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    sput-object v0, Ltcy;->a:Ltcy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    const-string p0, "e"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltcy;->d:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-class p1, Ltcy;

    nop

    nop

    goto/32 :goto_22

    nop

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

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    const-string p2, "b"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_26

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
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_8

    nop

    nop

    :goto_18
    new-instance p0, Ltcy;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    sget-object p0, Ltcy;->a:Ltcy;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p1, p0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_1e
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :goto_20
    const-string v0, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x5

    nop

    goto/32 :goto_2a

    nop

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
    sget-object p0, Ltcy;->d:Ltlx;

    nop

    nop

    if-nez p0, :cond_3

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    sget-object p2, Ltcy;->a:Ltcy;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltcy;->d:Ltlx;

    nop

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_2d

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0}, Ltcy;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1000\u0000\u0002\u1004\u0001"

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

    :goto_29
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2a
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p2, Ltcy;->a:Ltcy;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne p1, p0, :cond_7

    nop

    goto/32 :goto_16

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p1, Ltcy;->a:Ltcy;

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
.end method
