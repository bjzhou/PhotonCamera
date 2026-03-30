.class public final Ltbf;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltbf;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    new-instance v0, Ltbf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Ltbf;->a:Ltbf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ltbf;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const-class v1, Ltbf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, ""

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

    nop

    :goto_1
    iput v0, p0, Ltbf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_5

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

    nop

    :goto_4
    iput-object v0, p0, Ltbf;->e:Ljava/lang/String;

    nop

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

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    const-class v6, Ltbd;

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

    :goto_5
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ltbf;->f:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_8
    sget-object p1, Ltbf;->a:Ltbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    const-class v10, Ltbc;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_10
    const-string v0, "c"

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_11
    const v0, 0xd

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "b"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    const-class v7, Ltba;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x4

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

    nop

    :goto_1f
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    sget-object p2, Ltbf;->a:Ltbf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p0, Ltbf;->a:Ltbf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltbf;->f:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_3

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

    sget-object p2, Ltbf;->a:Ltbf;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltbf;->f:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    goto/16 :goto_14

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_25
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_d

    nop

    :goto_26
    new-instance p0, Ltbf;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_27
    if-ne p1, p0, :cond_6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    const-class v4, Ltax;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2b
    const-class v8, Ltay;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    const-class p1, Ltbf;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p0, 0x5

    nop

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

    :goto_2e
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-class v9, Ltaw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v2, "d"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0}, Ltbf;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v3, "e"

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

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

    nop

    :goto_36
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_28

    nop

    nop

    :goto_38
    const-class v5, Ltbe;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_39
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    const-string p0, "\u0004\t\u0001\u0000\u0001\n\t\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0008<\u0000\t<\u0000\n<\u0000"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3c
    if-eqz p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3f
    return-object p0

    nop

    :goto_40
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
