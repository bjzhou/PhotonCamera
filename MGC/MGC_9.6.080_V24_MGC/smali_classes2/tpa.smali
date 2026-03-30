.class public final Ltpa;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltpa;

.field private static volatile b:Ltlx;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ltpa;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const-class v1, Ltpa;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v0, 0x15

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ltpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Ltpa;->a:Ltpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

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
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_2

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
    iput-byte v0, p0, Ltpa;->h:B

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_34

    nop

    nop

    :goto_1
    sget-object p0, Ltpa;->b:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-class p1, Ltpa;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    iput-byte p1, p0, Ltpa;->h:B

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_b
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c
    sget-object p2, Ltpa;->a:Ltpa;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    :goto_e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_f
    const-string p0, "c"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    iget-byte p0, p0, Ltpa;->h:B

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

    :goto_14
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
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

    :goto_18
    const-string v0, "e"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltpa;->b:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

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

    sget-object p2, Ltpa;->a:Ltpa;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltpa;->b:Ltlx;

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

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

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p1, Ltpa;->a:Ltpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p2, "d"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Ltkb;

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

    nop

    :goto_1e
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0004\u0001\u1504\u0000\u0002\u1504\u0001\u0003\u1504\u0002\u0004\u1504\u0003"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Ltpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x0

    nop

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

    nop

    :goto_23
    const/4 p0, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2e

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "f"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    const-string v2, "g"

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne p1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2b
    if-ne p1, v0, :cond_6

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    :goto_2c
    sget-object p0, Ltpa;->a:Ltpa;

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

    :goto_2d
    const v1, 0xe

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

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    :goto_30
    goto/32 :goto_f

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    :goto_33
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne p1, v0, :cond_7

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    :goto_37
    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3a
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    filled-new-array {p0, p2, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3d
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3f
    if-ne p1, v0, :cond_8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    :goto_40
    invoke-direct {p0}, Ltpa;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    :goto_41
    if-eqz p0, :cond_9

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
