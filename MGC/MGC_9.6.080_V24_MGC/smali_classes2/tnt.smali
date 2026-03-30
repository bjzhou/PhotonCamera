.class public final Ltnt;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltnt;

.field private static volatile i:Ltlx;


# instance fields
.field public b:I

.field public c:Ltkl;

.field public d:I

.field public e:I

.field public f:J

.field public g:I

.field public h:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ltnt;-><init>()V

    goto/32 :goto_a

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const-class v1, Ltnt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Ltnt;->a:Ltnt;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    const v0, 0xd

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    new-instance v0, Ltnt;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltkh;->a:Ltkh;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-byte v0, p0, Ltnt;->j:B

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ltnt;->c:Ltkl;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ltjz;->a:Ltjz;

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

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltnt;->i:Ltlx;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Ltnt;->a:Ltnt;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "e"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p2, Ltnt;->a:Ltnt;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ltnt;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_a
    sget-object v8, Ltnp;->d:Ltkk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "c"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x4

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    const-string v4, "f"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ltnt;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_16
    const-class p1, Ltnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x17

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ltkb;

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

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    if-ne p1, v0, :cond_4

    nop

    goto/32 :goto_2a

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v5, "g"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    if-ne p1, v0, :cond_5

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    :goto_21
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    sget-object v6, Ltnp;->c:Ltkk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ltnt;->a:Ltnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    const-string p0, "\u0001\u0006\u0000\u0001\u0001\t\u0006\u0000\u0001\u0000\u0001$\u0003\u1004\u0000\u0004\u1004\u0001\u0005\u1002\u0002\u0006\u180c\u0003\t\u180c\u0006"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    sget-object v2, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->REFwM:Ljava/lang/String;

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

    :goto_26
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    :goto_28
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    :goto_2c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_30
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltnt;->i:Ltlx;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Ltnt;->a:Ltnt;

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltnt;->i:Ltlx;

    nop

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_39

    nop

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    :goto_34
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_35
    const/4 p1, 0x1

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-byte p1, p0, Ltnt;->j:B

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_38
    throw p0

    nop

    nop

    :goto_39
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2d

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3d
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    const-string v0, "b"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3f
    iget-byte p0, p0, Ltnt;->j:B

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

    :goto_40
    if-ne p1, v0, :cond_8

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_41
    if-ne p1, v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_9
    goto/32 :goto_31

    nop

    nop

    :goto_42
    const/4 v0, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_43
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-object p0

    nop

    :goto_45
    goto/32 :goto_13

    nop

    nop

    :goto_46
    const-string v7, "h"

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
.end method
