.class public final Lpxb;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lpxb;

.field private static volatile i:Ltlx;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public f:J

.field public g:Ljava/lang/String;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

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

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    sput-object v0, Lpxb;->a:Lpxb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
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

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const-class v1, Lpxb;

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

    :goto_8
    new-instance v0, Lpxb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lpxb;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object v0, p0, Lpxb;->c:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->ate:Ljava/lang/String;

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

    :goto_3
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object v0, p0, Lpxb;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lpxb;->a:Lpxb;

    nop

    nop

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

    :goto_1
    sget-object p2, Lpxb;->a:Lpxb;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    :try_start_0
    sget-object p0, Lpxb;->i:Ltlx;

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    sget-object p2, Lpxb;->a:Lpxb;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lpxb;->i:Ltlx;

    nop

    nop

    nop

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const-string v7, "h"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    const/4 p0, 0x2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    const-class p1, Lpxb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lpxb;->i:Ltlx;

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lpxb;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    sget-object v3, Liza;->o:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_17
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_18
    if-ne p1, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

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

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1e
    const-string v2, "d"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_5

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    :goto_26
    const/4 p0, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Lpxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne p1, p0, :cond_6

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

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    const-string v5, "f"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2b
    const-string p0, "\u0001\u0006\u0000\u0001\u0004\u000b\u0006\u0000\u0000\u0000\u0004\u1008\u0000\u0005\u180c\u0001\u0008\u1007\u0002\t\u1002\u0003\n\u1008\u0004\u000b\u1004\u0005"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Ltmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p0, Lpxb;->a:Lpxb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_30
    const-string v6, "g"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v1, "c"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ne p1, p0, :cond_7

    nop

    goto/32 :goto_3d

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    :goto_35
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_32

    nop

    :goto_37
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_38
    const-string v4, "e"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-ne p1, p0, :cond_8

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-object p0

    nop

    :goto_3d
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
