.class public final Ltnq;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltnq;

.field private static volatile e:Ltlx;


# instance fields
.field public b:I

.field public c:Ltkv;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Ltnq;->a:Ltnq;

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

    :goto_6
    new-instance v0, Ltnq;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x16

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

    :goto_8
    rem-int v0, v0, v1

    nop

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const-class v1, Ltnq;

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

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    invoke-direct {v0}, Ltnq;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ltnq;->c:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const-string p1, "\u0001\u0002\u0000\u0001\u0003\n\u0002\u0000\u0001\u0000\u0003\u001a\n\u1004\u0005"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_6
    if-ne p1, p0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x2

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

    :goto_a
    invoke-direct {p0}, Ltnq;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x6

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

    :goto_c
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_d
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p2, Ltnq;->a:Ltnq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p1, Ltnq;->a:Ltnq;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    add-int/lit8 p1, p1, -0x1

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

    :goto_16
    return-object p0

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Ltnq;->a:Ltnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Ltnq;->e:Ltlx;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-class p1, Ltnq;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Ltnq;->e:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_5

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Ltnq;->a:Ltnq;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltnq;->e:Ltlx;

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const-string v0, "d"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string p2, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ltnq;

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

    :goto_25
    if-nez p1, :cond_6

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    :goto_26
    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    const-string p0, "b"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    :goto_29
    return-object p0

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v0

    nop

    nop

    :goto_2c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method
