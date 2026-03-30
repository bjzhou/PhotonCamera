.class public final Ltik;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltik;

.field private static volatile b:Ltlx;


# instance fields
.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ltik;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const-class v1, Ltik;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ltik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Ltik;->a:Ltik;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-byte v0, p0, Ltik;->h:B

    nop

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

    nop

    nop

    :goto_2
    const/4 v0, 0x2

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

    :goto_3
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const-string p2, "d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3
    sget-object p0, Ltik;->a:Ltik;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_33

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

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p0, Ltik;->b:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iget-byte p0, p0, Ltik;->h:B

    nop

    goto/32 :goto_7

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-byte p1, p0, Ltik;->h:B

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Ltik;->b:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Ltik;->a:Ltik;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltik;->b:Ltlx;

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    const-string v1, "f"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p1, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Ltik;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string p0, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "g"

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    if-ne p1, v0, :cond_5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    :goto_29
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0004\u0001\u1501\u0000\u0002\u1501\u0001\u0003\u1501\u0002\u0004\u1501\u0003"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-class p1, Ltik;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    sget-object p1, Ltik;->a:Ltik;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2f
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_31
    if-ne p1, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "e"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_35
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object p2, Ltik;->a:Ltik;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne p1, v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    :goto_3c
    new-instance p0, Ltik;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3d
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    :goto_3f
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz p2, :cond_9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    filled-new-array {p0, p2, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop
.end method
