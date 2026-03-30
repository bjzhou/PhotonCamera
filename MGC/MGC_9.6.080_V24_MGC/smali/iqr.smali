.class public final Liqr;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Liqr;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-direct {v0}, Liqr;-><init>()V

    goto/32 :goto_5

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

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    sput-object v0, Liqr;->a:Liqr;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const-class v1, Liqr;

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

    :goto_d
    new-instance v0, Liqr;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_a

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

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_2
    new-instance p0, Liqr;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Liqr;->f:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const-class p1, Liqr;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_16

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

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    if-ne p1, p0, :cond_1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const-string p0, "b"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2d

    nop

    nop

    :goto_1d
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    const v0, 0x5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    sget-object p2, Liqr;->a:Liqr;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string p1, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002\u0004\u000c"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    :goto_29
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p2, "c"

    nop

    goto/32 :goto_23

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

    nop

    :goto_2c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2e
    const-string v1, "e"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2f
    sget-object p0, Liqr;->a:Liqr;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_7

    nop

    nop

    :goto_32
    invoke-direct {p0}, Liqr;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_33
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p1, Liqr;->a:Liqr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_35
    const v1, 0x16

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

    :goto_36
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_37
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Liqr;->f:Ltlx;

    nop

    if-nez p0, :cond_8

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Liqr;->a:Liqr;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Liqr;->f:Ltlx;

    nop

    nop

    nop

    nop

    :cond_8
    monitor-exit p1

    nop

    goto/16 :goto_22

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_38
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_33

    nop

    nop
.end method
