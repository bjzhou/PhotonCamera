.class public final Ltcg;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltcg;

.field private static volatile d:Ltlx;


# instance fields
.field public b:Z

.field public c:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ltcg;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v1, 0xd

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

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Ltcg;->a:Ltcg;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    new-instance v0, Ltcg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-class v1, Ltcg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Ltcg;->a:Ltcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "c"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ltcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, -0x1

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

    :goto_9
    filled-new-array {p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ltcg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_14
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltcg;->d:Ltlx;

    nop

    nop

    if-nez p0, :cond_3

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Ltcg;->a:Ltcg;

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltcg;->d:Ltlx;

    nop

    nop

    :cond_3
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p2, "b"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Ltcg;->a:Ltcg;

    nop

    nop

    nop

    goto/32 :goto_11

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

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Ltcg;->d:Ltlx;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p1, p0, :cond_5

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

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x4

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

    :goto_1f
    new-instance p0, Ltkb;

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

    nop

    :goto_20
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    const-class p1, Ltcg;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    sget-object p2, Ltcg;->a:Ltcg;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    const-string p0, "e"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_17

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

    :goto_2f
    const-string p1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001"

    nop

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
.end method
