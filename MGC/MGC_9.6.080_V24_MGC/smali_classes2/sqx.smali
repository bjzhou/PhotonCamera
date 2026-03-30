.class public final Lsqx;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lsqx;

.field private static volatile g:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ltkv;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lsqx;-><init>()V

    goto/32 :goto_d

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

    nop

    nop

    goto/32 :goto_9

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    const v0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lsqx;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const-class v1, Lsqx;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lsqx;->a:Lsqx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    const v1, 0x12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object v0, p0, Lsqx;->e:Ltkv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u001b\u0004\u1002\u0002"

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lsqx;->a:Lsqx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 p1, p1, -0x1

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

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-class p1, Lsqx;

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

    :goto_7
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lsqx;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    if-ne p1, p0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x3

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_10
    const-string v3, "d"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_12
    const-string v0, "b"

    nop

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

    :goto_13
    sget-object v4, Lsrf;->i:Ltkk;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v7, "f"

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lsqx;->g:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    invoke-direct {p0}, Lsqx;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    const-class v6, Lsqp;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p2, Lsqx;->a:Lsqx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object p0, Lsqx;->a:Lsqx;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2d
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_31
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_32
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_34
    throw p0

    nop

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

    :goto_36
    sget-object v2, Lsrf;->h:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_10

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
    sget-object p0, Lsqx;->g:Ltlx;

    nop

    nop

    if-nez p0, :cond_7

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lsqx;->a:Lsqx;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lsqx;->g:Ltlx;

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    nop

    goto :goto_35

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_38
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_39
    const-string v5, "e"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3a
    const-string v1, "c"

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

    :goto_3b
    return-object v0

    nop

    nop

    :goto_3c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
