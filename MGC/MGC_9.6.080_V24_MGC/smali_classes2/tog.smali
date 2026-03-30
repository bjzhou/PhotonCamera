.class public final Ltog;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltog;

.field private static volatile f:Ltlx;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltog;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const-class v1, Ltog;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ltog;-><init>()V

    goto/32 :goto_8

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

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    sput-object v0, Ltog;->a:Ltog;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_4

    nop

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

    :goto_0
    iput v0, p0, Ltog;->e:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Ltog;->c:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const-class p1, Ltog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltog;-><init>()V

    goto/32 :goto_29

    nop

    nop

    :goto_3
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p2, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->NPUSthl:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_31

    nop

    nop

    :goto_6
    if-ne p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    sget-object p2, Ltog;->a:Ltog;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltog;->a:Ltog;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_18
    sget-object p0, Ltog;->f:Ltlx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    sget-object p1, Ltog;->a:Ltog;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ltog;

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

    :goto_1d
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltog;->f:Ltlx;

    nop

    if-nez p0, :cond_4

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Ltog;->a:Ltog;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltog;->f:Ltlx;

    nop

    :cond_4
    monitor-exit p1

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    :catchall_0
    move-exception p0

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 p1, p1, -0x1

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

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x5

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

    :goto_22
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p1, p0, :cond_5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    const-string p0, "g"

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

    nop

    :goto_25
    const-string p1, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    :goto_2b
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    const-string v1, "d"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    :goto_32
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "c"

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    :goto_35
    goto/32 :goto_30

    nop

    nop

    :goto_36
    const-string v2, "e"

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 p0, 0x4

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

    :goto_39
    filled-new-array {p0, p2, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
