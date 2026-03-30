.class public final Lizh;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lizh;

.field private static volatile j:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:Ltkl;

.field public g:Ltkl;

.field public h:Liyw;

.field public i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lizh;->a:Lizh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lizh;

    nop

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lizh;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const-class v1, Lizh;

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

    goto/32 :goto_3

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
    iput-object v0, p0, Lizh;->g:Ltkl;

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
    sget-object v0, Ltjz;->a:Ltjz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lizh;->f:Ltkl;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_34

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lizh;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const-string v7, "i"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    if-ne p1, p0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lizh;->j:Ltlx;

    nop

    if-nez p0, :cond_2

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lizh;->a:Lizh;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lizh;->j:Ltlx;

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit p1

    nop

    nop

    nop

    goto/16 :goto_38

    nop

    :catchall_0
    move-exception p0

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

    goto/32 :goto_37

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "c"

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_11
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :goto_13
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const-string v5, "g"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    sget-object p2, Lizh;->a:Lizh;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_18
    const-class p1, Lizh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    const-string v4, "f"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p0, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u0004\u0002\u1002\u0000\u0003\u1002\u0001\u0004$\u0005$\u0006\u1009\u0002\u0007\u1002\u0003"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ltkb;

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

    nop

    :goto_20
    sget-object p0, Lizh;->a:Lizh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_21
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    const v1, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    :goto_25
    sget-object p1, Lizh;->a:Lizh;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    const-string v3, "e"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object v0

    nop

    :goto_2b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v6, "h"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "b"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne p1, p0, :cond_8

    nop

    goto/32 :goto_9

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

    :goto_30
    invoke-direct {p0}, Lizh;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    :goto_33
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    const-string v2, "d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    sget-object p0, Lizh;->j:Ltlx;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    throw p0

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_e

    nop

    nop

    :goto_39
    return-object p0

    nop

    :goto_3a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3c
    return-object p0

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1f

    nop

    nop
.end method
