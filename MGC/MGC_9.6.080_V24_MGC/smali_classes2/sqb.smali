.class public final Lsqb;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lsqb;

.field private static volatile h:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const-class v1, Lsqb;

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lsqb;->a:Lsqb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lsqb;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v0, 0x14

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

    nop

    :goto_a
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x20

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lsqb;

    nop

    goto/32 :goto_8

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lsqb;->a:Lsqb;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lsqb;->h:Ltlx;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v0, 0x1c

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

    :goto_6
    sget-object p2, Lsqb;->a:Lsqb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p1, p0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    :goto_b
    const v1, 0xc

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v3, "e"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    const-string v0, "b"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lsqb;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_12
    const-string v4, "f"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lsqb;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lsqb;->h:Ltlx;

    nop

    if-nez p0, :cond_2

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lsqb;->a:Lsqb;

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lsqb;->h:Ltlx;

    nop

    :cond_2
    monitor-exit p1

    nop

    goto :goto_19

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

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v6, "g"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    if-nez p1, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_35

    nop

    nop

    :goto_1a
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    :goto_1d
    sget-object p0, Lsqb;->a:Lsqb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u180c\u0003\u0005\u1004\u0004"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3a

    nop

    :goto_22
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "d"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_26
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v5, Lspd;->s:Ltkk;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_29
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2e
    const-class p1, Lsqb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    :goto_36
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_37
    const/4 p0, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3b
    const/4 p0, 0x6

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

    :goto_3c
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method
