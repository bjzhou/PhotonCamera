.class public final Lton;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lton;

.field private static volatile c:Ltlx;


# instance fields
.field public b:Ltkv;

.field private d:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lton;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_7

    nop

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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    new-instance v0, Lton;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-class v1, Lton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lton;->a:Lton;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lton;->b:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

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
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-byte v0, p0, Lton;->d:B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const-string p0, "b"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lton;->a:Lton;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6
    new-instance p0, Lton;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p2, Lton;->a:Lton;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_10
    const-class p2, Ltom;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    :goto_13
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_6

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Lton;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    if-ne p1, v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_1c
    sget-object p1, Lton;->a:Lton;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lton;->c:Ltlx;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Lton;->a:Lton;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lton;->c:Ltlx;

    nop

    nop

    :cond_4
    monitor-exit p1

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    :goto_1f
    sget-object p0, Lton;->c:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_2e

    nop

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    const-class p1, Lton;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_26
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    iput-byte p1, p0, Lton;->d:B

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-byte p0, p0, Lton;->d:B

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x1

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    :goto_2f
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_7
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_30
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_32
    if-ne p1, v0, :cond_8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    :goto_33
    return-object v0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_35
    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
