.class public final Lpwr;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lpwr;

.field private static volatile i:Ltlx;


# instance fields
.field public b:I

.field public c:Lpww;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:J

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    sput-object v0, Lpwr;->a:Lpwr;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lpwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const-class v1, Lpwr;

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

    :goto_6
    invoke-direct {v0}, Lpwr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xc

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
    return-void

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

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

    nop

    :goto_1
    iput-object v0, p0, Lpwr;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const-string v0, ""

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_26

    nop

    nop

    :goto_0
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    const-string v3, "f"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lpwr;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lpwr;->i:Ltlx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lpwr;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lpwr;->a:Lpwr;

    nop

    goto/32 :goto_12

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

    nop

    nop

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v5, "h"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_10
    const-string p0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1002\u0001\u0003\u1004\u0003\u0004\u1002\u0004\u0005\u1002\u0005\u0006\u1008\u0002"

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

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

    :goto_12
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p1, p0, :cond_3

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "c"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    const-string v4, "g"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p2, Lpwr;->a:Lpwr;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v2, "d"

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

    :goto_1d
    const-string v0, "b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Lpwr;->a:Lpwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x5

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

    :goto_21
    throw p0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x3

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

    :goto_25
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    const v0, 0x10

    nop

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

    nop

    :goto_27
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

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

    :goto_28
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    return-object v0

    nop

    nop

    :goto_2a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v6, "e"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2f
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    const-class p1, Lpwr;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop

    :goto_32
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_37
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Lpwr;->i:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lpwr;->a:Lpwr;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lpwr;->i:Ltlx;

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

    goto/16 :goto_22

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_31

    nop

    :goto_3a
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3b
    const/4 p0, 0x2

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

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop
.end method
