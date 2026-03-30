.class public final Ltqf;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltqf;

.field private static volatile b:Ltlx;


# instance fields
.field private c:Ltll;

.field private d:Ltll;


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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance v0, Ltqf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ltqf;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Ltqf;->a:Ltqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
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

    :goto_e
    const-class v1, Ltqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltll;->a:Ltll;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ltqf;->c:Ltll;

    nop

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

    :goto_4
    sget-object v0, Ltll;->a:Ltll;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ltqf;->d:Ltll;

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

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltqf;->a:Ltqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Ltqf;->a:Ltqf;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

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

    :goto_8
    const-class p1, Ltqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Ltqf;->b:Ltlx;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "d"

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

    :goto_10
    const-string p1, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0002\u0000\u0000\u00012\u00022"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    :goto_16
    if-ne p1, p0, :cond_1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    const/4 p0, 0x3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    sget-object v1, Ltqd;->a:Lqnt;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ltqf;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ltqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    const-string p0, "c"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    :goto_29
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p2, Ltqf;->a:Ltqf;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    const/4 p0, 0x1

    nop

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

    :goto_31
    sget-object p2, Ltqe;->a:Lqnt;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_32
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

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

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_34
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_1e

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

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    :goto_37
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Ltqf;->b:Ltlx;

    nop

    nop

    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Ltqf;->a:Ltqf;

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltqf;->b:Ltlx;

    nop

    nop

    nop

    nop

    :cond_8
    monitor-exit p1

    nop

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop
.end method
