.class public final Lupx;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lupx;

.field private static volatile d:Ltlx;


# instance fields
.field public b:Ltkv;

.field public c:Ltkv;

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lupx;->a:Lupx;

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

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    new-instance v0, Lupx;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const-class v1, Lupx;

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

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    invoke-direct {v0}, Lupx;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-byte v0, p0, Lupx;->e:B

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lupx;->c:Ltkv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lupx;->b:Ltkv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x2

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lupx;->d:Ltlx;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const-class p2, Lupw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    const-string p1, "\u0001\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0002\u0001\u0001\u041b\u0003\u001b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-class v1, Lupz;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne p1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Lupx;->a:Lupx;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    new-instance p0, Lupx;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lupx;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lupx;->a:Lupx;

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lupx;->d:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-byte p1, p0, Lupx;->e:B

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Lupx;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x2

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    if-ne p1, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p1, Lupx;->a:Lupx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_30
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p2, Lupx;->a:Lupx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-class p1, Lupx;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-object p0

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string p0, "b"

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

    :goto_3a
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_8
    goto/32 :goto_3

    nop

    :goto_3b
    if-eqz p0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3e
    iget-byte p0, p0, Lupx;->e:B

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
