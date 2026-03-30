.class public final Lups;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lups;

.field private static volatile j:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lups;->a:Lups;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lups;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

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

    :goto_9
    const-class v1, Lups;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    new-instance v0, Lups;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

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

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v4, "f"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const-string v5, "g"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    sget-object p1, Lups;->a:Lups;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2d

    nop

    nop

    :goto_14
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_15
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    :goto_16
    const-string v1, "c"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    const-string v3, "e"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    const-string v6, "h"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    const-class p1, Lups;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1b
    const v1, 0x17

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Lups;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lups;->a:Lups;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    const-string v2, "d"

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

    nop

    :goto_24
    const-string p0, "\u0001\u0007\u0000\u0001\u0011\u0018\u0007\u0000\u0000\u0000\u0011\u1004\u0011\u0012\u1004\u0012\u0014\u1002\u0013\u0015\u1002\u0014\u0016\u1002\u0015\u0017\u1002\u0016\u0018\u1002\u0017"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    :goto_29
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    :goto_2f
    new-instance p0, Lups;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p2, Lups;->a:Lups;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_31
    const-string v7, "i"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_32
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lups;->j:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Lups;->a:Lups;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lups;->j:Ltlx;

    nop

    :cond_8
    monitor-exit p1

    nop

    nop

    nop

    goto :goto_2b

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object v0

    nop

    :goto_34
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p0, Lups;->j:Ltlx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_37
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_38
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 p0, 0x5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method
