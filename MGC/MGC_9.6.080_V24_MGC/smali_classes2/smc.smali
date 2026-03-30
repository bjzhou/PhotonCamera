.class public final Lsmc;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lsmc;

.field private static volatile e:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:Lspv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lsmc;->a:Lsmc;

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lsmc;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lsmc;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const-class v1, Lsmc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_b

    nop

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
    .locals 2

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->moqjUaEBbxvRD:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1
    sget-object p2, Lsmc;->a:Lsmc;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_20

    nop

    nop

    :goto_4
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    const v1, 0x1a

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

    nop

    nop

    :goto_9
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    :goto_10
    new-instance p0, Lsmc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p1, p0, :cond_3

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x2

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    if-ne p1, p0, :cond_5

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

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Lsmc;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_20
    sget-object p0, Lsmc;->a:Lsmc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    const-string p0, "b"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    filled-new-array {p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_23
    sget-object p1, Lsmc;->a:Lsmc;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-class p1, Lsmc;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Lsmc;->e:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Lsmc;->e:Ltlx;

    nop

    nop

    if-nez p0, :cond_7

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    sget-object p2, Lsmc;->a:Lsmc;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lsmc;->e:Ltlx;

    nop

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto :goto_37

    nop

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

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_8
    goto/32 :goto_38

    nop

    :goto_31
    invoke-direct {v0, p2, p1, p0}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    sget-object v0, Lskv;->t:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_33
    return-object v0

    nop

    nop

    :goto_34
    goto/32 :goto_d

    nop

    nop

    :goto_35
    const-string v1, "d"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_36
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_39

    nop

    nop
.end method
