.class public final Lupl;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lupl;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:Lupg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lupl;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lupl;->a:Lupl;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lupl;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const-class v1, Lupl;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lupl;->a:Lupl;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    new-instance p0, Lupl;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lupl;->f:Ltlx;

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lupl;->a:Lupl;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lupl;->f:Ltlx;

    nop

    nop

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2d

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2c

    nop

    nop

    :goto_5
    const/4 p0, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lupl;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "e"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    const-string p2, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p0, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_6
    goto/32 :goto_25

    nop

    :goto_1d
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Lupl;->f:Ltlx;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    :goto_2a
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p0, 0x5

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

    :goto_2f
    const/4 p0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-class p1, Lupl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_31
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_32
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    :goto_33
    const-string v0, "d"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p2, Lupl;->a:Lupl;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_37
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object p1, Lupl;->a:Lupl;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_39
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001\u0003\u1009\u0002"

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

    nop
.end method
