.class public final Lslo;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lslo;

.field private static volatile j:Ltlx;


# instance fields
.field public b:I

.field public c:J

.field public d:I

.field public e:F

.field public f:I

.field public g:Ljava/lang/String;

.field public h:F

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    sput-object v0, Lslo;->a:Lslo;

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

    :goto_2
    invoke-direct {v0}, Lslo;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const-class v1, Lslo;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lslo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    const v1, 0x2

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
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lslo;->g:Ljava/lang/String;

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

    :goto_2
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const-string v0, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v5, "f"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    const-class p1, Lslo;

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

    nop

    :goto_10
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    const-string v7, "g"

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    new-instance p0, Lslo;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    :goto_17
    goto/32 :goto_3b

    nop

    nop

    :goto_18
    if-ne p1, p0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_19
    const-string v2, "d"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ltkb;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    :goto_1e
    const-string v1, "c"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v9, "i"

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    sget-object p0, Lslo;->a:Lslo;

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

    :goto_21
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lslo;->j:Ltlx;

    nop

    if-nez p0, :cond_4

    nop

    nop

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Lslo;->a:Lslo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lslo;->j:Ltlx;

    nop

    nop

    nop

    :cond_4
    monitor-exit p1

    nop

    goto/16 :goto_17

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

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_22
    sget-object p2, Lslo;->a:Lslo;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v6, Lsjm;->f:Ltkk;

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

    :goto_24
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne p1, p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    const-string v4, "e"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0}, Lslo;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    :goto_29
    goto/32 :goto_33

    nop

    :goto_2a
    sget-object v3, Lskv;->n:Ltkk;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p1, Lslo;->a:Lslo;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2c
    return-object p0

    nop

    :goto_2d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2f
    const-string p0, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u180c\u0001\u0003\u1001\u0002\u0004\u180c\u0003\u0005\u1008\u0004\u0006\u1001\u0005\u0007\u1007\u0006"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    return-object p0

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p0, 0x6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_37
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_38
    sget-object v8, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->twnsJ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3b
    return-object p0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_5

    nop

    nop

    :goto_40
    sget-object p0, Lslo;->j:Ltlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop
.end method
