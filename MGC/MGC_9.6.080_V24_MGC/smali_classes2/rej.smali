.class public final Lrej;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lrej;

.field private static volatile e:Ltlx;


# instance fields
.field public b:I

.field public c:Ltkm;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lrej;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const v1, 0x11

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-void

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
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    invoke-direct {v0}, Lrej;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lrej;->a:Lrej;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-class v1, Lrej;

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

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrej;->c:Ltkm;

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lrej;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ltkh;->a:Ltkh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Lrej;->e:Ltlx;

    nop

    nop

    if-nez p0, :cond_0

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

    sget-object p2, Lrej;->a:Lrej;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lrej;->e:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    goto/16 :goto_32

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_31

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_8
    goto/32 :goto_22

    nop

    :goto_9
    const-string p2, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    const/4 p0, 0x0

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

    :goto_c
    const-class p1, Lrej;

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

    :goto_d
    sget-object p1, Lrej;->a:Lrej;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    sget-object v0, Liza;->s:Ltkk;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p0, Lrej;->a:Lrej;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    const-string v1, "d"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    nop

    :goto_18
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1a
    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0004\u0002\u0000\u0001\u0000\u0001\u081e\u0004\u180c\u0002"

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

    :goto_1b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    filled-new-array {p0, p2, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_20
    if-ne p1, p0, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_36

    nop

    nop

    :goto_26
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    sget-object v2, Liza;->t:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_28
    sget-object p2, Lrej;->a:Lrej;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lrej;->e:Ltlx;

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

    :goto_2a
    new-instance p0, Lrej;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0}, Lrej;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x17

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Ltmb;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_30
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_33
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0xf

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

    :goto_35
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

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

    :goto_36
    const-string p0, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_37
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object v0

    nop

    nop

    :goto_3a
    goto/32 :goto_1b

    nop

    nop
.end method
