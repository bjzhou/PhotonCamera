.class public final Lize;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lize;

.field private static volatile h:Ltlx;


# instance fields
.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lize;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const-class v1, Lize;

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

    :goto_4
    const v0, 0x10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-direct {v0}, Lize;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lize;->a:Lize;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_0

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

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p2, Lize;->a:Lize;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v4, "f"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_32

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lize;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lize;->h:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_19
    const-class p1, Lize;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b
    const-string v3, "e"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    const/4 p0, 0x2

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

    :goto_1d
    sget-object p0, Lize;->a:Lize;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "b"

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

    :goto_20
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    const-string v2, "d"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    :goto_26
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_27
    sget-object p1, Lize;->a:Lize;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Lize;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    const-string v1, "c"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2c
    const-string p0, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0006\u0001"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_31
    const-string v5, "g"

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

    :goto_32
    new-instance p0, Ltkb;

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

    :goto_33
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    :goto_35
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lize;->h:Ltlx;

    nop

    nop

    if-nez p0, :cond_6

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lize;->a:Lize;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lize;->h:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_2e

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

    :goto_37
    if-lez v0, :cond_7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    :goto_38
    if-ne p1, p0, :cond_8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    :goto_39
    const/4 p0, 0x3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 p0, 0x5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop
.end method
