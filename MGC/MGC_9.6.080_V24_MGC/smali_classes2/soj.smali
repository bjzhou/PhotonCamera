.class public final Lsoj;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lsoj;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lsoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lsoj;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    nop

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    sput-object v0, Lsoj;->a:Lsoj;

    nop

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

    :goto_a
    const-class v1, Lsoj;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    return-void

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lsoj;->e:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_25

    nop

    nop

    :goto_5
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lsoj;->a:Lsoj;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    const-string v1, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v3, "d"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2d

    nop

    :goto_c
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    sget-object v4, Lsoa;->h:Ltkk;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lsoj;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    const-string v5, "e"

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_17
    const-class p1, Lsoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lsoa;->j:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    new-instance p0, Lsoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_21

    nop

    nop

    :goto_24
    sget-object p2, Lsoj;->a:Lsoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    return-object p0

    nop

    :goto_26
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2b
    const/4 p0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_30

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_31
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p1, p0, :cond_6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p0, Lsoj;->a:Lsoj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_34
    const-string p0, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1004\u0002"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    if-ne p1, p0, :cond_7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_37
    sget-object p0, Lsoj;->f:Ltlx;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    const-string v0, "b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_39
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2b

    nop

    nop

    :goto_3b
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object p0, Lsoj;->f:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Lsoj;->a:Lsoj;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lsoj;->f:Ltlx;

    nop

    nop

    nop

    nop

    :cond_8
    monitor-exit p1

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
