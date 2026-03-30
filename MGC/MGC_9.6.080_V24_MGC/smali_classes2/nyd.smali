.class public final Lnyd;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lnyd;

.field private static volatile f:Ltlx;


# instance fields
.field public b:I

.field public c:Lnyc;

.field public d:Lnyb;

.field public e:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lnyd;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-class v1, Lnyd;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lnyd;->a:Lnyd;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

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
    new-instance v0, Lnyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    add-int v0, v0, v1

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
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_2

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

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput v0, p0, Lnyd;->e:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lnyd;->f:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Lnyd;->a:Lnyd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lnyd;->f:Ltlx;

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_33

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

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

    :goto_1
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_4
    const/4 p0, 0x5

    nop

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

    nop

    :goto_5
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    :goto_d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

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

    :goto_f
    const-string v1, "b"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Lnyd;->f:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_17
    sget-object p2, Lnyd;->a:Lnyd;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lnyd;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Lnyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    const-class p1, Lnyd;

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

    :goto_1d
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v4, "e"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "g"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    const v1, 0x5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    const-string v2, "c"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    const-string p0, "\u0004\u0004\u0000\u0001\u0001\u0007\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0007\u180c\u0005"

    nop

    nop

    nop

    goto/32 :goto_f

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
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_27
    add-int v0, v0, v1

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

    :goto_28
    return-object p0

    nop

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v3, "d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    :goto_2c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Lnyd;->a:Lnyd;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 p1, p1, -0x1

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

    :goto_30
    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3a

    nop

    nop

    :goto_34
    sget-object p1, Lnyd;->a:Lnyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_37
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_38
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    :goto_39
    sget-object v5, Liza;->d:Ltkk;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    :goto_3b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop
.end method
