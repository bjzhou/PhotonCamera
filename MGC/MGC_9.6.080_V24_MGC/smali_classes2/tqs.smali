.class public final Ltqs;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltqs;

.field private static volatile d:Ltlx;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ltkv;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ltqs;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltqs;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v1, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    sput-object v0, Ltqs;->a:Ltqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-class v1, Ltqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ltqs;->b:Ljava/lang/String;

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

    :goto_3
    iput-object v0, p0, Ltqs;->c:Ltkv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const-string p2, "b"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_9
    sget-object p2, Ltqs;->a:Ltqs;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_35

    nop

    nop

    :goto_e
    const-string p0, "e"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Ltqs;->a:Ltqs;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    const-class p1, Ltqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Ltqs;->a:Ltqs;

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

    :goto_16
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltqs;->d:Ltlx;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    if-ne p1, p0, :cond_4

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

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ltqs;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ltqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    const-class v1, Ltqr;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, "c"

    nop

    goto/32 :goto_26

    nop

    nop

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
    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    return-object v0

    nop

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_37
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Ltqs;->d:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_7

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    sget-object p2, Ltqs;->a:Ltqs;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltqs;->d:Ltlx;

    nop

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    goto/16 :goto_7

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop
.end method
