.class public final Ltij;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltij;

.field private static volatile j:Ltlx;


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Ltjj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ltij;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    new-instance v0, Ltij;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    const-class v1, Ltij;

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

    :goto_c
    sput-object v0, Ltij;->a:Ltij;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

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

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ltij;->i:Ltjj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltjj;->b:Ltjj;

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v6, "h"

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "b"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    const-string v5, "g"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-ne p1, p0, :cond_1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p1, p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ltij;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    :goto_12
    sget-object p1, Ltij;->a:Ltij;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_18
    const-string v4, "f"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    :goto_1c
    goto/32 :goto_39

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_2

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    const-string v1, "c"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_22
    const-class p1, Ltij;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    sget-object p0, Ltij;->a:Ltij;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    sget-object p2, Ltij;->a:Ltij;

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

    :goto_26
    new-instance v0, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_27
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p0, 0x1

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

    :goto_2b
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Ltkb;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Ltij;->j:Ltlx;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    if-ne p1, p0, :cond_6

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string p0, "\u0000\u0008\u0000\u0000\u0002\t\u0008\u0000\u0000\u0000\u0002\u0007\u0003\u0004\u0004\u0004\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\n"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_30
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_31
    const-string v2, "d"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p1, p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_f

    nop

    :goto_36
    goto/32 :goto_a

    nop

    nop

    :goto_37
    return-object v0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2a

    nop

    nop

    :goto_39
    new-instance p0, Ltij;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3a
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Ltij;->j:Ltlx;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_8

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Ltij;->a:Ltij;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltij;->j:Ltlx;

    nop

    :cond_8
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_2

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

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v7, "i"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v3, "e"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_36

    nop

    nop

    nop
.end method
