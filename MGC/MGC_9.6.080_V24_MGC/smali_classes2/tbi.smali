.class public final Ltbi;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltbi;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ltbi;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x11

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

    :goto_7
    sput-object v0, Ltbi;->a:Ltbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-class v1, Ltbi;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
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

    nop

    nop

    :goto_c
    new-instance v0, Ltbi;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Ltbi;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->HBd:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4
    const-string p2, "c"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const-class p1, Ltbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "b"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_d
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ltbi;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_10
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    sget-object p2, Ltbi;->a:Ltbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltbi;->a:Ltbi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

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

    :goto_19
    const/4 p0, 0x0

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

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

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
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3a

    nop

    :goto_22
    goto/32 :goto_26

    nop

    nop

    :goto_23
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltbi;->f:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Ltbi;->a:Ltbi;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltbi;->f:Ltlx;

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    nop

    goto :goto_2c

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

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ltmb;

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

    :goto_26
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_27
    if-ne p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Ltbi;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_2b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Ltbi;->f:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

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

    :goto_33
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    :goto_34
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v0, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->hkFk:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    const-string p1, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1003\u0001\u0003\u1003\u0002"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_38
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object p1, Ltbi;->a:Ltbi;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method
