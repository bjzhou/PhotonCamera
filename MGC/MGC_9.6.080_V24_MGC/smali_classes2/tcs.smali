.class public final Ltcs;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltcs;

.field private static volatile k:Ltlx;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const-class v1, Ltcs;

    nop

    goto/32 :goto_e

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

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Ltcs;->a:Ltcs;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    new-instance v0, Ltcs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ltcs;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

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

    :goto_e
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_2

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    if-ne p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Ltcs;->a:Ltcs;

    nop

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

    :goto_3
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    const-string v5, "f"

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Ltcs;->k:Ltlx;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_2

    nop

    new-instance p0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object p2, Ltcs;->a:Ltcs;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Ltcs;->k:Ltlx;

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit p1

    nop

    goto/16 :goto_28

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_27

    nop

    nop

    :goto_b
    const-string v3, "d"

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    :goto_f
    sget-object p2, Ltcs;->a:Ltcs;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ltcs;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Ltcs;->k:Ltlx;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ltmb;

    nop

    nop

    goto/32 :goto_2d

    nop

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
    goto/32 :goto_1a

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    const-string v8, "i"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Ltcs;->a:Ltcs;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "b"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v9, "j"

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-class p1, Ltcs;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p0, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    if-ne p1, p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    const-string v0, "l"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    const v0, 0x13

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    :goto_32
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_35
    const-string v6, "g"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    new-instance p0, Ltcs;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v7, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->mLDHWcNHjFzvHVG:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    if-ne p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    :goto_39
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    :goto_3a
    const-string v2, "c"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v4, "e"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string p0, "\u0004\t\u0000\u0001\u0001\u000c\t\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u1001\u0005\u0007\u1001\u0006\u0008\u1001\u0007\u000c\u1001\u000b"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 p0, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    if-ne p1, p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop
.end method
