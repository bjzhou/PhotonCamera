.class public final Liqs;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Liqs;

.field private static volatile i:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Liqr;

.field public f:Liqr;

.field public g:Z

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Liqs;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    const v1, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-class v1, Liqs;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Liqs;->a:Liqs;

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

    :goto_d
    new-instance v0, Liqs;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_9

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
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, ""

    nop

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

    :goto_2
    iput-object v0, p0, Liqs;->c:Ljava/lang/String;

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

    :goto_3
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Liqs;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    const-string v5, "g"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Liqs;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    const-string v2, "d"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    const-class p1, Liqs;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    const-string v1, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const-string v4, "f"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_35

    nop

    nop

    :goto_10
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    const v0, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Liqs;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p1, p0, :cond_3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    sget-object p2, Liqs;->a:Liqs;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    sget-object p0, Liqs;->i:Ltlx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Liqs;->a:Liqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p1, Liqs;->a:Liqs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x5

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

    nop

    :goto_21
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Liqs;->i:Ltlx;

    nop

    nop

    if-nez p0, :cond_5

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

    sget-object p2, Liqs;->a:Liqs;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Liqs;->i:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

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

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_28
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_29
    const-string v3, "e"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    const-string p0, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u1009\u0000\u0004\u1009\u0001\u0005\u0007\u0006\u0007"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "b"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v6, "h"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    throw p0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_33
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    :goto_35
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    :goto_38
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
