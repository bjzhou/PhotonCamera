.class public final Lirc;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lirc;

.field public static final e:Ltkq;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:Ltll;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lirc;

    nop

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

    :goto_4
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

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lirc;->a:Lirc;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Ltcu;->a:Ltcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const-class v1, Lirc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v0}, Ltkq;-><init>(Ltkj;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ltkq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    sput-object v1, Lirc;->e:Ltkq;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lirc;-><init>()V

    goto/32 :goto_7

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object v0, p0, Lirc;->c:Ltll;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sget-object v0, Ltll;->a:Ltll;

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

    :goto_2
    return-void

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lirc;->f:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lirc;->a:Lirc;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lirc;->f:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    goto :goto_b

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lirc;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u0832\u0002\u1002\u0000"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lirc;->a:Lirc;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lsrf;->q:Ltkk;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_e

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p0, Lirc;->a:Lirc;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const-string p2, "c"

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    :goto_18
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lirc;->f:Ltlx;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x4

    nop

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

    :goto_1d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x0

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

    :goto_20
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_21
    filled-new-array {p0, p2, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    sget-object p2, Lirc;->a:Lirc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_25
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Lirc;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_30

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne p1, p0, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v2, "d"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_31
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_38

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 p0, 0x2

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

    nop

    :goto_33
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    :goto_34
    if-eqz p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_35
    const-string p0, "b"

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_36
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-object p0

    nop

    :goto_38
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_39
    const-class p1, Lirc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3a
    sget-object v0, Lirb;->a:Lqnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
