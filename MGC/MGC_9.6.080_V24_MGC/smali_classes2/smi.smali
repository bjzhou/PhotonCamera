.class public final Lsmi;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lsmi;

.field private static volatile i:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Ltkv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lsmi;->a:Lsmi;

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

    :goto_1
    const v1, 0xa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    const v0, 0x7

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

    nop

    :goto_4
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-class v1, Lsmi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    new-instance v0, Lsmi;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lsmi;-><init>()V

    goto/32 :goto_0

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
    iput-object v0, p0, Lsmi;->h:Ltkv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltma;->a:Ltma;

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
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v6, Lskv;->m:Ltkk;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->wjwqWoXrNv:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_34

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p1, p0, :cond_0

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v9, Lsmg;->c:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p2, Lsmi;->a:Lsmi;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lsmi;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Lsmi;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    const-string v8, "g"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Lsmg;->d:Ltkk;

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

    :goto_18
    const-string v1, "c"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x4

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

    :goto_1a
    return-object p0

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v3, "d"

    nop

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

    nop

    :goto_1d
    const-string p0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u1007\u0003\u0005\u180c\u0004\u0006\u001b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Lsmi;->a:Lsmi;

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

    :goto_1f
    return-object v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_39

    nop

    nop

    :goto_21
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lsmi;->i:Ltlx;

    nop

    nop

    if-nez p0, :cond_1

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lsmi;->a:Lsmi;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lsmi;->i:Ltlx;

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_16

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v4, Lsoa;->a:Ltkk;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_23
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    const-string v5, "e"

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

    nop

    :goto_25
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    if-lez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_2a
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2b
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v7, "f"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2e
    sget-object p1, Lsmi;->a:Lsmi;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_30
    if-ne p1, p0, :cond_4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    :goto_32
    goto/32 :goto_f

    nop

    nop

    :goto_33
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    sget-object p0, Lsmi;->i:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_38
    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne p1, p0, :cond_7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-class v11, Lsmh;

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

    :goto_3d
    if-ne p1, p0, :cond_8

    nop

    goto/32 :goto_3f

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    :goto_3f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v10, "h"

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

    :goto_41
    const/4 p0, 0x4

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

    :goto_42
    const-class p1, Lsmi;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop
.end method
