.class public final Ltib;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltib;

.field private static volatile d:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0x4

    nop

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
    new-instance v0, Ltib;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Ltib;->a:Ltib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const-class v1, Ltib;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    invoke-direct {v0}, Ltib;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Ltib;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

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

    :goto_1
    const-class v4, Lthz;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_2a

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_0
    goto/32 :goto_38

    nop

    :goto_5
    const-string v0, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

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

    :goto_7
    const-string v1, "b"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_34

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    sget-object p1, Ltib;->a:Ltib;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-class v7, Lthw;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    const-class v5, Ltht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    const-class v2, Lthu;

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

    nop

    :goto_17
    const/4 p0, 0x6

    nop

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

    :goto_18
    if-ne p1, p0, :cond_3

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ltkb;

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

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    const-class v3, Ltia;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    const-class v8, Lthv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1f
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ltib;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Ltib;->d:Ltlx;

    nop

    nop

    if-nez p0, :cond_6

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    sget-object p2, Ltib;->a:Ltib;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltib;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    goto/16 :goto_33

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_39

    nop

    nop

    :goto_25
    sget-object p2, Ltib;->a:Ltib;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-class v6, Lthy;

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

    :goto_27
    new-instance p0, Ltib;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x0

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

    :goto_2a
    sget-object p0, Ltib;->d:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v0

    nop

    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 p0, 0x4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_30
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

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

    :goto_31
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Ltib;->a:Ltib;

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

    :goto_35
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    const-class p1, Ltib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    goto/32 :goto_3c

    nop

    nop

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3a
    const-string p0, "\u0004\u0008\u0001\u0000\u0001\t\u0008\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\t<\u0000"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-object p0

    nop

    nop

    :goto_3c
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3d
    const-class v9, Lthx;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
