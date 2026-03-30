.class public final Ltnk;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltnk;

.field private static volatile g:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ltnk;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const-class v1, Ltnk;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ltnk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    :goto_d
    sput-object v0, Ltnk;->a:Ltnk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const-string v0, ""

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ltnk;->d:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Ltnk;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    sget-object p0, Ltkh;->a:Ltkh;

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

    :goto_5
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltnk;->a:Ltnk;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p2, Ltnk;->a:Ltnk;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_f
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "d"

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_13
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    sget-object v4, Lsrf;->s:Ltkk;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p1, Ltnk;->a:Ltnk;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

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

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Ltnk;->g:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ltmb;

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

    :goto_20
    invoke-direct {p0}, Ltnk;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v0, "b"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_25
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_26
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    const-class p1, Ltnk;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x3

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_7

    nop

    nop

    :goto_2a
    sget-object v6, Lsrf;->t:Ltkk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_2c
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v5, "f"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v3, "e"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3c

    nop

    nop

    :goto_33
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltnk;->g:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_6

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

    sget-object p2, Ltnk;->a:Ltnk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltnk;->g:Ltlx;

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_22

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_34
    const-string v1, "c"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string p0, "\u0001\u0004\u0000\u0001\u0003\u0007\u0004\u0000\u0000\u0000\u0003\u1004\u0001\u0005\u1008\u0003\u0006\u180c\u0004\u0007\u180c\u0005"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne p1, p0, :cond_8

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

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3b
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3c
    new-instance p0, Ltnk;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method
